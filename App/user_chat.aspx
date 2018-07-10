<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_chat.aspx.cs" Inherits="App_user_chat" %>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sexo Jovenes</title>
    <!-- Load Roboto font -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <!-- Load css styles -->

    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../css/principal/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../css/principal/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="../css/principal/style.css" />
    <link rel="stylesheet" type="text/css" href="../css/principal/pluton.css" />

    <!--<link rel="stylesheet" type="text/css" href="css/jquery.cslider.css" />
    <link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css" />-->
    <link rel="stylesheet" type="text/css" href="../css/principal/animate.css" />
    <link rel="stylesheet" type="text/css" href="../css/principal/Estilos.css" />

    <!--<link rel="shortcut icon" href="images/ico/logo-2.png">-->
    <link href="../css/landing-page.css" rel="stylesheet" />
    <link href="../Assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" />

</head>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
      

        <div class="ColorFondo navbar">
        <div class="ColorFondo navbar-inner" style="width: 100%;">
            <div class="container">
                <a href="#" class="">
                    <!-- This is website logo -->
                    <img src="../Images/logo.png" class="logo" width="120" height="40" alt="Logo">
                </a>
                <!-- Navigation button, visible on small resolution -->
                <%--<input type="image" onclick="BtnMenuClick()" data-toggle="collapse" class="btn btn-navbar" src="../Images/ico/icon-menu.png" alt="Submit" data-target=".nav-collapse" width="40" height="40">--%>
                <!-- Main navigation -->
                <%--<div id="MenuCollapse" class="nav-collapse collapse MenuLeftCollapse">
                    <ul class="nav" id="top-navigation">
                        <li class="active"><a class="itemMenu" href="#busqueda">Busqueda</a></li>
                        <li><a class="itemMenu" href="#videos">Videos</a></li>
                        <li><a class="itemMenu" href="#tips">Tips</a></li>
                        <li><a class="itemMenu" href="#consulta">Consultanos</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                aria-expanded="true">Mas</a>
                            <ul class="dropdown-menu">
                                <li><a href="mepaso.aspx">A MI ME PASÓ</a></li>
                                <li><a href="abretumente.aspx">DESCOTA TU MENTE - ABRE TU MENTE</a></li>
                                <li><a href="mepaso.aspx">MAMÁ, PAPÁ HABLEMOS DE SEXUALIDAD</a></li>
                                <li><a href="menuycontenidos.aspx">MENÚ Y CONTENIDOS</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>--%>
            </div>
        </div>
    </div>

        <div id="demo" class="form-control" style="background-color:white !important; margin:0%;">
            <div id="divOpenChat" miwo-name="name" class="form-group">                
                    <div class="form-group">
                        <label style="color:black;">TIENES UNA CONSULTA?</label>
                    </div>
                    <div class="form-group">
                        <select id="selectFooterSex" style="height: 30px !important;" class="form-control">
                            <option value="0" label="Sexo" />
                            <option value="1" label="M" />
                            <option value="2" label="F" />
                        </select>
                    </div>
                    <div class="form-group">
                        <input id="footerNickName" autocomplete="off" type="text" style="height: 30px !important;" class="form-control"  placeholder="nickname    ">
                    </div>
                    <div class="form-group">
                        <input id="footerAge" autocomplete="off" type="number" style="height: 30px !important;" class="form-control" placeholder="Edad" min="0" max="100" >
                    </div>
                    <div class="form-group">
                        <select id="selectfooterCountry" style="height: 30px !important;" class="form-control">
                            <option value="0" label="PAIS" />
                        </select>
                    </div>
                    <input id="btnInitChat" type="button"  style="background: #fbbbe0;" class="btn btn-primary center" value="Iniciar Consulta" />
                    
            </div>
            <div id="divChat" style="display:none;" class="form-group">
                <div id="messages-card-container" style="display:none;" class="mdl-cell mdl-cell--12-col mdl-grid">

                    <!-- Messages container -->
                    <div id="messages-card" class="mdl-card mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet mdl-cell--12-col-desktop">
                        <div class="mdl-card__supporting-text mdl-color-text--grey-600">
                            <div style="overflow-y: auto;  height: 230px;" id="messages">
                                <span id="message-filler"></span>
                            </div>
                            
                            <form  id="image-form" action="#">
                                <input style="display:none;" id="mediaCapture" type="file" accept="image/*,capture=camera">
                                <button style="display:none;" id="submitImage" title="Add an image" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--amber-400 mdl-color-text--white">
                                    <i id="icon_image" class="material-icons">image</i>
                                </button>
                            </form>
                        </div>
                    </div>

                    <div  style="display:none;" id="must-signin-snackbar" class="mdl-js-snackbar mdl-snackbar">
                        <div class="mdl-snackbar__text"></div>
                        <button class="mdl-snackbar__action" type="button"></button>
                    </div>

                </div>
                <form id="message-form" action="#">
                    <input id="message" autocomplete="off"
                         type="text" style="height: 30px !important; width: 63%; border-radius: 5px;" class="" placeholder="Mensaje">
                    <button id="submit" disabled type="submit" 
                         style="width:15%; display:none;"
                        class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
                        Enviar
                    </button>
                    <img id="imgSend" src="../images/send.png" alt="Enviar"
                         style="width:15%;max-width: 42px;max-height: 42px;"
                         height="42" width="42">

                    <img id="imgCamera" src="../images/ic_camera.png" alt="Photo"
                         style="width:15%;max-width: 42px;max-height: 42px;"
                         height="42" width="42">
                </form>
            </div>
        </div>   
    
    <input id="inputClientName" type="hidden" value="" />

    <script src="../js/principal/jquery.js"></script>
    <!-- -->

    <script type="text/javascript" src="../js/principal/jquery.mixitup.js"></script>
    <script type="text/javascript" src="../js/principal/bootstrap.js"></script>
    <!--<script type="text/javascript" src="../js/principal/modernizr.custom.js"></script>-->
    <script type="text/javascript" src="../js/principal/jquery.bxslider.js"></script>
    <script type="text/javascript" src="../js/principal/jquery.cslider.js"></script>
    <script type="text/javascript" src="../js/principal/jquery.placeholder.js"></script>
    <script type="text/javascript" src="../js/principal/jquery.inview.js"></script>

    <script type="text/javascript" src="../js/principal/app.js"></script>
    <script src="../js/principal/plugins/swiper.min.js"></script>

    <script src="https://www.gstatic.com/firebasejs/4.9.0/firebase.js"></script>
    <script src="js/firebase-messaging-sw.js"></script>
    <script src="js/userchat.js"></script>
    <style type="text/css">
        .bocadilloarriba {
            padding: 10px;
            border-radius: 0px 15px 0px 15px;
            background-color: #1f6ab7;
            font-family: "trebuchet ms", tahoma, verdana, sans­serif;
            font-size: 0.7em;
            border-color: white;
            border-width: 1px;
            text-align: left;
            border-style: solid;
            float: right;   
            text-align: left;   
            color: white;
            width:90%;
        }

        .bocadilloarribaAdmin {
            padding: 10px;
            border-radius: 0px 15px 0px 15px;
            background-color: orange;
            font-family: "trebuchet ms", tahoma, verdana, sans­serif;
            font-size: 0.7em;
            border-color: white;
            border-width: 1px;
            text-align: left;
            border-style: solid;
            float: left;   
            text-align: left;   
            width: 90%;
            color: white;
        }
        
        .switch-version {
            position: fixed;
            width: 40px;
            background: #fff;
            right: 0;
            top: 300px;
            border-radius: 4px 0 0 4px;
            box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);
        }

        .d-md-block {
            display: block!important;
        }

        .switch-to.mdb-jquery {
            background-position: 1px;
        }


        .switch-to {
            display: block;
            width: 40px;    
            height: 40px;
            background-image: url("../images/ico/icon_chat.png");
            background-repeat: no-repeat;
        }


        .switch-to.active {
            background-color: rgba(0,0,0,.15);
        }
    </style>

    <script type="text/javascript">

        var dispositivo = navigator.userAgent.toLowerCase();
        if (dispositivo.search(/iphone|ipod|ipad|android/) > -1) {
            $("#videoPrincipal").hide();
            $("#staticChat").hide();
        }

        function BtnMenuClick() {
            $(".logo").toggle();
            $("#MenuCollapse").removeClass("MenuLeftCollapse").addClass("MenuSinLeftCollapse");
        }

        $(".itemMenu").click(function () {
            $(".logo").attr("style", "display:block");
        });
        $("#imgCamera").click(function () {
            $("#icon_image").trigger("click");
        });
        $("#imgSend").click(function () {
            $("#submit").trigger("click");
        });
    </script>
</body>
</html>
