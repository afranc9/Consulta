<%@ Page Language="C#" AutoEventWireup="true" CodeFile="propuesta.aspx.cs" Inherits="App_propuesta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
    <link href="../assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" />

    <style>
        .navbar .nav > li > a {
            text-transform: uppercase;
            line-height: auto;
            vertical-align: middle;
            margin: 10px 3px;
            -webkit-box-shadow: none;
            -moz-box-shadow: none;
            border: 0px;
            box-shadow: none;
            font-size: 15px;
            text-shadow: none;
            color: #da8eaa;
            transition: border-color 1s ease;
        }

        .fake-input {
            position: relative;
        }

            .fake-input input {
                border: none: background:#fff;
                display: block;
                width: 100%;
                box-sizing: border-box
            }

            .fake-input img {
                position: absolute;
                top: 10px;
                right: 5px
            }

        div.ext-box {
            display: table;
            width: 100%;
        }

        div.int-box {
            display: table-cell;
            vertical-align: middle;
        }

        .navbar .nav > li:hover > a, .navbar .nav > .active > a, .navbar .nav > .active > a:hover, .navbar .nav > .active > a:focus {
            border: 0px;
            color: #da8eaa;
            background-color: transparent;
            transition: border-color 1s ease;
        }
    </style>

</head>
<body>
    <div style="background-color: #404042 !important;" class="ColorFondo navbar">
        <div class="ColorFondo navbar-inner" style="background-color: #404042 !important; width: 100%;">
            <div class="container">
                <a href="#" class="">
                    <!-- This is website logo -->
                    <img src="../images/logo.png" class="logo" width="120" height="40" alt="Logo">
                </a>
                <!-- Navigation button, visible on small resolution -->
                <input type="image" onclick="BtnMenuClick()" data-toggle="collapse" class="btn btn-navbar" src="../images/ico/icon-menu.png" alt="Submit" data-target=".nav-collapse" width="40" height="40">
                <!-- Main navigation -->
                <div id="MenuCollapse" class="nav-collapse collapse MenuLeftCollapse">
                    <ul class="nav" id="top-navigation">
                        <li class="active"><a class="" href="#busqueda">Busqueda</a></li>
                        <li><a class="" href="#tips">Tips</a></li>
                        <li><a class="" href="#videos">Videos</a></li>
                        <li><a class="" href="#consulta">Consultanos</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                aria-expanded="true">Mas</a>
                            <ul class="dropdown-menu">
                                <li><a href="mepaso2.aspx">A MI ME PASÓ</a></li>
                                <li><a href="abretumente2.aspx">DESCOTA TU MENTE - ABRE TU MENTE</a></li>
                                <li><a href="mepaso2.aspx">MAMÁ, PAPÁ HABLEMOS DE SEXUALIDAD</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Start home section -->
    <div id="busqueda" style="background: rgba(255,255,255,0.7) !important;">
        <header style="background-image: url(../img/fondobuscador.jpeg) !important;" class="masthead text-white text-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 mx-auto">
                        <h1 class="mb-5">¿TIENES UNA DUDA?</h1>
                    </div>
                    <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
                        <div class="form-row">
                            <div class="span2">
                            </div>
                            <div class="span8">
                                <h4 style="margin: 0 !important;" class="mb-5">Env&iacute;anos tu Consulta</h4>
                                <input style="border-radius: 20px;" type="text" class="form-control form-control-lg" placeholder="Ingresa tu pregunta...">
                                <!--<div class="fake-input">
                                    <input type="text" style="border-radius: 20px;" class="form-control form-control-lg" placeholder="Ingresa tu pregunta..." />
                                    <img src="img/lupa.jpeg" />
                                </div>-->
                            </div>
                            <div class="span2">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </div>

    <div id="tips" style="background-image: url(../img/fondoamarillo.jpeg)" class="section secondary-section">
        <div class="container">
            <div style="border-bottom: 0px; padding: 0px;" class="title">
                <h1 style="color: #cb1d51">Tips</h1>
            </div>
            <div style="margin-top: 20px;" class="row-fluid">
                <div class="span4 tipsAnimation">
                    <div class="span2">
                    </div>
                    <div class="span8">
                        <div class="thumbnail">
                            <div style="height: 200px; padding: 10px; background-image: url(../img/tarjetarosa.png); background-size: cover; display: table; width: 100%;" class="text-center ">
                                <div class="int-box">
                                    <p style="padding-top: 10px;" class="card-title textTip">No tengas miedo de denunciar.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span2">
                    </div>

                </div>
                <div class="span4 tipsAnimation">
                    <div class="span2">
                    </div>
                    <div class="span8">
                        <div class="thumbnail">
                            <div style="height: 200px; padding: 10px; background-image: url(../img/tarjetarosa.png); background-size: cover; display: table; width: 100%;" class="text-center ">
                                <div class="int-box">
                                    <p style="padding-top: 10px;" class="card-title textTip">No tengas miedo de denunciar.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span2">
                    </div>

                </div>
                <div class="span4 tipsAnimation">
                    <div class="span2">
                    </div>
                    <div class="span8">
                        <div class="thumbnail">
                            <div style="height: 200px; padding: 10px; background-image: url(../img/tarjetarosa.png); background-size: cover; display: table; width: 100%;" class="text-center ">
                                <div class="int-box">
                                    <p style="padding-top: 10px;" class="card-title textTip">No tengas miedo de denunciar.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span2">
                    </div>

                </div>

            </div>
            <div style="margin-top: 20px;" class="row-fluid">
                <div class="span4 tipsAnimation">
                    <div class="span2">
                    </div>
                    <div class="span8">
                        <div class="thumbnail">
                            <div style="height: 200px; padding: 10px; background-image: url(../img/tarjetarosa.png); background-size: cover; display: table; width: 100%;" class="text-center ">
                                <div class="int-box">
                                    <p style="padding-top: 10px;" class="card-title textTip">No tengas miedo de denunciar.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span2">
                    </div>

                </div>
                <div class="span4 tipsAnimation">
                    <div class="span2">
                    </div>
                    <div class="span8">
                        <div class="thumbnail">
                            <div style="height: 200px; padding: 10px; background-image: url(../img/tarjetarosa.png); background-size: cover; display: table; width: 100%;" class="text-center ">
                                <div class="int-box">
                                    <p style="padding-top: 10px;" class="card-title textTip">No tengas miedo de denunciar.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span2">
                    </div>

                </div>
                <div class="span4 tipsAnimation">
                    <div class="span2">
                    </div>
                    <div class="span8">
                        <div class="thumbnail">
                            <div style="height: 200px; padding: 10px; background-image: url(../img/tarjetarosa.png); background-size: cover; display: table; width: 100%;" class="text-center ">
                                <div class="int-box">
                                    <p style="padding-top: 10px;" class="card-title textTip">No tengas miedo de denunciar.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span2">
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div style="background-image: url(../img/fondoverde.jpeg)" class="section primary-section" id="videos">
        <div class="container">
            <!-- Start title section -->
            <div style="border-bottom: 0px; padding: 0px;" class="title">
                <h1 style="text-shadow: 2px 2px #908888; color: white">MI EXPERIENCIA</h1>
            </div>

            <div style="margin-top: 20px;" class="row-fluid">
                <div class="span1">
                </div>
                <div class="span4">
                    <div style="background: white;" class="thumbnail">
                        <div class="" style="background-size: contain; background-repeat: no-repeat; cursor: pointer; background-image: url('../img/video1.jpeg'); height: 250px;">
                            <!--<div class="transparentplayicon"></div>-->
                            <div class="D-TituloVideosListas"></div>
                        </div>
                    </div>
                </div>
                <div style="padding: 20px;" class="span7">
                    <label style="color: black; font-size: 20px;">Rosa L&oacute;pez, Psic&oacute;loga</label>
                    <div style="color: black; background: white; padding: 5px;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s  with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div>
                </div>
            </div>

            <div style="margin-top: 20px;" class="row-fluid">
                <div class="span1">
                </div>
                <div class="span4">
                    <div style="background: white;" class="thumbnail">
                        <div class="" style="background-size: contain; background-repeat: no-repeat; cursor: pointer; background-image: url('../img/video2.jpeg'); height: 250px;">
                            <!--<div class="transparentplayicon"></div>-->
                            <div class="D-TituloVideosListas"></div>
                        </div>
                    </div>
                </div>
                <div style="padding: 20px;" class="span7">
                    <label style="color: black; font-size: 20px;">Mario Delgado, 24 años</label>
                    <div style="color: black; background: white; padding: 5px;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s  with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div>
                </div>
            </div>

            <div style="margin-top: 20px;" class="row-fluid">
                <div class="span1">
                </div>
                <div class="span4">
                    <div style="background: white;" class="thumbnail">
                        <div class="" style="background-repeat: no-repeat; background-size: contain; cursor: pointer; background-image: url('../img/video3.jpeg'); height: 250px;">
                            <!--<div class="transparentplayicon"></div>-->
                            <div class="D-TituloVideosListas"></div>
                        </div>
                    </div>
                </div>
                <div style="padding: 20px;" class="span7">
                    <label style="color: black; font-size: 20px;">Laura R&iacute;os, 22 años</label>
                    <div style="color: black; background: white; padding: 5px;">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s  with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div>
                </div>
            </div>
        </div>
    </div>


    <div id="consulta" style="background: rgba(255,255,255,0.7) !important;">
        <header style="background-image: url(../img/fondovariado.jpeg) !important" class="consulta text-white text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <div style="background: white; border-radius: 10px;">
                            <h3 style="color: black; margin: 0px;">¿TIENES UNA DUDA?</h3>
                        </div>
                        <div style="background-color: #ff7bac;" class="ContainerForm">
                            <form>
                                <div class="form-group">
                                    <h4>¡Escr&iacute;benos!</h4>
                                </div>
                                <div class="form-group">
                                    <select class="form-control">
                                        <option value="0" label="Sexo" />
                                        <option value="1" label="M" />
                                        <option value="2" label="F" />
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="nickname    ">
                                </div>
                                <div class="form-group">
                                    <input type="number" class="form-control" placeholder="Edad" min="0" max="100" id="exampleCheck1">
                                </div>
                                <div class="form-group">
                                    <select class="form-control">
                                        <option value="0" label="NICARAGUA" />
                                        <option value="1" label="COSTA RICA" />
                                        <option value="2" label="EL SALVADOR" />
                                        <option value="3" label="HONDURAS" />
                                        <option value="4" label="PANAMA" />
                                        <option value="5" label="BELICE" />
                                    </select>
                                </div>
                                <label style="font-size: 20px; font-weight: bold; padding: 10px;">Enviar</label>
                            </form>
                        </div>
                        <div style="padding: 10px; background: white; border-radius: 10px;">
                            <h4 style="color: black; margin: 0px;">Nuestro equipo de expertos esta pendiente de tus curiosidades, no tengas miedo en preguntar.</h4>
                        </div>
                    </div>
                    <div class="col-md-4"></div>
                </div>
            </div>
        </header>
    </div>

    <!-- Newsletter section end -->
    <!-- Contact section edn -->
    <!-- Footer section start -->
    <!--<div class="ColorFondo footer">
        <p></p>
    </div>-->
    <!-- Footer section end -->
    <!-- ScrollUp button start -->
    <!--<div class="scrollup">
        <a href="#">
            <i class="">
                <input type="image" class="icon-up-open" src="images/ico/arrow_up.png" alt="Up" width="30" height="25">
            </i>
        </a>
    </div>-->
    <!-- ScrollUp button end -->
    <!-- Include javascript -->
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

    <div id="divUserChat" class="switch-version d-none d-md-block">
        <a href="user_chat2.aspx"><span class="switch-to mdb-jquery active"></span></a>
    </div>

    <!-- -->
    <footer id="staticChat" class="pull-right text-center footer hidden-xs">

        <div id="divarrow" style="font-family: cursive;" class="row">
            <div class="col-md-4">
                <img width="80" height="80" src="../images/gif/arrow_down.gif" />
            </div>
            <div class="col-md-8">
                <label style="text-align: left;">
                    ¿Alguna pregunta?
                </label>
                <label style="text-align: left;">
                    Estamos listos para ayudarte
                </label>
            </div>
        </div>
        <div class="chatTittle">
            Chat
            <i id="btnOpenChat" class="fa fa-caret-up pull-right" style="font-size: 24px"></i>
        </div>
        <div id="demo" style="background-color: white !important;" class="collapse">
            <div id="divOpenChat" miwo-name="name" class="form-group">
                <form style="padding: 10px;">
                    <div class="form-group">
                        <label style="color: black;">TIENES UNA CONSULTA?</label>
                    </div>
                    <div class="form-group">
                        <select id="selectFooterSex" style="height: 30px !important;" class="form-control">
                            <option value="0" label="Sexo" />
                            <option value="1" label="M" />
                            <option value="2" label="F" />
                        </select>
                    </div>
                    <div class="form-group">
                        <input id="footerNickName" autocomplete="off" type="text" style="height: 30px !important;" class="form-control" placeholder="nickname    ">
                    </div>
                    <div class="form-group">
                        <input id="footerAge" autocomplete="off" type="number" style="height: 30px !important;" class="form-control" placeholder="Edad" min="0" max="100">
                    </div>
                    <div class="form-group">
                        <select id="selectfooterCountry" style="height: 30px !important;" class="form-control">
                            <option value="0" label="NICARAGUA" />
                            <option value="1" label="COSTA RICA" />
                            <option value="2" label="EL SALVADOR" />
                            <option value="3" label="HONDURAS" />
                            <option value="4" label="PANAMA" />
                            <option value="5" label="BELICE" />
                        </select>
                    </div>
                    <input id="btnInitChat" type="button" style="background: #fbbbe0;" class="btn btn-primary" value="Iniciar Consulta" />

                </form>
            </div>
            <div id="divChat" style="display: none;" class="form-group">
                <div id="messages-card-container" style="display: none;" class="mdl-cell mdl-cell--12-col mdl-grid">

                    <!-- Messages container -->
                    <div id="messages-card" class="mdl-card mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet mdl-cell--12-col-desktop">
                        <div class="mdl-card__supporting-text mdl-color-text--grey-600">
                            <div style="overflow-y: auto; height: 230px;" id="messages">
                                <span id="message-filler"></span>
                            </div>

                            <form style="display: none;" id="image-form" action="#">
                                <input id="mediaCapture" type="file" accept="image/*,capture=camera">
                                <button id="submitImage" title="Add an image" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--amber-400 mdl-color-text--white">
                                    <i class="material-icons">image</i>
                                </button>
                            </form>
                        </div>
                    </div>

                    <div style="display: none;" id="must-signin-snackbar" class="mdl-js-snackbar mdl-snackbar">
                        <div class="mdl-snackbar__text"></div>
                        <button class="mdl-snackbar__action" type="button"></button>
                    </div>

                </div>
                <form id="message-form" action="#">
                    <input id="message" autocomplete="off" type="text" style="height: 30px !important; width: 70%; border-radius: 5px;" class="" placeholder="Mensaje">
                    <button id="submit" disabled type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
                        Enviar
                    </button>
                </form>
            </div>
        </div>
    </footer>

    <input id="inputClientName" type="hidden" value="" />

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
    </style>

    <script type="text/javascript">

        var dispositivo = navigator.userAgent.toLowerCase();
        if (dispositivo.search(/iphone|ipod|ipad|android/) > -1) {
            $("#videoPrincipal").hide();
            $("#staticChat").hide();
            $("#divUserChat").show();
        }
        else {
            $("#divUserChat").remove();
        }

        function BtnMenuClick() {
            $(".logo").toggle();
            $("#MenuCollapse").removeClass("MenuLeftCollapse").addClass("MenuSinLeftCollapse");
        }

        $(".itemMenu").click(function () {
            $(".logo").attr("style", "display:block");
        });

        $(".chatTittle").click(function () {

            if ($("#demo").hasClass("in")) {
                $("#divarrow").show();
                $("#demo").removeClass("in");
            }
            else {
                $("#divarrow").hide();
                $("#demo").addClass("in");
            }

        });

    </script>


</body>
</html>
