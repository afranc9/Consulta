<%@ Page Title="" Language="C#" MasterPageFile="~/App/App.master" AutoEventWireup="true" CodeFile="Profiles.aspx.cs" Inherits="App_Profiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Nuevo Perfil</h4>
                </div>
                <div class="modal-body">  
                    <div class="row">
                        <div class="col-md-12">
                            <label class="control-label">Descripcion</label>
                                <input id="txtProfile" type="text" class="form-control"
                                aria-required="true" aria-controls="empty" aria-label="Favor ingrese la descripcion" />
                            <span class="glyphicon form-control-feedback" id="glydtpDate"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table id="tbPages">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Descripcion</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody></tbody>                            
                        </table>
                        </div>
                    </div>                    
                </div>
                <div class="modal-footer">
                    <i id="btnSave" class="fa fa-floppy-o fa-3x text-primary"></i>
                </div>
            </div>
        </div>
    </div>

     <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Listado de Perfiles
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>Configuraciones</li>
        <li class="active">
            <a href="Profiles.aspx">Perfiles</a></li>
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
                            <h3 class="box-title">Paciente</h3>
                        </div>
                        <div class="col-md-6 col-lg-6 col-sm-6 text-right">
                            <i id="addBtn" class="fa fa-plus-circle fa-2x text-primary" title="Nuevo Perfil"></i>
                        </div>
                    </div>
                    <!-- /.box-header -->

                    <div class="box-body">
                        <div  id="divContainerProfiles" class="col-md-12 col-sm-12 col-lg-12">
                            <table id="dataTable" class="cell-border hover">
                                <thead>
                                    <tr>
                                        <th>Perfil</th>  
                                        <th>Estado</th>                                      
                                        <th></th>                               
                                        <th></th>                               
                                        <th></th>
                                    </tr>
                                </thead>
                        
                                <tbody></tbody>
                        
                                <tfoot>
                                    <tr>
                                        <th>Perfil</th>
                                        <th>Estado</th>                                       
                                        <th></th>                               
                                        <th></th>                               
                                        <th></th>
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

    <input id="hdProfileId" type="hidden" value="0" />
    <input id="hdtype" type="hidden" value="0" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">

    <script>

        $(document).ready(function () {            
            getGridData();
            initButtons();
        });

        var initButtons = function () {
            $("#addBtn").click(function () {
                _type = 1;
                $("#txtProfile").val();
                $("#hdtype").val(1);
                loadMenuData();
                $("#txtProfile").val("");
                $("#hdProfileId").val("0");
                $("#myModal").modal('toggle');
            });
            $("#btnSave").click(function () {

                var pType = $("#hdtype").val();
                var pProfileId = $("#hdProfileId").val();
                var pProfile = $("#txtProfile").val();

                var detail = [];

                if (pProfile == "") {  //Valida que el perfil no vaya sin descripcion

                    alertify.error("El Perfil NO Puede ir sin Descripción !!!");
                    return;
                }

                if (existProfile()) {
                    alertify.error("Ya existe un Perfil con ese Nombre!!!");
                    return;
                }


                $("#tbPages tbody tr").each(function (index) {

                    var pageId = 0, checkState = 0, value = "0";

                    $(this).children("td").each(function (i) {

                        switch (i) {
                            case 0: $(this).find('input').each(function () {
                                pageId = $(this).val();
                            });
                            case 2: $(this).find('input').each(function () {
                                checkState = $(this).prop('checked');
                            });
                                break;
                        }
                    });// fin de recorrer las columnas

                    if (checkState)
                        value = "1";

                    detail.push({ 'id': pageId, 'value': value });
                }); // fin de recorrer los tr

                $.ajax({
                    type: "POST",
                    url: "Profiles.aspx/Crud_Profiles",
                    contentType: "application/json; charset=utf-8",
                    data: "{pType: '" + pType + "', pProfileId: '" + pProfileId +
                            "', pProfile: '" + pProfile + "', xDetail: '" + JSON.stringify(detail) + "' }",
                    dataType: "json",
                    async: false,
                    success: function (result) {

                        if (result.d == "OK") {
                            $("#myModal").modal('toggle');
                            alertify.success("GUARDADO EXITOSAMENTE!!!");
                            getGridData();
                            detail = [];
                            formValidator('.validateForm', true);

                        }
                        else {

                            alertify.success(result.d);
                        }

                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alertify.error("Error Saving:" + thrownError);
                    }
                });

            });
        }
        var existProfile = function () {

            var pProfile = $("#txtProfile").val();
            var pProfileId = $("#hdProfileId").val();
            var exists = false;

            $.ajax({
                type: "POST",
                url: "Profiles.aspx/fGetExistProfile",
                contentType: "application/json; charset=utf-8",
                data: "{ pProfileId: '" + pProfileId + "' ,pProfile: '" + pProfile + "'}",
                async: false,
                dataType: "json",
                success: function (result) {
                    var source = { localdata: result.d, datatype: "json" };
                    if (result.d == "1") {
                        exists = true;
                    }

                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alertify.error("No se Pudo Validar el Perfil:" + thrownError);
                    exists = true;
                }
            });

            return exists;
        } //FIN DE LA FUNCION
        var getGridData = function () {

            $.ajax({
                type: "POST",
                url: "Profiles.aspx/GetComboProfiles",
                contentType: "application/json; charset=utf-8",
                data: "{}",
                dataType: "json",
                async: false,
                success: function (result) {

                    var checked = '';

                    $("#dataTable tbody").html("");

                    $.each($.parseJSON(result["d"]), function (k, v) {

                        if (v.STATUS == "True")
                            checked = 'checked="checked"';
                        else
                            checked = '';

                        var html = '<tr>' +
                                        '<td>' + v.NAME + '</td>' +
                                        '<td><input type="checkbox" ' + checked + ' disabled></td>' +
                                        '<td>' +
                                            '<i onclick="edit(this)" data-id="' + v.ID + '" title="Editar Perfil" class="btnPointer fa fa-pencil-square-o fa-2x text-yellow"></i>' +
                                        '</td>' +
                                        '<td>' +
                                            '<i onclick="changeStateProfile(this)" id="lockBtn" data-type="1" data-id="' + v.ID + '" class="fa fa-lock fa-2x text-success" title="Activar Perfil"></i>' +
                                        '</td>' +
                                        '<td>' +
                                            '<i onclick="changeStateProfile(this)" id="unlockBtn" data-type="2" data-id="' + v.ID + '" class="fa fa-unlock fa-2x text-danger" title="Desactivar Perfil"></i>' +
                                        '</td>' +
                                   '</tr>';
                        $('#dataTable tbody').append(html);

                    }); // fin del each
                    $('#dataTable').DataTable();

                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alertify.error("Error loading grid:" + thrownError);
                }
            });

        }
        var loadMenuData = function () {

            $.ajax({
                type: "POST",
                url: "Profiles.aspx/LoadPagesMenu",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (result) {

                    var t = $('#tbPages').DataTable();
                    t.clear().draw();

                    $.each($.parseJSON(result.d), function (k, v) {

                        if (v.HAVE_LEVEL != "True") {

                            t.row.add([
                                            '<td><input type="hidden" value="' + v.MENU_ID + '" /></td>',
                                            '<td>' + v.NAME + '</td>',
                                            '<td><input type="checkbox" /></td>'
                            ]).draw();
                        }
                        else {

                            t.row.add([
                                            '<td><input type="hidden" value="' + v.MENU_ID + '" /></td>',
                                            '<td><strong>' + v.NAME + ' </strong></td>',
                                            '<td></td>'
                            ]).draw();
                        }

                    });
                    t.destroy();

                    $('#tbPages').dataTable({
                        "filter": false,
                        "paginate": false,
                        "pageLenght": "50",
                        "language": {
                            "lengthMenu": "Mostrar _MENU_ registros por pagina",
                            "zeroRecords": "No hay patrocinadores creados",
                            "info": "Pagina _PAGE_ de _PAGES_",
                            "infoEmpty": "No hay datos disponibles",
                            "infoFiltered": "(Datos filtrados de un total de _MAX_ registros)",
                            "search": "Buscar",
                            "paginate": {
                                "previous": "Anterior",
                                "next": "Siguiente"
                            }
                        }
                    });
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alertify.error("Error loading menu:" + thrownError);
                    // window.location.href = "../Default.aspx";
                }
            });
        }
        var loadProfileMenu = function (profileId) {

            $.ajax({
                type: "POST",
                url: "Profiles.aspx/LoadProfileMenu",
                contentType: "application/json; charset=utf-8",
                data: "{pProfile: '" + profileId + "' }",
                dataType: "json",
                async: false,
                success: function (result) {

                    var t = $('#tbPages').DataTable();
                    t.clear().draw();

                    $.each($.parseJSON(result.d), function (k, v) {

                        $("#txtProfile").val(v.PROFILE);

                        if (v.HAVE_LEVEL != "True") {
                            
                            if (v.ACTIVE == "True")
                                var checked = 'checked="checked"';

                            t.row.add([
                                            '<td><input type="hidden" value="' + v.MENU_ID + '" /></td>',
                                            '<td>' + v.NAME + '</td>',
                                            '<td><input type="checkbox" ' + checked + '></td>'
                            ]).draw();
                        }
                        else {

                            t.row.add([
                                            '<td><input type="hidden" value="' + v.MENU_ID + '" /></td>',
                                            '<td><strong>' + v.NAME + ' </strong></td>',
                                            '<td></td>'
                            ]).draw();
                        }

                    });
                    t.destroy();

                    $('#tbPages').dataTable({
                        "filter": false,
                        "paginate": false,
                        "pageLenght": "50",
                        "language": {
                            "lengthMenu": "Mostrar _MENU_ registros por pagina",
                            "zeroRecords": "No hay patrocinadores creados",
                            "info": "Pagina _PAGE_ de _PAGES_",
                            "infoEmpty": "No hay datos disponibles",
                            "infoFiltered": "(Datos filtrados de un total de _MAX_ registros)",
                            "search": "Buscar",
                            "paginate": {
                                "previous": "Anterior",
                                "next": "Siguiente"
                            }
                        }
                    });
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alertify.error("Error loading menu:" + thrownError);
                    // window.location.href = "../Default.aspx";
                }
            });
        }
        var edit = function (el) {

            var id = $(el).data('id');

            $("#hdtype").val(2);
            $("#hdProfileId").val(id);

            loadProfileMenu(id);

            $("#myModalLabel").html("Editar Perfil");
            $("#myModal").modal('toggle');
        }        
        var changeStateProfile = function (el) {

            var id = $(el).data('id');
            var tipo = $(el).data('type');
            $("#hdProfileId").val(id);

            var msg = '';

            if (tipo == "1") {
                msg = 'Activar';
                $("#hdtype").val(4);
            }
            else {
                msg = 'Desactivar';
                $("#hdtype").val(3);

                if (existUserWhitProfile()) {
                    alertify.warning("No puede desactivar este perfil ya que esta asociado a un usuario");
                    return;
                }
            }
            var xDetail = '', pProfile = '';            

            alertify.confirm('Esta seguro que desea ' + msg + ' el Perfil?').set('onok', function (e) {                

                if (e) {

                    $.ajax({
                        type: "POST",
                        url: "Profiles.aspx/Crud_Profiles",
                        contentType: "application/json; charset=utf-8",
                        data: "{pType: '" + $("#hdtype").val() + "', pProfileId: '" + $("#hdProfileId").val() +
                                "', pProfile: '" + pProfile + "', xDetail: '" + xDetail + "' }",
                        dataType: "json",
                        async: false,
                        success: function (result) {

                            if (result.d == "OK") {
                                alertify.success("Exito al "+ msg +"!!!");
                                getGridData();
                            }
                            else {

                                alertify.success(result.d);
                            }

                        },
                        error: function (xhr, ajaxOptions, thrownError) {
                            alertify.error("Error Aprove delete:" + thrownError);
                        }
                    });

                }
            });
        }
        var existUserWhitProfile = function () {

            var exists = false;

            $.ajax({
                type: "POST",
                url: "Profiles.aspx/fGetExistuserWithProfile",
                contentType: "application/json; charset=utf-8",
                data: "{pProfileId: '" + $("#hdProfileId").val() + "'}",
                async: false,
                dataType: "json",
                success: function (result) {
                    var source = { localdata: result.d, datatype: "json" };
                    if (result.d == "1") {
                        exists = true;
                    }

                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alertify.error("No se Pudo Validar el Perfil:" + thrownError);
                    exists = true;
                }
            });

            return exists;
        } //FIN DE LA FUNCION
    </script>

</asp:Content>

