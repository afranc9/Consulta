<%@ Page Title="" Language="C#" MasterPageFile="~/App/App.master" AutoEventWireup="true" CodeFile="UserPassword.aspx.cs" Inherits="App_UserPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .customBox
        {margin-top: 10%;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
     <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Cambio de Contraseña
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-user"></i> Cambio de Contraseña</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="customBox col-md-6 col-lg-6 col-sm-6 col-md-offset-3 col-lg-offset-3 col-sm-offset-3">
                <div class="box box-info">
                    <div class="box-header with-border">
                      <h3 class="box-title">Cambio de Contraseña</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <div class="form-horizontal">
                      <div class="box-body validateForm">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Anterior</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="PasswordOld" placeholder="Contraseña Anterior" />
                            </div>
                        </div>
                        <div class="form-group">
                          <label for="inputEmail3" class="col-sm-2 control-label">Nueva</label>
                          <div class="col-sm-10">
                                <input type="password" class="form-control" id="Password1" placeholder="Contraseña Nueva" />
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="inputPassword3" class="col-sm-2 control-label">Confirmar</label>
                          <div class="col-sm-10">
                            <input type="password" class="form-control" id="Password2" placeholder="Confirmar Contraseña" />
                          </div>
                        </div>
                      </div>
                      <!-- /.box-body -->
                      <div class="box-footer">
                        <button id="btnSave" class="btn btn-info pull-right">GUARDAR</button>
                      </div>
                      <!-- /.box-footer -->
                    </div>
                  </div>
            </div>
        </div>
    </section>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
    <script>
        $(function () {
            var clickButton = false;
            var initButtons = function () {
                $("#btnSave").click(function () {
                    changePassword();
                });
            }
            var clearData = function () {
                $("#PasswordOld,#Password1,#Password2").val("");
            }
            var changePassword = function () {
                alertify.confirm('Esta seguro que desea cambiar la Contraseña?').set('onok', function (e) {
                    if (e) {

                        clickButton = true;

                        if (!formValidator('.validateForm', false)) {
                            clickButton = false;
                            return;
                        }
                        
                        var xOldPassword = $("#PasswordOld").val(), xPassword = $("#Password1").val(), xPassword2 = $("#Password2").val();

                        if (xPassword != xPassword2) {
                            alertify.error("La nueva Contraseña no coincide con su confirmacion!");
                            return;
                        }


                        $.ajax({
                            type: "POST",
                            url: "UserPassword.aspx/CHANGE_PASSWORD",
                            contentType: "application/json; charset=utf-8",
                            data: "{ xType:6, xOldPassword: '" + xOldPassword + "', xPassword: '" + xPassword + "'}",
                            dataType: "json",
                            async: false,
                            success: function (result) {
                                if (result.d == "OK") {
                                    clearData();
                                    alertify.success("Se ha cambiado exitosamente la Contraseña");
                                }
                                else alertify.error(result.d);

                            },
                            error: function (xhr, ajaxOptions, thrownError) {
                                console.log(thrownError);
                            }
                        });

                        setTimeout(function () { clickButton = false; }, 500);

                    }
                });
            }


            initButtons();
        });
    </script>
    
</asp:Content>

