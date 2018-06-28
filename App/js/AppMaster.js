
/****************************************
    CUSTOM JQ WIDGET GRID LOCALIZATION
*****************************************/
var localizationobj = {};

var days = {
    // full day names
    names: ["Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado"],
    // abbreviated day names
    namesAbbr: ["Dom", "Lun", "Mar", "Mie",  "Jue", "Vie", "Sab"],
    // shortest day names
    namesShort: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"]
};
var months = {
    // full month names (13 months for lunar calendards -- 13th month should be "" if not lunar)
    names: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre", ""],
    // abbreviated month names
    namesAbbr: ["Ene", "Feb", "Mar", "Abr", "May", "Jun", "Jul", "Ago", "Sep", "Oct", "Nov", "Dic", ""]
};

localizationobj.pagergotopagestring = "Ir a página:";
localizationobj.pagershowrowsstring = "Filas a mostrar:";
localizationobj.pagerrangestring = " de ";
localizationobj.pagernextbuttonstring = "Próximo";
localizationobj.pagerpreviousbuttonstring = "Anterior";
localizationobj.sortascendingstring = "Orden ascendente";
localizationobj.sortdescendingstring = "Orden descendente";
localizationobj.sortremovestring = "Borrar";
localizationobj.firstDay = 1;
localizationobj.percentsymbol = "%";
localizationobj.currencysymbol = "$";
localizationobj.currencysymbolposition = "after";
localizationobj.decimalseparator = ".";
localizationobj.thousandsseparator = ",";
localizationobj.emptydatastring = "No hay datos para mostrar";
localizationobj.everpresentrowplaceholder = "Ingrese ";
localizationobj.addrowstring = '<span class="glyphicon glyphicon-plus" style=" color: #DEE0C9;" title="Agregar" aria-hidden="true"></span>';
localizationobj.days = days;
localizationobj.months = months;
localizationobj.filterclearstring = "Limpiar";
localizationobj.filterstring = "Filtrar";
localizationobj.filtershowrowstring = "Mostrar filas donde:";
localizationobj.filtershowrowdatestring = "Mostrar filas en la fecha:";
localizationobj.filterorconditionstring = "O";
localizationobj.filterandconditionstring = "Y";
localizationobj.filterselectallstring = "(Seleccionar Todos)";
localizationobj.filterchoosestring = "Favor elegir:";
localizationobj.filterstringcomparisonoperators = ['Vacio', 'No vacio', 'Contiene', 'Contiene(Coincidir May. y Min.)',
    'No contiene', 'No contiene(Coincidir May. y Min.)', 'Comienza con', 'Comienza con(Coincidir May. y Min.)',
    'Termina con', 'Termina con(Coincidir May. y Min.)', 'Igual a ', 'Igual a (Coincidir May. y Min.)', 'Nulo', 'No nulo'];
localizationobj.filternumericcomparisonoperators = ['Igual a', 'No igual a', 'Menor que', 'Menor o igual que', 'Mayor que', 'Mayor o igual que', 'Nulo', 'No nulo'];
localizationobj.filterdatecomparisonoperators = ['Igual a', 'No igual a', 'Menor que', 'Menor o igual que', 'Mayor que', 'Mayor o igual que', 'Nulo', 'No nulo'];
localizationobj.filterbooleancomparisonoperators = ['Igual a', 'No igual a'];

