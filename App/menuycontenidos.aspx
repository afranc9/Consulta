<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menuycontenidos.aspx.cs" Inherits="App_menuycontenidos" %>

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

    <style>
        strong {
            color: #cb1d51
        }

        p {
            color: black;
            background-color: transparent;
        }

        ol li {
            color: black;
        }

        ul li {
            color: black;
        }

        h2 span {
            color: black;
            background-color: transparent;
        }
        h2 {
            color: black;
            font-size: 1rem;
        }
    </style>

</head>

<body>
    <div class="ColorFondo navbar">
        <div class="ColorFondo navbar-inner" style="width: 100%;">
            <div class="container">
                <a href="index.aspx" class="">
                    <!-- This is website logo -->
                    <img src="../images/logo.png" class="logo" width="120" height="40" alt="Logo">
                </a>
                <!-- Navigation button, visible on small resolution -->
                <input type="image" onclick="BtnMenuClick()" data-toggle="collapse" class="btn btn-navbar" src="../images/ico/icon-menu.png" alt="Submit" data-target=".nav-collapse" width="40" height="40">
                <!-- Main navigation -->
                <div id="MenuCollapse" class="nav-collapse collapse MenuLeftCollapse">
                    <ul class="nav" id="top-navigation"></ul>
                </div>
            </div>
        </div>
    </div>

    <div id="section1" style="background-color: white;" class="section secondary-section">
        <div style="background-color: #fdf2fa; padding: 20px;" class="container">
            <div style="border-bottom: 0px; padding: 0px;" class="title">
                <h1 id="titulo" style="color: #cb1d51"></h1>
            </div>

            <hr />
            <div id="divcontenido"></div>
        </div>
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

    <script type="text/javascript">

        window.onload = function () {
            $(".nav").append('<li class="active" ><a onclick="GetThemeById(1)" href="#">EMBARAZO</a></li>');

            $(".nav").append('<li class="dropdown"> ' +
                '<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">MI CUERPO</a>' +
                '<ul class="dropdown-menu">' +
                '<li><a onclick="GetThemeById(2)" href="#">MI CUERPO ESTÁ CAMBIANDO</a></li>' +
                '<li><a onclick="GetThemeById(3)" href="#">POR QUE ME QUEIERO ME CUIDO</a></li>' +
                '</ul>' +
                '</li>');

            $(".nav").append('<li class="dropdown"> ' +
                '<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">SEXO</a>' +
                '<ul class="dropdown-menu">' +
                '<li><a onclick="GetThemeById(4)" href="#">HABLEMOS Y CONOZCAMOS LAS ITS</a></li>' +
                '<li><a onclick="GetThemeById(5)" href="#">INTERNET Y LAS RELACIONES SEXUALES</a></li>' +
                '<li><a onclick="GetThemeById(6)" href="#">MÉTODOS ANTICOCEPTIVOS UNA RESPONSABILIDAD DE ELLAS Y ELLOS</a></li>' +
                '<li><a onclick="GetThemeById(7)" href="#">MI PRIMERA VEZ</a></li>' +
                '<li><a onclick="GetThemeById(8)" href="#">SEXO O RELACIONES SEXUALES</a></li>' +
                '<li><a onclick="GetThemeById(9)" href="#">VIH Y SIDA, UNA REALIDAD EN NICARAGUA</a></li>' +
                '</ul>' +
                '</li>');

            $(".nav").append('<li class="dropdown"> ' +
                '<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">SEXUALIDAD</a>' +
                '<ul class="dropdown-menu">' +
                '<li><a onclick="GetThemeById(10)" href="#">DIVERSIDAD SEXUAL</a></li>' +
                '<li><a onclick="GetThemeById(11)" href="#">HAS SENTIDO PLACER ALGUNA VEZ</a></li>' +
                '<li><a onclick="GetThemeById(12)" href="#">MIS DERECHOS SEXUALES Y DERECHOS REPRODUCTIVOS</a></li>' +
                '<li><a onclick="GetThemeById(13)" href="#">SEXUALIDAD, SEXO Y GÉNERO</a></li>' +
                '</ul>' +
                '</li>');

            $(".nav").append('<li><a onclick="GetThemeById(14)" href="#">VIOLENCIA</a></li>');

             GetThemeById(1);
        }

        function GetThemeById(idTheme) {

                $.ajax({
                    type: "POST",
                    url: "menuycontenidos.aspx/GetThemeById",
                    data: "{pIdTheme: '"+idTheme+"'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (result) {
                        console.log(result)
                        $.each($.parseJSON(result.d), function (k, v) {

                            $("#divcontenido").html(v.contenido);

                        });

                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        console.log(thrownError);
                    }
                });
        }


        function BtnMenuClick() {
            $(".logo").toggle();
            $("#MenuCollapse").removeClass("MenuLeftCollapse").addClass("MenuSinLeftCollapse");
        }

        $(".itemMenu").click(function () {
            $(".logo").attr("style", "display:block");
        });

    </script>


</body>

</html>
