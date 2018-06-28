<%@ Page Language="C#" AutoEventWireup="true" CodeFile="abretumente.aspx.cs" Inherits="App_abretumente" %>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sexo Jovenes</title>
    <!-- Load Roboto font -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <!-- Load css styles -->


    <link rel="stylesheet" href="../css/bootstrap.css" />

    <link rel="stylesheet" type="text/css" href="../css/principal/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../css/principal/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="../css/principal/style.css" />
    <link rel="stylesheet" type="text/css" href="../css/principal/pluton.css" />

    <!--<link rel="stylesheet" type="text/css" href="css/jquery.cslider.css" />
    <link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css" />-->
    <link rel="stylesheet" type="text/css" href="../css/principal/animate.css" />
    <link rel="stylesheet" type="text/css" href="../css/principal/Estilos.css" />

    <!--<link rel="shortcut icon" href="images/ico/logo-2.png">-->
    <link rel="stylesheet" href="../css/landing-page.css" />
    <link rel="stylesheet" href="../Assest/font-awesome/css/font-awesome.min.css" />

    <style>
        p {
            color: #cb1d51;
        }

        h4 b {
            color: #cb1d51
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
                <input type="image" onclick="BtnMenuClick()" data-toggle="collapse" class="btn btn-navbar" src="images/ico/icon-menu.png" alt="Submit" data-target=".nav-collapse" width="40" height="40">
                <!-- Main navigation -->
                <div id="MenuCollapse" class="nav-collapse collapse MenuLeftCollapse">
                    <ul class="nav" id="top-navigation">
                        <li><a href="mepaso.aspx">A MI ME PASÓ</a></li>
                        <li class="active"><a class="itemMenu" href="#tips">DESCOTA TU MENTE - ABRE TU MENTE</a></li>
                        <li><a class="itemMenu" href="hablemos.aspx">MAMÁ, PAPÁ HABLEMOS DE SEXUALIDAD</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div id="tips" style="background-color: white;" class="section secondary-section">
        <div class="container" style="background-color: #fdf2fa;">
            <div style="border-bottom: 0px; padding: 0px;" class="title">
                <h1 style="color: #cb1d51">ABRE TU MENTE</h1>
            </div>

            <div class=" row col-md-12 col-lg-12">
                <style>
                    .fade-in {
                        opacity: 1;
                        animation-name: fadeInOpacity;
                        animation-iteration-count: 1;
                        animation-timing-function: ease-in;
                        animation-duration: 2s;
                    }

                    @keyframes fadeInOpacity {
                        0% {
                            opacity: 0;
                        }

                        100% {
                            opacity: 1;
                        }
                    }
                </style>
                <div style="word-wrap: break-word !important" class="card col-md-3 fade-in">
                    <div class="">
                        <h4 class="text-center" style="color: pink"><b>Mito</b></h4>
                        <p class="text-justify realidad">Mucha o demasiada información sobre Métodos Anticonceptivos  promueve el inicio temprano de las relaciones sexuales</p>
                    </div>
                    <div class="">
                        <h4 class="text-center" style="color: pink"><b>Realidad</b></h4>
                        <p class="text-justify realidad">
                            Si la información que nos están compartiendo  o que nos está llegando (por  cualquier medio) es basada en el temor...
                            <a href="#">Leer mas</a>
                        </p>
                    </div>
                </div>

                <div style="word-wrap: break-word !important" class="card col-md-3 fade-in">
                    <div class="">
                        <h4 class="text-center" style="color: pink"><b>Mito</b></h4>
                        <p class="text-justify realidad">La Masturbación te puede causar problemas de salud y puedes quedar loco</p>
                    </div>
                    <div class="">
                        <h4 class="text-center" style="color: pink"><b>Realidad</b></h4>
                        <p class="text-justify realidad">
                            La Masturbación no provoca daño alguno a la salud, ni física ni mental así te masturbes una, dos, tres, cuatro o más...
                            <a href="#">Leer mas</a>
                        </p>
                    </div>
                </div>

                <div style="word-wrap: break-word !important" class="card col-md-3 fade-in">
                    <div class="">
                        <h4 class="text-center" style="color: pink"><b>Mito</b></h4>
                        <p class="text-justify realidad">La Masturbación te puede causar problemas de salud y puedes quedar loco</p>
                    </div>
                    <div class="">
                        <h4 class="text-center" style="color: pink"><b>Realidad</b></h4>
                        <p class="text-justify realidad">
                            La Masturbación no provoca daño alguno a la salud, ni física ni mental así te masturbes una, dos, tres, cuatro o más...
                            <a href="#">Leer mas</a>
                        </p>
                    </div>
                </div>

            </div>

            <div class=" row col-md-12 col-lg-12">

                <div style="word-wrap: break-word !important" class="card col-md-3 fade-in">
                    <div class="">
                        <h4 class="text-center" style="color: pink"><b>Mito</b></h4>
                        <p class="text-justify realidad">Solamente los varones se masturban, es parte de su instinto y crianza masculina</p>
                    </div>
                    <div class="">
                        <h4 class="text-center" style="color: pink"><b>Realidad</b></h4>
                        <p class="text-justify realidad">
                            Tanto varones como mujeres se masturban; no es una práctica exclusiva de los varones ni es considerada como parte ...
                            <a href="#">Leer mas</a>
                        </p>
                    </div>
                </div>

                <div style="word-wrap: break-word !important" class="card col-md-3 fade-in">
                    <div class="">
                        <h4 class="text-center" style="color: pink"><b>Mito</b></h4>
                        <p class="text-justify realidad">En la primera relación sexual  no puedes quedar embarazada</p>
                    </div>
                    <div class="">
                        <h4 class="text-center" style="color: pink"><b>Realidad</b></h4>
                        <p class="text-justify realidad">
                            Claro que sí, puedes quedar embarazada en la primera, segunda, tercera o cualquier relación sexual que sea siempre y...
                            <a href="#">Leer mas</a>
                        </p>
                    </div>
                </div>

                <div style="word-wrap: break-word !important" class="card col-md-3 fade-in">
                    <div class="">
                        <h4 class="text-center" style="color: pink"><b>Mito</b></h4>
                        <p class="text-justify realidad">Hacer ejercicio físico es malo durante los días que te baja la regla (como comúnmente se le conoce)</p>
                    </div>
                    <div class="">
                        <h4 class="text-center" style="color: pink"><b>Realidad</b></h4>
                        <p class="text-justify realidad">
                            Hacer ejercicio físico durante estas en esos días en que te baja la regla es beneficioso para disminuir las molestias..
                            <a href="#">Leer mas</a>
                        </p>
                    </div>
                </div>




            </div>


        </div>
    </div>


    <div style="height: 50px;" class="row">
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

    <style>
        .card {
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            transition: 0.3s;
            margin-top: 3%;
            margin-left: 4%;
            margin-right: 4%;
        }

            .card:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }

        .realidad {
            color: #848283;
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

    </script>

</body>

</html>