var pageRendererCustom = function (control, pageSize) {

    var element = $("<div style='margin-left: 10px; margin-top: 5px; width: 100%; height: 100%;'></div>");
    var datainfo = $(control).jqxGrid('getdatainformation');
    var paginginfo = datainfo.paginginformation;

    // create navigation buttons.    
    var leftButton = $("<div style='padding: 0px; float: left;'><div style='margin-left: 9px; width: 16px; height: 16px;'></div></div>");
    leftButton.find('div').addClass('jqx-icon-arrow-left');
    leftButton.width(36);
    leftButton.jqxButton();

    var rightButton = $("<div style='padding: 0px; margin: 0px 3px; float: left;'><div style='margin-left: 9px; width: 16px; height: 16px;'></div></div>");
    rightButton.find('div').addClass('jqx-icon-arrow-right');
    rightButton.width(36);
    rightButton.jqxButton();

    // append the navigation buttons to the container DIV tag.    
    leftButton.appendTo(element);
    rightButton.appendTo(element);

    // create a page information label and append it to the container DIV tag.    
    var label = $("<div style='font-size: 11px; margin: 2px 3px; font-weight: bold; float: left;'></div>");
    if (datainfo.rowscount > pageSize)
        label.text("1-" + paginginfo.pagesize + ' de ' + datainfo.rowscount);
    else
        label.text("1-" + datainfo.rowscount + ' de ' + datainfo.rowscount);

    label.appendTo(element);
    self.label = label;

    // navigate to the next page when the right navigation button is clicked.
    rightButton.click(function () {
        $(control).jqxGrid('gotonextpage');
        var datainfo = $(control).jqxGrid('getdatainformation');
        var paginginfo = datainfo.paginginformation;
        label.text(1 + paginginfo.pagenum * paginginfo.pagesize + "-" + Math.min(datainfo.rowscount, (paginginfo.pagenum + 1) * paginginfo.pagesize) + ' de ' + datainfo.rowscount);
    });

    leftButton.click(function () {
        $(control).jqxGrid('gotoprevpage');
        var datainfo = $(control).jqxGrid('getdatainformation');
        var paginginfo = datainfo.paginginformation;
        label.text(1 + paginginfo.pagenum * paginginfo.pagesize + "-" + Math.min(datainfo.rowscount, (paginginfo.pagenum + 1) * paginginfo.pagesize) + ' de ' + datainfo.rowscount);
    });

    return element;

}
/****************************************
    CUSTOM JQ WIDGET GRID LOCALIZATION
*****************************************/





/****************************************
        POP UP FORM VALIDATORS
    *****************************************/

//Validador numerico y flotantes
//Quita automaticamente todo valor textual y permite unicamente numeros y puntos
var initFloatValidator = function (el) {
    var sanitized = $(el).val().replace(/[^-.0-9]/g, '');
    // Remove non-leading minus signs
    sanitized = sanitized.replace(/(.)-+/g, '$1');
    // Remove the first point if there is more than one
    sanitized = sanitized.replace(/\.(?=.*\.)/g, '');
    // Update value
    $(el).val(sanitized);
}


//Validador de enteros
//Quita automaticamente todo valor textual y permite unicamente numeros enteros
var initIntValidator = function (el) {
    var sanitized = $(el).val().replace(/[^-.0-9]/g, '');
    // Update value
    $(el).val(sanitized);
}

//Validar cedula Nicarguense
var initCedula = function () {
    $('.valCedula').mask("999-999999-9999a");
}

var validateEmail = function (element, value, validate) {
    var validInput = true;
    var validateCollection = validate.split(",");
    if (validateCollection.indexOf("empty") != 1) {
        if ($.trim(value) == '')
            validInput = false;
    }
    if (validInput) {
        var rexChar = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        validInput = rexChar.test(value);
    }

    var id_attr = "#gly" + $(element).attr("id");
    if (!validInput) {
        $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
        $(id_attr).removeClass('glyphicon-ok').addClass('glyphicon-remove');
    }
    else {
        $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
        $(id_attr).removeClass('glyphicon-remove').addClass('glyphicon-ok');
    }

    return validInput;
}
var validateText = function (element, value, validate) {
    var validInput = true;
    var validateCollection = validate.split(",");
    if (validateCollection.indexOf("empty") != 1) {
        if ($.trim(value) == '')
            validInput = false;
    }

    var id_attr = "#gly" + $(element).attr("id");
    if (!validInput) {
        $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
        $(id_attr).removeClass('glyphicon-ok').addClass('glyphicon-remove');
    }
    else {
        $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
        $(id_attr).removeClass('glyphicon-remove').addClass('glyphicon-ok');
    }
    return validInput;
}
var validateSelect = function (element, value, validate) {
    var validInput = true;
    var validateCollection = validate.split(",");
    if (validateCollection.indexOf("empty") != 1) {
        if ($.trim(value) == '')
            validInput = false;
    }

    var id_attr = "#gly" + $(element).attr("id");
    if (!validInput)
        $(element).closest('.form-group').removeClass('has-success').addClass('has-error');

    else
        $(element).closest('.form-group').removeClass('has-error').addClass('has-success');

    return validInput;
}
var validateNumber = function (element, value, validate) {
    var validInput = true;
    debugger;
    var sanitized;
    if (validate == "float") {
        sanitized = $(element).val().replace(/[^-.0-9]/g, '');

        // Remove non-leading minus signs
        sanitized = sanitized.replace(/(.)-+/g, '$1');
        // Remove the first point if there is more than one
        sanitized = sanitized.replace(/\.(?=.*\.)/g, '');
    } else {
        sanitized = $(element).val().replace(/[^-.0-9]/g, '');
    }

    //Update the value
    if (sanitized.length == 0) sanitized = 0;
    $(element).val(sanitized);

    var val = parseFloat(sanitized);
    if (val == NaN)
        validInput = false;

    var id_attr = "#gly" + $(element).attr("id");
    if (!validInput) {
        $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
        $(id_attr).removeClass('glyphicon-ok').addClass('glyphicon-remove');
    }
    else {
        $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
        $(id_attr).removeClass('glyphicon-remove').addClass('glyphicon-ok');
    }

    return validInput;
}
var validateDate = function (element, value, validate) {
    var validInput = true;

    if (value == undefined || value == "" || !moment(value).isValid())
        validInput = false;

    var id_attr = "#gly" + $(element).attr("id");
    if (!validInput) {
        $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
        $(id_attr).removeClass('glyphicon-ok').addClass('glyphicon-remove');
    }
    else {
        $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
        $(id_attr).removeClass('glyphicon-remove').addClass('glyphicon-ok');
    }
    return validInput;
}

