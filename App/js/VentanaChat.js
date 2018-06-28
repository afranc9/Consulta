//this function can remove a array element.
Array.remove = function (array, from, to) {
    var rest = array.slice((to || from) + 1 || array.length);
    array.length = from < 0 ? array.length + from : from;
    return array.push.apply(array, rest);
};

//this variable represents the total number of popups can be displayed according to the viewport width
var total_popups = 0;

//arrays of popups ids
var popups = [];

//this is used to close a popup
function close_popup(id) {
    for (var iii = 0; iii < popups.length; iii++) {
        if (id == popups[iii]) {
            Array.remove(popups, iii);

            document.getElementById(id).style.display = "none";

            calculate_popups();

            return;
        }
    }
}

//displays the popups. Displays based on the maximum number of popups that can be displayed on the current viewport width
function display_popups() {
    var right = 220;

    var iii = 0;
    for (iii; iii < total_popups; iii++) {
        if (popups[iii] != undefined) {
            var element = document.getElementById(popups[iii]);
            element.style.right = right + "px";
            right = right + 320;
            element.style.display = "block";
        }
    }

    for (var jjj = iii; jjj < popups.length; jjj++) {
        var element = document.getElementById(popups[jjj]);
        element.style.display = "none";
    }
}

//creates markup for a new popup. Adds the id to popups array.
function register_popup(id, name) {

    for (var iii = 0; iii < popups.length; iii++) {
        //already registered. Bring it to front.
        if (id == popups[iii]) {
            Array.remove(popups, iii);

            popups.unshift(id);
            calculate_popups();

            return;
        }
    }

    var element = '<div class="popup-box chat-popup" id="' + id + '">';
    element = element + '<div class="popup-head">';
    element = element + '<div class="popup-head-left">' + name + '</div>';
    element = element + '<div class="popup-head-right"><a href="javascript:close_popup(\'' + id + '\');">&#10005;</a></div>';
    element = element + '<div style="clear: both"></div></div><div class="popup-messages">';

    element = element + '<div id="messages-card" class="mdl-card mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet mdl-cell--12-col-desktop">';
    element = element + '<div class="mdl-card__supporting-text mdl-color-text--grey-600">';
    element = element + '<div id="messages">';
    element = element + '<span id="message-filler"></span>';
    element = element + '</div>';
    element = element + '<form id="message-form" action="#">';
    element = element + '<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">';
    element = element + '<input class="mdl-textfield__input" type="text" id="message">';
    element = element + '<label class="mdl-textfield__label" for="message">Message...</label>';
    element = element + '</div>';
    element = element + '<button id="submit" disabled type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Send</button>';
    element = element + '</form>';
    element = element + '<form id="image-form" action="#">';
    element = element + '<input id="mediaCapture" type="file" accept="image/*,capture=camera">';
    element = element + '<button id="submitImage" title="Add an image" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--amber-400 mdl-color-text--white">';
    element = element + '<i class="material-icons">image</i>';
    element = element + '</button>';
    element = element + '</form>';
    element = element + '</div>';
    element = element + '</div>';

    element = element + '</div ></div > ';

    document.getElementsByTagName("body")[0].innerHTML = document.getElementsByTagName("body")[0].innerHTML + element;

    popups.unshift(id);

    calculate_popups();

    window.friendlyChat.cfurl(id);

}

//calculate the total number of popups suitable and then populate the toatal_popups variable.
function calculate_popups() {
    var width = window.innerWidth;
    if (width < 540) {
        total_popups = 0;
    }
    else {
        width = width - 200;
        //320 is width of a single popup box
        total_popups = parseInt(width / 320);
    }

    display_popups();

}

function cargarConversacion(idconversacion, nickname) {

    alertify.confirm('Desea responder a este chat?').set('onok', function (e) {
        if (e) {
            $("#messages").html("");

            urlAdminSeleccionado = idconversacion;
            $("#alert" + idconversacion).addClass("hide");

            $("#DivChatCon").html("Chat con " + nickname);

            window.friendlyChat.cfurl(idconversacion);

            var postKey = idconversacion; //Params is received from the Router
            var updates = {};
            updates['/Conversaciones/' + postKey + '/estado'] = 1;
            updates['/Conversaciones/' + postKey + '/userAnswerChat'] = $("#hdUserName").val();

            firebase.database().ref().update(updates);

            //$("#" + idconversacion).remove();

            //CargarNodoPrincipal();
        }
    });    
                
}

function cargarConversacionSeleccionada(idconversacion, nickname) {
    $("#messages").html("");

    urlAdminSeleccionado = idconversacion;
    $("#alert" + idconversacion).addClass("hide");

    $("#DivChatCon").html("Chat con " + nickname);

    window.friendlyChat.cfurl(idconversacion);
}

function cerrarConversacion(idconversacion, nickname) {

    alertify.confirm('Desea cerrar este chat?').set('onok', function (e) {
        if (e) {
            $("#messages").html("");

            urlAdminSeleccionado = idconversacion;
            $("#alert" + idconversacion).addClass("hide");

            $("#DivChatCon").html("Chat con " + nickname);

            window.friendlyChat.cfurl(idconversacion);

            var postKey = idconversacion; //Params is received from the Router
            var updates = {};
            updates['/Conversaciones/' + postKey + '/estado'] = 2;

            firebase.database().ref().update(updates);           
            
        }
    });


}

//recalculate when window is loaded and also when window is resized.
window.addEventListener("resize", calculate_popups);
window.addEventListener("load", calculate_popups);