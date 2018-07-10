<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

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

<body>
    <div class="ColorFondo navbar">
        <div class="ColorFondo navbar-inner" style="width: 100%;">
            <div class="container">
                <a href="#" class="">
                    <!-- This is website logo -->
                    <img src="../Images/logo.png" class="logo" width="120" height="40" alt="Logo">
                </a>
                <!-- Navigation button, visible on small resolution -->
                <input type="image" onclick="BtnMenuClick()" data-toggle="collapse" class="btn btn-navbar" src="../Images/ico/icon-menu.png" alt="Submit" data-target=".nav-collapse" width="40" height="40">
                <!-- Main navigation -->
                <div id="MenuCollapse" class="nav-collapse collapse MenuLeftCollapse">
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
                </div>
            </div>
        </div>
    </div>
    <!-- Start home section -->
    <div id="busqueda" style="background: rgba(255,255,255,0.7) !important;">
        <header class="masthead text-white text-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 mx-auto">
                        <h1 class="mb-5">Envíanos tu consulta</h1>
                    </div>
                    <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
                        <div class="form-row">
                            <div class="span2">
                            </div>
                            <div class="span8">
                                <input type="text" class="form-control form-control-lg" placeholder="Ingresa tu pregunta...">
                            </div>
                            <div class="span2">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </div>

    <div style="background-color: white" class="section primary-section" id="videos">
        <div class="container">
            <!-- Start title section -->
            <div style="border-bottom: 0px; padding: 0px;" class="title">
                <h1 style="color: #cb1d51">Videos</h1>
            </div>

            <div class="row-fluid">
                <div class="span12">
                    <div class="thumbnail">
                        <div id="videoPrincipal" class="playicon" style="height: 500px;">
                            <iframe width="100%" height="500" src="https://www.youtube.com/embed/aBYAByd38m0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                            <!--<div class="transparentplayicon"></div><div class="D-TituloVideosListas"></div>-->
                        </div>
                    </div>
                </div>
            </div>
            <div style="margin-top: 20px;" class="row-fluid">
                <div class="span3">
                    <div class="thumbnail">
                        <div class="playicon" style="height: 200px;">
                            <iframe width="100%" height="200px" src="https://www.youtube.com/embed/VmfqHxRtFOc" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                            <!--<div class="transparentplayicon"></div><div class="D-TituloVideosListas"></div>-->
                        </div>
                    </div>
                </div>
                <div class="span3">
                    <div class="thumbnail">
                        <div class="playicon " style="height: 200px;">
                            <iframe width="100%" height="200" src="https://www.youtube.com/embed/xQvsnOFSpXk" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                            <!--<div class="transparentplayicon"></div><div class="D-TituloVideosListas"></div>-->
                        </div>
                    </div>
                </div>
                <div class="span3">
                    <div class="thumbnail">
                        <div class="playicon " style="height: 200px;">
                            <iframe width="100%" height="200" src="https://www.youtube.com/embed/grtG_-9YoCI" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                            <!--<div class="transparentplayicon"></div><div class="D-TituloVideosListas"></div>-->
                        </div>
                    </div>
                </div>
                <div class="span3">
                    <div class="thumbnail">
                        <div class="playicon " style="height: 200px;">
                            <iframe width="100%" height="200" src="https://www.youtube.com/embed/4wt97dyB9X4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                            <!--<div class="transparentplayicon"></div><div class="D-TituloVideosListas"></div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="tips" style="background-color: #fdf2fa;" class="section secondary-section">
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
                            <div class="contendorTip card text-center">
                                <div class="card-body" style="background-color: pink;">
                                    <h5 class="card-title">Di no a la violencia.</h5>
                                    <p class="card-title textTip">No tengas miedo de denunciar.</p>
                                </div>
                                <div class="card-footer colorNumberTip text-muted">
                                    #1
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
                            <div class="contendorTip card text-center">
                                <div class="card-body" style="background-color: pink;">
                                    <h5 class="card-title">Di no a la violencia.</h5>
                                    <p class="card-title textTip">No tengas miedo de denunciar.</p>
                                </div>
                                <div class="card-footer colorNumberTip text-muted">
                                    #1
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
                            <div class="contendorTip card text-center">
                                <div class="card-body" style="background-color: pink;">
                                    <h5 class="card-title">Di no a la violencia.</h5>
                                    <p class="card-title textTip">No tengas miedo de denunciar.</p>
                                </div>
                                <div class="card-footer colorNumberTip text-muted">
                                    #1
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
                            <div class="contendorTip card text-center">
                                <div class="card-body" style="background-color: pink;">
                                    <h5 class="card-title">Di no a la violencia.</h5>
                                    <p class="card-title textTip">No tengas miedo de denunciar.</p>
                                </div>
                                <div class="card-footer colorNumberTip text-muted">
                                    #1
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
                            <div class="contendorTip card text-center">
                                <div class="card-body" style="background-color: pink;">
                                    <h5 class="card-title">Di no a la violencia.</h5>
                                    <p class="card-title textTip">No tengas miedo de denunciar.</p>
                                </div>
                                <div class="card-footer colorNumberTip text-muted">
                                    #1
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
                            <div class="contendorTip card text-center">
                                <div class="card-body" style="background-color: pink;">
                                    <h5 class="card-title">Di no a la violencia.</h5>
                                    <p class="card-title textTip">No tengas miedo de denunciar.</p>
                                </div>
                                <div class="card-footer colorNumberTip text-muted">
                                    #1
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

    <div id="consulta" style="background: rgba(255,255,255,0.7) !important;">
        <header class="consulta text-white text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="ContainerForm col-md-3">
                        <form>
                            <div class="form-group">
                                <label>TIENES UNA CONSULTA?</label>
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
                            <button type="submit" style="background: #fbbbe0; padding: 20px;" class="btn btn-primary">Iniciar consulta</button>
                        </form>
                    </div>
                    <div class="col-md-8"></div>
                </div>
            </div>
        </header>
    </div>

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
        <a href="user_chat.aspx"><span class="switch-to mdb-jquery active"></span></a>
    </div>

    <!-- -->
    <footer id="staticChat" class="pull-right text-center footer hidden-xs">

        <div id="divarrow" style=" color:black; font-family: cursive; background-color: transparent !important;" class="row">
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
            <span style="font: 20px Helvetica,Arial,sans-serif;">En Linea</span>
            <i id="btnOpenChat" class="fa fa-angle-up pull-right" style="font-size: 24px; padding-right: 5px;"></i>
            <i id="btnCloseChat" class="fa fa-close pull-right" style="display:none; font-size: 24px; padding-right: 5px;"></i>
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

                            <form  id="image-form" action="#">
                                <input style="display:none;" id="mediaCapture" type="file" accept="image/*,capture=camera">
                                <button style="display:none;" id="submitImage" title="Add an image" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--amber-400 mdl-color-text--white">
                                    <i id="icon_image" class="material-icons">image</i>
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
                    <input id="message" autocomplete="off"
                         type="text" style="height: 30px !important; width: 63%; border-radius: 5px;" class="" placeholder="Mensaje">
                    <button id="submit" disabled type="submit" 
                         style="width:15%; display:none;"
                        class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
                        Enviar
                    </button>
                    <img id="imgSend" src="../images/send.png" alt="Enviar"
                         style="width:15%;"
                         height="42" width="42">

                    <img id="imgCamera" src="../images/ic_camera.png" alt="Photo"
                         style="width:15%;"
                         height="42" width="42">
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
                $("#btnCloseChat").hide();
                $("#btnOpenChat").show();
            }
            else {
                $("#divarrow").hide();
                $("#demo").addClass("in");
                $("#btnCloseChat").show();
                $("#btnOpenChat").hide();
            }

        });
        $("#imgCamera").click(function(){
            $("#icon_image").trigger("click");
        });
        $("#imgSend").click(function () {
            $("#submit").trigger("click");
        });
    </script>




</body>

</html>