var formValidator = function (divValidate, clearForm) {

    if (clearForm) {
        $(divValidate).find(":input").each(function () {
            if ($(this).attr("id") != "undefined") {
                if ($(this).attr("aria-required") == "true" || $(this).attr('validateForm')) {
                    var id_attr = "#gly" + $(this).attr("id");
                    $(this).closest('.form-group').removeClass('has-success').removeClass('has-error');
                    $(id_attr).removeClass('glyphicon-ok').removeClass('glyphicon-remove');
                }
            }
        });
    }

    if (!clearForm) {

        var returnValidate = true;
        $(divValidate).find(":input").each(function () {
            if (!returnValidate)
                return returnValidate;

            if ($(this).attr("id") != "undefined") {

                if ($(this).attr("type") == "text" && $(this).attr("aria-required") == "true") {
                    if (!validateText($(this), $(this).val(), $(this).attr("aria-controls"))) {
                        alertify.error($(this).attr("aria-label"));
                        returnValidate = false;
                    }
                }
                if ($(this).attr("type") == "email" && $(this).attr("aria-required") == "true") {
                    if (!validateEmail($(this), $(this).val(), $(this).attr("aria-controls"))) {
                        alertify.error($(this).attr("aria-label"));
                        returnValidate = false;
                    }
                }
                if ($(this).attr("type") == "select" && $(this).attr("aria-required") == "true") {
                    if (!validateSelect($(this), $("#" + $(this).attr("id") + " option").filter(":selected").val(), $(this).attr("aria-controls"))) {
                        alertify.error($(this).attr("aria-label"));
                        returnValidate = false;
                    }
                }
                if ($(this).attr("type") == "number" && $(this).attr("aria-required") == "true") {
                    if (!validateNumber($(this), $(this).val(), $(this).attr("aria-controls"))) {
                        alertify.error($(this).attr("aria-label"));
                        returnValidate = false;
                    }
                }
                if (($(this).attr("type") == "date" || $(this).attr("type") == "datetime") && $(this).attr("aria-required") == "true") {
                    if (!validateDate($(this), $(this).val(), $(this).attr("aria-controls"))) {
                        alertify.error($(this).attr("aria-label"));
                        returnValidate = false;
                    }
                }

            }


        });
        return returnValidate;
    }
}


var setOk = function (msg) {
    alertify.success(msg);
};
var setError = function (msg) {
    alertify.error(msg);
};
/****************************************
    POP UP FORM VALIDATORS
*****************************************/

