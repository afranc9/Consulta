<%@ Page Title="" Language="C#" MasterPageFile="~/App/App.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="App_Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Nuevo Usuario</h4>
                </div>
                <div class="modal-body validateForm">  

                    <div class="row">

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label">Perfil</label>
                                <select id="selectRole" class="selectpicker" data-live-search="true" data-size="auto"
                                    aria-required="true" aria-controls="empty" aria-label="Favor seleccione perfil de usuario"></select>
                                <span class="glyphicon form-control-feedback" id="glyselectRole"></span>
                            </div>
                        </div>   
                        
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label">Usuario</label>
                                <input id="inputName" type="text" class="form-control" 
                                    aria-required="true" aria-controls="empty" aria-label="Favor ingrese el nombre del Usuario" />
                                <span class="glyphicon form-control-feedback" id="glyinputName"></span>
                            </div>
                        </div> 

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label">Email</label>
                                 <input id="inputEmail" type="email" class="form-control" 
                                    aria-required="true" aria-controls="empty" aria-label="Favor ingrese su correo" />
                                <span class="glyphicon form-control-feedback" id="glyinputEmail"></span>
                            </div>
                        </div>

                    </div>

                    <div id="divPass" class="row">
                        
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label">Contraseña</label>
                                <input id="inputPassword" type="password" class="form-control" 
                                    aria-required="true" aria-controls="empty" aria-label="Favor ingrese la Contraseña" />
                                <span class="glyphicon form-control-feedback" id="glyinputPassword"></span>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label">Confirmar Contraseña</label>
                                <input id="inputPassword2" type="password" class="form-control" 
                                    aria-required="true" aria-controls="empty" aria-label="Favor confirme la Contraseña" />
                                <span class="glyphicon form-control-feedback" id="glyinputPassword2"></span>
                            </div>
                        </div>
                    </div>

                    <div id="divClient">
                                                            
                    <div class="row">

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label">Nombre</label>
                                 <input id="inputClientName" type="email" class="form-control" 
                                    aria-required="false" aria-controls="empty" aria-label="Favor ingrese el nombre del cliente" />
                                <span class="glyphicon form-control-feedback" id="glyinputClientName"></span>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label">Apellido</label>
                                 <input id="inputLastName" type="email" class="form-control" 
                                    aria-required="false" aria-controls="empty" aria-label="Favor ingrese el apellido del cliente" />
                                <span class="glyphicon form-control-feedback" id="glyinputLastName"></span>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label">Numero de contacto</label>
                                 <input id="inputCellPhone" type="email" class="form-control" 
                                    aria-required="false" aria-controls="empty" aria-label="Favor ingrese el numero de contacto" />
                                <span class="glyphicon form-control-feedback" id="glyinputCellPhone"></span>
                            </div>
                        </div>

                    </div>

                    <div class="row">

                        <div class="col-lg-4 col-md-4 col-sm-4">
                            <div class="form-group">
                            <label class="control-label">Tipo Documento</label>
                            <select id="selectDocumentType" class="selectpicker" data-live-search="true" data-size="auto" title=""
                            name="selectDocumentType"
                            aria-required="false" aria-controls="empty" aria-label="Favor ingrese el Tipo de documento"></select>
                            <span class="glyphicon form-control-feedback" id="glyselectDocumentType"></span>
                        </div>
                        </div>                                        
                        <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="form-group">
                                <label class="control-label">Numero de Documento</label>
                                <input id="inputDni" type="text" class="form-control" name="inputDni"
                                aria-required="false" aria-controls="empty" aria-label="Favor ingrese la idenficacion" />
                                 <span class="glyphicon form-control-feedback" id="glyinputDni"></span>
                            </div>
                        </div>

                    </div>

                    </div>
                                       
                </div>
                <div class="modal-footer">
                    <i id="btnSave" class="fa fa-floppy-o fa-3x text-primary"></i>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="H1">Cambiar Contraseña</h4>
                </div>
                <div class="modal-body validateForm2">  
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label">Contraseña Anterior</label>
                                <input id="PasswordOld" type="password" class="form-control" 
                                    aria-required="true" aria-controls="empty" aria-label="Favor ingrese la Contraseña actual" />
                                <span class="glyphicon form-control-feedback" id="glyPasswordOld"></span>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label">Contraseña Nueva</label>
                                <input id="Password1" type="password" class="form-control" 
                                    aria-required="true" aria-controls="empty" aria-label="Favor ingrese la Contraseña" />
                                <span class="glyphicon form-control-feedback" id="glyPassword1"></span>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label">Confirmar Contraseña</label>
                                <input id="Password2" type="password" class="form-control" 
                                    aria-required="true" aria-controls="empty" aria-label="Favor confirme la Contraseña" />
                                <span class="glyphicon form-control-feedback" id="glyPassword2"></span>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <i id="btnSavePassword" class="fa fa-floppy-o fa-3x text-primary"></i>
                </div>
            </div>
        </div>
    </div>

    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Listado de Usuarios
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>Configuracion</li>
        <li class="active">
            <a href="Users.aspx">Usuarios</a></li>
      </ol>
    </section>

    <!-- Main content -->

    <section class="content">
        <div class="row">
            <div class="col-md-12 col-lg-12 col-sm-12">

                 <div class="box box-primary">
                    <div class="box-header with-border">
                        <div class="col-md-6 col-lg-6 col-sm-6">
                            <i class="fa fa-list"></i>
                            <h3 class="box-title">Usuarios</h3>
                        </div>
                        <div class="col-md-6 col-lg-6 col-sm-6 text-right">
                            <i id="addBtn" class="fa fa-plus-circle fa-2x text-primary" title="Nuevo Usuario"></i>
                            <i id="UsereditBtn" class="fa fa-pencil-square fa-2x text-success" title="Editar Usuario"></i>
                            <i id="editBtn" class="fa fa-exchange fa-2x text-success" title="Cambiar Contraseña"></i>
                            <%--<i id="cancelBtn" class="fa fa-times-circle fa-2x text-danger" title="Eliminar Usuario"></i>--%>
                            <i id="resetBtn" class="fa fa-eraser fa-2x text-primary" title="Generar nueva Contraseña "></i>
                            <i id="lockBtn" class="fa fa fa-lock fa-2x text-success" title="Bloquear Usuario"></i>
                            <i id="unlockBtn" class="fa fa-unlock fa-2x text-danger" title="Desbloquear Usuario"></i>
            
                        </div>
                    </div>
                    <!-- /.box-header -->

                    <div class="box-body">
                        <div  id="divContainer" class="col-md-12 col-sm-12 col-lg-12">
                            <table id="dataTable" class="cell-border hover">
                                <thead>
                                    <tr>
                                        <th>Usuario</th>
                                        <th>Perfil</th>
                                        <th>Nombre</th>
                                        <th>Apellido</th>
                                        <th>Numero de contacto</th>
                                        <th>Tipo Documento</th>
                                        <th>Documento</th>
                                        <th>Correo</th>
                                        <th>Bloqueado</th>
                                        <th>Fecha Creacion</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                                <tfoot>
                                    <tr>
                                        <th>Usuario</th>
                                        <th>Perfil</th>
                                        <th>Nombre</th>
                                        <th>Apellido</th>
                                        <th>Numero de contacto</th>
                                        <th>Tipo Documento</th>
                                        <th>Documento</th>
                                        <th>Correo</th>
                                        <th>Bloqueado</th>
                                        <th>Fecha Creacion</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
              
                    </div>
                    <!-- /.box-body -->

                  </div>

            </div>
            
        </div>
    </section>

    <input type="hidden" id="HdIdSelected" value="" />
    <input type="hidden" id="HdUserSelected" value="" />
    <input type="hidden" id="HdUserIsLocketOut" value="" />
    <input type="hidden" id="hdOldUserName" value="" />

    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">

    <script>

        var idSelected = "-1", _type = 1;

        $(document).ready(function () {
                       

            initButtons();
            loadGrid();
        });
        var initButtons = function () {

            getDocumentType();
            getProfiles();
            //getClients();

            $("#addBtn").click(function () {
                _type = 1;
                clearValues();
                getProfiles();
                $("#divPass").show();
                $("#myModalLabel").html("Nuevo Usuario");
                $("#FirstRow").css("display", "block");
                $("#myModal").modal('toggle');

            });
            $("#resetBtn").click(function () {
                
                if (idSelected != "-1") {
                    resetPassword($("#HdUserSelected").val());
                }

            });
            $("#UsereditBtn").click(function () {
                if (idSelected != "-1") {
                    
                    getUser($("#HdUserSelected").val());

                    $("#myModalLabel").html("Editar Usuario");
                    $("#myModal").modal('toggle');
                }
            });
            $("#editBtn").click(function () {
                if (idSelected != "-1") {
                    $("#myModal2").modal('toggle');
                }

            });
            $("#cancelBtn").click(function () {

                if (idSelected != "-1") {
                    _type = 3;

                    alertify.confirm('Esta seguro que desea eliminar el Usuario?').set('onok', function (e) {
                        var user = $("#HdUserSelected").val();

                        if (e) {
                            $.ajax({
                                type: "POST",
                                url: "Users.aspx/CRUD_USERS",
                                contentType: "application/json; charset=utf-8",
                                data: "{ xType: '" + _type + "', xUser: '" + user + "', xPassword: '', xEmail: '',  xProfile: '', xID: '', xCloseDay: '' }",
                                dataType: "json",
                                async: false,
                                success: function (result) {
                                    if (result.d == "OK") {
                                        getGridData();
                                        alertify.success("Se ha eliminado exitosamente el Usuario");
                                    }
                                    else alertify.error(result.d);

                                },
                                error: function (xhr, ajaxOptions, thrownError) {
                                    console.log(thrownError);
                                }
                            });
                        }
                    });
                }
            });
            $("#btnSave").click(function () {
                saveNew();
            });
            $("#btnSavePassword").click(function () {
                changePassword($("#HdUserSelected").val());
            });
            $("#lockBtn").click(function () {
                if (idSelected != "-1") {
                    var IsLocked = $("#HdUserIsLocketOut").val();

                    if (IsLocked == "True") {
                        alertify.error("No se puede bloquear un usuario que se encuentre con este estado.");
                        return;
                    }
                    alertify.confirm('Esta seguro que desea bloquear el Usuario?').set('onok', function (e) {
                        lockUnlockUser(4, $("#HdIdSelected").val());
                    });
                }
            });
            $("#unlockBtn").click(function () {
                if (idSelected != "-1") {
                    var IsLocked = $("#HdUserIsLocketOut").val();

                    if (IsLocked == "False") {
                        alertify.error("No se puede desbloquear un usuario que se encuentre con este estado.");
                        return;
                    }

                    alertify.confirm('Esta seguro que desea desbloquear el Usuario?').set('onok', function (e) {
                        if (e) {
                            lockUnlockUser(5, $("#HdIdSelected").val());
                        }
                    });
                }
            });
            $("#selectRole").change(function () {

                if ($("#selectRole").val() == 2) {
                    $("#divClient").show();
                }
                else {
                    $("#divClient").hide();
                    $("#inputDni").val("");
                    $("#inputCellPhone").val("");
                    $("#inputLastName").val("");
                    $("#inputClientName").val("");
                }
            });
        }
        var loadGrid = function () {

            $.ajax({
                type: 'POST',
                url: 'Users.aspx/GetGridData',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (result) {
                    $("#dataTable tbody").html("");

                    var checked = '';
                    
                    $.each($.parseJSON(result["d"]), function (k, v) {
                        
                        if (v.IsLockedOut == "True")
                            checked = 'checked="checked"';
                        else
                            checked = '';

                        var html = '<tr  onclick="selectRow(this)" data-isLocked="' + v.IsLockedOut + '" data-User="' + v.UserName + '" data-id="' + v.UserId + '">' +
                                        '<td>' + v.UserName + '</td>' +
                                        '<td>' + v.PROFILE + '</td>' +
                                        '<td>' + v.NAME + '</td>' +
                                        '<td>' + v.LAST_NAME + '</td>' +
                                        '<td>' + v.CELL_PHONE + '</td>' +
                                        '<td>' + v.DOCUMENT_TYPE + '</td>' +
                                        '<td>' + v.DNI + '</td>' +
                                        '<td>' + v.Email + '</td>' +
                                        '<td><input type="checkbox" ' + checked + ' disabled></td>' +
                                        '<td>' + v.CreateDate + '</td>' +
                                   '</tr>';
                        $('#dataTable tbody').append(html);
                        
                    }); // fin del each
                    $('#dataTable').DataTable();
                    //var table = $('#dataTable').DataTable();

                    //$('#dataTable tbody').on('click', 'tr', function () {
                    //    if ($(this).hasClass('selected')) {
                    //        $(this).removeClass('selected');
                    //    }
                    //    else {
                    //        table.$('tr.selected').removeClass('selected');
                    //        $(this).addClass('selected');
                    //    }
                    //});

                }, //  fin del success
                error: function (xhr, ajaxOptions, thrownError) { alertify.error(thrownError); }
            });

        }
        var selectRow = function (el) {

            var id = $(el).data('id'), user = $(el).data('user'), isLocked = $(el).data('islocked');

            idSelected = id;
            
            $("#HdIdSelected").val(id);
            $("#HdUserSelected").val(user);
            $("#HdUserIsLocketOut").val(isLocked);

            removeSelect(idSelected);

        }
        var clearValues = function ()
        {
            _type = 1;
            $("#inputName").val("");
            $("#inputEmail").val("");
            $("#selectRole").val(2); // cliente
            $("#inputCellPhone").val("");
            $("#inputClientName").val("");
            $("#inputLastName").val("");
            $("#selectDocumentType").val(1);
            $(".selectpicker").selectpicker('refresh');
            $("#inputDni").val("");

            if ($("#selectRole").val() == 2) {
                $("#divClient").show();
            }
            else {
                $("#divClient").hide();
                $("#inputDni").val("");
                $("#inputCellPhone").val("");
                $("#inputLastName").val("");
                $("#inputClientName").val("");
            }
        }
        var getProfiles = function () {

            $.ajax({
                type: "POST",
                url: "Users.aspx/GetProfiles",
                contentType: "application/json; charset=utf-8",
                async: false,
                dataType: "json",
                success: function (result) {
                    var source = { localdata: result.d, datatype: "json" };

                    $("#selectRole").html("");

                    var appNone = "<option value='0'>SIN PERFIL</option>";
                    $("#selectRole").append(appNone);

                    $.each($.parseJSON(result.d), function (k, v) {
                        var app = "<option value='" + v.ID + "'>" + v.NAME + "</option>";
                        $("#selectRole").append(app);
                        $('#selectRole').selectpicker('refresh');
                    });

                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alertify.error("Error loading Sheet:" + thrownError);
                }
            });
        }
        var getDocumentType = function () {

            $.ajax({
                type: "POST",
                url: "Users.aspx/GetDocumentType",
                contentType: "application/json; charset=utf-8",
                async: false,
                dataType: "json",
                success: function (result) {
                    var source = { localdata: result.d, datatype: "json" };

                    $("#selectDocumentType").html("");

                    $.each($.parseJSON(result.d), function (k, v) {
                        var app = "<option value='" + v.DOCUMENT_TYPE_ID + "'>" + v.DESCRIPCION + "</option>";
                        $("#selectDocumentType").append(app);
                        $('#selectDocumentType').selectpicker('refresh');
                    });

                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alertify.error("Error loading Sheet:" + thrownError);
                }
            });
        }
        var saveNew = function () {
            clickButton = true;
            $(".selectpicker").selectpicker('refresh');

            if (!formValidator('.validateForm', false)) {
                clickButton = false;
                return;
            }

            var xType = _type, xUser = $("#inputName").val(), 
                xEmail = $("#inputEmail").val(), xProfile = $("#selectRole").val(), xCellPhone = $("#inputCellPhone").val(),
                xName = $("#inputClientName").val(), xLastName = $("#inputLastName").val() ,
                xDocumentType = $("#selectDocumentType").val(), xDni = $("#inputDni").val();

            var xPassword = '', xPassword2 = '';

            if (xType == 1) {
                xPassword = $("#inputPassword").val();
                xPassword2 = $("#inputPassword2").val();
            }

            xUser = xUser.replace(/\s/g, "");

            
            if (xPassword != xPassword2) {
                alertify.error("Las Contraseña no coinciden!");
                return;
            }

            if (xProfile == "2")
            {
                if (xName == "")
                {
                    alertify.warning("Debe ingresar el nombre del cliente!!!");
                    return;
                }
                if (xLastName == "") {
                    alertify.warning("Debe ingresar el apellido del cliente!!!");
                    return;
                }
                if (xCellPhone == "") {
                    alertify.warning("Debe ingresar el numero del cliente!!!");
                    return;
                }
                if (xDni == "") {
                    alertify.warning("Debe ingresar el documento del cliente!!!");
                    return;
                }

                if (existUserDocument()) {
                    alertify.warning("Ya existe un usuario con este tipo y No. de documento !!!");
                    return;
                }
            }

            if (existUserName())
            {
                alertify.warning("Ya existe un usuario con este nombre!!!");
                return;
            }
            
            $.ajax({
                type: "POST",
                url: "Users.aspx/CRUD_USERS",
                contentType: "application/json; charset=utf-8",
                data: "{ xType: '" + xType + "', xUser: '" + xUser + "', xPassword: '" + xPassword + "', xEmail: '" + xEmail +
                    "', xProfile: '" + xProfile + "', xCellPhone : '" + xCellPhone +
                    "', xName: '" + xName + "', xLastName : '" + xLastName +
                    "', xDocumentType: '" + xDocumentType + "', xDni : '" + xDni + "' }",
                dataType: "json",
                async: false,
                success: function (result) {
                    if (result.d == "OK") {
                        loadGrid();
                        $("#myModal").modal('toggle');
                        alertify.success("Se ha guardado exitosamente el Usuario");
                    }
                    else alertify.error(result.d);

                },
                error: function (xhr, ajaxOptions, thrownError) {
                    console.log(thrownError);
                }
            });

        }
        var changePassword = function (xUser) {
            alertify.confirm('Esta seguro que desea cambiar la Contraseña?').set('onok', function (e) {
                if (e) {

                    clickButton = true;

                    if (!formValidator('.validateForm2', false)) {
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
                        url: "Users.aspx/CHANGE_PASSWORD",
                        contentType: "application/json; charset=utf-8",
                        data: "{ xType:6, xOldPassword: '" + xOldPassword + "', xPassword: '" + xPassword +
                                "', xUser: '" + xUser + "'}",
                        dataType: "json",
                        async: false,
                        success: function (result) {
                            if (result.d == "OK") {
                                $("#myModal2").modal('toggle');
                                alertify.success("Se ha cambiado exitosamente la Contraseña");
                            }
                            else alertify.error(result.d);

                        },
                        error: function (xhr, ajaxOptions, thrownError) {
                            console.log(thrownError);
                        }
                    });

                    setTimeout(function () { clickButton = false; makeLoading(false); }, 500);

                }
            });
        }
        var resetPassword = function (xUser) {

            console.log(xUser);

            alertify.confirm('Esta seguro que desea generar una nueva Contraseña?').set('onok', function (e) {
                $.ajax({
                    type: "POST",
                    url: "Users.aspx/CHANGE_PASSWORD",
                    contentType: "application/json; charset=utf-8",
                    data: "{ xType:7, xOldPassword: '" + xUser + "', xPassword: '', xUser: '' }",
                    dataType: "json",
                    async: false,
                    success: function (result) {
                        if (result.d.split(':')[0] == "OK") {
                            alertify.alert("La nueva Contraseña para el usuario es: " + result.d.split(':')[1]);
                        }
                        else alertify.error(result.d);

                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        console.log(thrownError);
                    }
                });
            });

        }
        var lockUnlockUser = function (xType, xUserId) {
            $.ajax({
                type: "POST",
                url: "Users.aspx/CRUD_USERS",
                contentType: "application/json; charset=utf-8",
                data: "{ xType: '" + xType + "', xUser: '" + xUserId + "', xPassword: '', xEmail: '', xProfile: '', xCellPhone : '', xName: '', xLastName : '', xDocumentType: '0', xDni : ''}",
                dataType: "json",
                async: false,
                success: function (result) {
                    if (result.d == "OK") {
                        var name = xType == 4 ? "bloqueado" : "desbloqueado";
                        alertify.success("Se ha " + name + " exitosamente el usuario");
                        loadGrid();
                    }
                    else alertify.error(result.d);

                },
                error: function (xhr, ajaxOptions, thrownError) {
                    console.log(thrownError);
                }
            });
        }
        var removeSelect = function (_clickedId) {

            var clickedId = _clickedId;

            $("#dataTable tbody tr").each(function (index) {
                
                var id = $(this).data('id');

                if (clickedId != id) {
                    $(this).removeClass('selected');
                }
                else {                    
                    $(this).addClass('selected');
                }

            })
        }
        var getUser = function (userName) {

            $.ajax({
                type: 'POST',
                url: 'Users.aspx/GetUser',
                contentType: "application/json; charset=utf-8",
                data: "{ userName:'" + userName + "'}",
                dataType: "json",
                success: function (result) {
                    

                    $.each($.parseJSON(result["d"]), function (k, v) {

                        console.log(v.PROFILE_ID);

                        _type = 8;
                        $("#inputName").val(v.UserName);
                        $("#hdOldUserName").val(v.UserName);
                        $("#inputEmail").val(v.Email);
                        $("#selectRole").val(v.PROFILE_ID);
                        $("#inputCellPhone").val(v.CELL_PHONE);
                        $("#inputClientName").val(v.NAME);
                        $("#inputLastName").val(v.LAST_NAME);
                        $("#selectDocumentType").val(v.DOCUMENT_TYPE_ID);
                        $(".selectpicker").selectpicker('refresh');
                        $("#inputDni").val(v.DNI);

                        if ($("#selectRole").val() == 2) {
                            $("#divClient").show();
                        }
                        else {
                            $("#divClient").hide();
                            $("#inputDni").val("");
                            $("#inputCellPhone").val("");
                            $("#inputLastName").val("");
                            $("#inputClientName").val("");
                        }

                        $("#divPass").hide();
                        

                    }); // fin del each
                    
                }, //  fin del success
                error: function (xhr, ajaxOptions, thrownError) { alertify.error(thrownError); }
            });

        }
        var existUserName = function () {

            var username = $("#inputName").val();
            var oldUserName = $("#hdOldUserName").val();
            var exists = false;

            $.ajax({
                type: "POST",
                url: "Users.aspx/fGetExistUserName",
                contentType: "application/json; charset=utf-8",
                data: "{oldUserName: '" + oldUserName + "', newUserName: '" + username + "'}",
                async: false,
                dataType: "json",
                success: function (result) {
                    var source = { localdata: result.d, datatype: "json" };
                    if (result.d == "1") {
                        exists = true;
                    }

                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alertify.error("No se Pudo Validar el Nombre de Usuario:" + thrownError);
                    exists = true;
                }
            });

            return exists;
        } //FIN DE LA FUNCION
        var existUserDocument = function () {

            var pDocumentTypeId = $("#selectDocumentType").val();
            var pDni = $("#inputDni").val();
            var pUserName = $("#inputName").val();
            var exists = false;

            $.ajax({
                type: "POST",
                url: "Users.aspx/fGetExistUserNameDocument",
                contentType: "application/json; charset=utf-8",
                data: "{pDocumentTypeId:'" + pDocumentTypeId + "', pDni:'" + pDni + "', pUserName:'" + pUserName + "'}",
                async: false,
                dataType: "json",
                success: function (result) {
                    var source = { localdata: result.d, datatype: "json" };
                    if (result.d == "1") {
                        exists = true;
                    }

                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alertify.error("Error loading Roc Number:" + thrownError);
                    exists = true;
                }
            });

            return exists;
        }
        
    </script>

</asp:Content>