$(function () {

    initDateRangePicker();
    initDatePicker();
    loadMenu();
    /***************************
    JQUERY - DATATABLES
    ***************************/

    /* */
    $.extend( $.fn.dataTable.defaults, {
    //$.extend(true, $.fn.dataTable.Editor.defaults, {
        paging: true,
        searching: true,
        ordering: true,
        info: true,
        autoWidth: true,

        formOptions: {
            inline: {
                onBlur: true
            }
        },

        pageLenght: 50,
        language: {
            lengthMenu: "Mostrar _MENU_ registros por pagina",
            zeroRecords: "No hay informacion a mostrar",
            info: "Pagina _PAGE_ de _PAGES_",
            infoEmpty: "No hay datos disponibles",
            infoFiltered: "(Datos filtrados de un total de _MAX_ registros)",
            search: "Buscar",
            paginate: {
                previous: "Anterior",
                next: "Siguiente"
            }
        }
    });
   
    /***************************
    JQUERY - DATATABLES
    ***************************/






    /***************************
    ALERTIFY
    ***************************/

    alertify.defaults = {
        // dialogs defaults
        autoReset: true,
        basic: false,
        closable: true,
        closableByDimmer: true,
        frameless: false,
        maintainFocus: true, // <== global default not per instance, applies to all dialogs
        maximizable: false,
        modal: true,
        movable: true,
        moveBounded: false,
        overflow: true,
        padding: true,
        pinnable: true,
        pinned: true,
        preventBodyShift: false, // <== global default not per instance, applies to all dialogs
        resizable: true,
        startMaximized: false,
        transition: 'pulse',

        // notifier defaults
        notifier: {
            // auto-dismiss wait time (in seconds)  
            delay: 5,
            // default position
            position: 'bottom-right'
        },

        // language resources 
        glossary: {
            // dialogs default title
            title: 'CLINICA',
            // ok button text
            ok: 'OK',
            // cancel button text
            cancel: 'Cancelar'
        },

        // theme settings
        theme: {
            // class name attached to prompt dialog input textbox.
            input: 'ajs-input',
            // class name attached to ok button
            ok: 'btn btn-primary',//ok: 'ajs-ok',
            // class name attached to cancel button 
            cancel: 'btn btn-warning'//cancel: 'ajs-cancel'
        }
    };

    /***************************
    ALERTIFY
    ***************************/
    

    /***************************
    SELECT PICKER
    ***************************/
    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent)) {
        $('.selectpicker').selectpicker('mobile');
    }
    /***************************
    SELECT PICKER
    ***************************/


    $('.valFloat').on('keyup', function (e) {
        initFloatValidator(this);
    });

});


/****************************************
   DATE RANGE PICKER
*****************************************/
var initDateRangePicker = function () {
    $('.dateRangepicker').daterangepicker({
        opens: "rigth",
        startDate: moment().subtract(3, 'months'),
        endDate: moment(),
        showDropdowns: true,
        autoApply: true,
        ranges: {
            "Hoy": [
                moment(), moment()
            ],
            "Ayer": [
                moment().subtract(1, 'days'), moment().subtract(1, 'days')
            ],
            "Últimos 7 días": [
                moment().subtract(6, 'days'), moment()
            ],
            "Últimos 30 días": [
                moment().subtract(29, 'days'), moment()
            ],
            "Este mes": [
                moment().startOf('month'), moment().endOf('month')
            ],
            "Mes anterior": [
                moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')
            ]
        },
        locale: {
            format: 'DD/MM/YYYY',
            applyLabel: 'Listo',
            fromLabel: 'desde',
            toLabel: 'hasta',
            customRangeLabel: 'Personalizar Rango',
            daysOfWeek: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa'],
            monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
            firstDay: 0
        }

    });
    $('.dateRangepicker').on('show.daterangepicker', function (ev, picker) {
        $('.dateRangepicker').data('daterangepicker').showCalendars();
    });
}


/****************************************
   DATE PICKER
*****************************************/
var initDatePicker = function () {
    $('.datepicker').datepicker({
        format: "dd/mm/yyyy", weekStart: 7, language: "es", forceParse: false, todayHighlight: true, daysOfWeekDisabled: "", autoclose: true
    });
    $('.datepicker').mask("99/99/9999");
}
var monthNames = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];


var formatDate = function (dateString) {
    return moment(dateString, "DD/MM/YYYY").format("YYYYMMDD");
}

var FormatToDate = function (jdate) {
    var ddate = moment(jdate, 'DD/MM/YYYY');
    var sdate = ddate.format('YYYYMMDD');
    return sdate.replace('Invalid date', '');
}

var FormatToDateYearMonthDay = function (jdate) {
    var ddate = moment(jdate, 'DD/MM/YYYY');
    var sdate = ddate.format('YYYY/MM/DD');
    return sdate.replace('Invalid date', '');
}


var JSONToCSVConvertor = function (JSONData, ReportTitle, ShowLabel) {
    //If JSONData is not an object then JSON.parse will parse the JSON string in an Object
    var arrData = typeof JSONData != 'object' ? JSON.parse(JSONData) : JSONData;

    var CSV = '';
    //Set Report title in first row or line

    //CSV += ReportTitle + '\r\n\n';

    //This condition will generate the Label/Header
    if (ShowLabel) {
        var row = "";

        //This loop will extract the label from 1st index of on array
        for (var index in arrData[0]) {

            //Now convert each value to string and comma-seprated
            row += index + ',';
        }

        row = row.slice(0, -1);

        //append Label row with line break
        //#2a3f54
        //CSV += '<td style="background-color: #2a3f54;">' + row + '</td> \r\n';
        CSV += row + ' \r\n';
    }

    //1st loop is to extract each row
    for (var i = 0; i < arrData.length; i++) {
        var row = "";

        //2nd loop will extract each column and convert it in string comma-seprated
        for (var index in arrData[i]) {
            row += '"' + arrData[i][index] + '",';
        }

        row.slice(0, row.length - 1);

        //add a line break after each row
        CSV += row + '\r\n';
    }

    if (CSV == '') {
        alert("Invalid data");
        return;
    }

    //Generate a file name
    var fileName = "MyReport_";


    //this will remove the blank-spaces from the title and replace it with an underscore
    fileName += ReportTitle.replace(/ /g, "_");

    //Initialize file format you want csv or xls
    var uri = 'data:text/csv;charset=utf-8,' + escape(CSV);

    // Now the little tricky part.
    // you can use either>> window.open(uri);
    // but this will not work in some browsers
    // or you will not get the correct file extension    

    //this trick will generate a temp <a /> tag
    var link = document.createElement("a");
    link.href = uri;

    //set the visibility hidden so it will not effect on your web-layout
    link.style = "visibility:hidden";
    link.download = fileName + ".csv";

    //this part will append the anchor tag and remove it after automatic click
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
}


var loadMenu = function () {
    var $menu = $("#ulMenu");
    var arrMenu = [];

    var liHeader = '<li class="header">MAIN NAVIGATION</li>';
    var headerContentMenu = '<ul class="treeview-menu">';
    var footerContentMenu = '</ul>';

    $menu.append(liHeader);

    $.ajax({
        type: "POST",
        url: "Dashboard.aspx/LoadMenu",
        contentType: "application/json; charset=utf-8",
        data: "{}",
        dataType: "json",
        async: false,
        success: function (result) {
            arrMenu = [];
            var html = "";
            $.each($.parseJSON(result.d), function (k, v) {
               
                $menu.html("");

                arrMenu.push({
                    MENU_ID: v.MENU_ID,
                    NAME: v.NAME,
                    URL: v.URL,
                    SPAN: v.SPAN,
                    IMAGE: v.IMAGE,
                    HAVE_LEVEL: v.HAVE_LEVEL,
                    POSITION: v.POSITION,
                    STATUS_ID: v.STATUS_ID,
                    FATHER_ID: v.FATHER_ID
                });

            });
            
            $.each(arrMenu, function (k, v) {

                var menuId = v.MENU_ID;

                var item = '<li class="treeview"> ' +
                                '<a href="#"> ' +
                                '<i class="fa fa-list"></i> <span>'+ v.NAME +'</span> <i class="fa fa-angle-left pull-right"></i>' +
                                '</a> ';

                var contentMenu = '';

                $.each(arrMenu, function (k, v) {

                    if (menuId == v.FATHER_ID)
                    {
                        var row = '<li><a href="'+ v.URL +'"><i class="fa fa-circle-o"></i>'+ v.NAME +'</a></li>';

                        contentMenu = contentMenu + row;
                    }
                            
                });


                var closeItem = '</li>';

                if (v.FATHER_ID == 0) {
                    //console.log(item + headerContentMenu + contentMenu + footerContentMenu + closeItem);
                    //console.log("============================");
                    $menu.append(item + headerContentMenu + contentMenu + footerContentMenu + closeItem);
                }

            });
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alertify.error("Error loading menu:" + thrownError);
            // window.location.href = "../Default.aspx";
        }
    });
}
