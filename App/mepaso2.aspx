<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mepaso2.aspx.cs" Inherits="App_mepaso" %>

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

        .navbar .nav > li:hover > a, .navbar .nav > .active > a, .navbar .nav > .active > a:hover, .navbar .nav > .active > a:focus {
            border: 0px;
            color: #da8eaa;
            background-color: transparent;
            transition: border-color 1s ease;
        }

        p > strong {
            color: black;
            font-family: cursive;
        }
    </style>

</head>

<body>
    <div style="background-color: #404042 !important;" class="ColorFondo navbar">
        <div class="ColorFondo navbar-inner" style="background-color: #404042 !important; width: 100%;">
            <div class="container">
                <a href="propuesta.aspx" class="">
                    <!-- This is website logo -->
                    <img src="../Images/logo.png" class="logo" width="120" height="40" alt="Logo">
                </a>
                <!-- Navigation button, visible on small resolution -->
                <input type="image" onclick="BtnMenuClick()" data-toggle="collapse" class="btn btn-navbar"
                    src="../Images/ico/icon-menu.png" alt="Submit" data-target=".nav-collapse" width="40" height="40">
                <!-- Main navigation -->
                <div id="MenuCollapse" class="nav-collapse collapse MenuLeftCollapse">
                    <ul class="nav" id="top-navigation">
                        <li class="active"><a href="#section1">A MI ME PASÓ</a></li>
                        <li><a class="itemMenu" href="abretumente2.aspx">DESCOTA TU MENTE - ABRE TU MENTE</a></li>
                        <li><a class="itemMenu" href="hablemos2.aspx">MAMÁ, PAPÁ HABLEMOS DE SEXUALIDAD</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div id="section1" style="background-color: white; background-image: url(../img/fondoamarillo.jpeg);" class="section secondary-section">
        <div style="background-color: white; padding: 20px;" class="container">
            <div style="border-bottom: 0px; padding: 0px;" class="title">
            </div>
            <div class="row-fluid">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div style="background-image: url(../img/amimepaso/woman.jpg); background-size: contain; background-repeat: no-repeat; background-position: center; width: 100%; height: 400px;" class="col-md-10 hidden-xs"></div>
                    <div style="background-image: url(../img/amimepaso/woman.jpg); background-size: contain; background-repeat: no-repeat; background-position: center; width: 100%; height: 200px;" class="col-md-10 hidden-lg hidden-md hidden-sm"></div>
                    <div class="col-md-1"></div>
                </div>
                <p style="text-align: justify; color: #848283;">&ldquo;Yo pensaba que era un simple juego entre mi novio y yo&hellip; nos mand&aacute;bamos fotos con poca ropa y nos dec&iacute;amos una que otra cosa, pero nunca pas&oacute; nada de sexo entre los dos. Al cabo de un tiempo nos separamos por inseguridades de &eacute;l&nbsp; y yo empec&eacute; a ser novia de otro muchacho, cuando &eacute;l se dio cuenta envi&oacute; las fotos que yo le hab&iacute;a mandado a muchos amigos del colegio y l&oacute;gicamente ellos empezaron a decirme cosas y algunos hasta dejaron de hablarme porque dec&iacute;an que sus padres le dijeron que yo no era buena influencia.&rdquo;</p>

                <p style="text-align: right;"><strong><span style="color: #ff9900;">&nbsp;</span>Experiencia de Sara</strong></p>
                <hr />

                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-5">
                        <div class="card">
                            <p style="text-align: justify; color: #848283;">&ldquo;A m&iacute; nunca me hablaron de sexualidad, ni en mi casa ni en el colegio&hellip; era algo que lo habl&aacute;bamos entre el grupo de amigos del colegio o de la cuadra y de forma poco adecuada porque para nosotros hablar de sexualidad era hablar de sexo y siempre pensamos que hablar de sexo era referirnos a tener relaciones sexuales&hellip; que equivocados est&aacute;bamos &hellip; lo hac&iacute;amos a escondidas porque los adultos nos dec&iacute;an que hablar de sexo, de sexualidad o alg&uacute;n otro tema que se le relacionara era malo y que no est&aacute;bamos en edad de saber de esas cosas.&rdquo;</p>
                            <p style="text-align: right;"><strong>Experiencia de&nbsp; Jos&eacute;</strong></p>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="card">
                            <p style="text-align: justify; color: #848283;">&ldquo;Tengo&nbsp; 17 a&ntilde;os y estoy cursando Quinto a&ntilde;o de secundaria. Hace 4 meses&nbsp; tuve mi primera relaci&oacute;n sexual con mi novio&hellip; yo no quer&iacute;a, pero &eacute;l me dijo que si no lo hac&iacute;amos dej&aacute;bamos de ser novios y yo no quiero perderlo, lo amo mucho.&nbsp; Cuando lo hicimos &eacute;l no us&oacute; cond&oacute;n ni yo planifiqu&eacute; de ninguna manera; afortunadamente no qued&eacute; embarazada, si hubiese quedado no se qu&eacute; hubiera hecho, mi familia se hubiese decepcionado de m&iacute; y no seguir&iacute;a estudiando. &Eacute;l quiere que lo volvamos a hacer pero no se c&oacute;mo decirle que esta vez usemos cond&oacute;n.&rdquo;</p>
                            <p style="text-align: right;"><strong>Experiencia de&nbsp; Raquel</strong></p>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                </div>

                <hr />

                <div class="row">
                    <div class="col-md-1"></div>
                    <div style="background-image: url(../img/amimepaso/men.jpg); background-size: contain; background-repeat: no-repeat; background-position: center; width: 100%; height: 400px;" class="col-md-10 hidden-xs"></div>
                    <div style="background-image: url(../img/amimepaso/men.jpg); background-size: contain; background-repeat: no-repeat; background-position: center; width: 100%; height: 200px;" class="col-md-10 hidden-lg hidden-md hidden-sm"></div>

                    <div class="col-md-1"></div>
                </div>
                <p style="text-align: justify; color: #848283;">&ldquo;Al colegio llegan unas se&ntilde;oras y se&ntilde;ores de no s&eacute; qu&eacute; organizaci&oacute;n (no&nbsp; recuerdo) a hablarnos de sexualidad pero cuando ellos est&aacute;n ah&iacute; nadie pregunta y cuando se van todos quedamos hablando de los temas entre nosotros mismos, nos preguntamos que es tal cosa o que es aquello otro y lo que hacemos es buscarlo en internet y encontramos la respuesta pero no una explicaci&oacute;n m&aacute;s profunda para quedar totalmente claros. Algunos de mis compa&ntilde;eros lo que hacen es participar de actividades que ellos hacen en su organizaci&oacute;n o en el colegio y son divertidas y nos ense&ntilde;an bastante. Cuando las actividades son fuera del colegio en horario inverso nos regalan condones y nos explican para que sirven y como se usan y eso es bueno, algunos de mis compa&ntilde;eros dicen que los usan y otros solo los guardan hasta que se vencen y los botan.&rdquo;</p>
                <p style="text-align: right;"><strong>Experiencia de&nbsp; Luis</strong></p>
                <hr />

                <div class="row">

                    <div class="col-md-1"></div>
                    <div class="col-md-3">
                        <div class="card">
                            <img style="width: 100%;" src="../img/amimepaso/raquel.jpg" />
                            <p style="text-align: justify; color: #848283;">&ldquo;En el tiempo en que nuestros padres fueron j&oacute;venes hablar de sexo era pecado. Le dije a mi mam&aacute; que quer&iacute;a preguntarle algunas cosas sobre el sexo y lo que hizo fue decirme que cuidadito con lo que andaba haciendo, que cuidado desgraciaba mi vida y sal&iacute;a embarazada, que si eso pasaba que ella no me iba a ayudar. Sinti&oacute; mucha desconfianza de m&iacute; a tal punto que no me puede ver con amigos varones porque se molesta. Actualmente tengo 16&nbsp; a&ntilde;os y cuando eso paso ten&iacute;a 14 a&ntilde;os.&rdquo;</p>
                            <p style="text-align: right;"><strong>Experiencia de&nbsp; Ileana</strong></p>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card">
                            <img style="width: 100%;" src="../img/amimepaso/maribel.jpg" />
                            <p style="text-align: justify; color: #848283;">&ldquo;Es dif&iacute;cil y penoso hablar de sexualidad, relaciones sexuales, condones, masturbaci&oacute;n, orientaciones sexuales&hellip; la gente que se da cuenta o te escucha te trata de morboso o de vulgar, te quedan viendo raro como si cometieras un pecado mortal y m&aacute;s a&uacute;n si sos mujer, porque nosotras las mujeres no debemos hablar de esos temas y si lo haces sos una ofrecida&nbsp; y m&aacute;s si sos adolescente. A m&iacute; me pas&oacute;&hellip; yo soy bien curiosa y preguntona y cuando hablo con mis amigas y amigos de estos temas y me escucha un adulto ya me dicen: Que chavala m&aacute;s vulgar, ya andas de caliente.&rdquo;</p>
                            <p style="text-align: right;"><strong>Experiencia de&nbsp; Maribel</strong></p>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card">
                            <img style="width: 100%;" src="../img/amimepaso/gabriel.jpg" />
                            <p style="text-align: justify; color: #848283;">&ldquo;Me llamo Gabriel,&nbsp; tengo 21 a&ntilde;os y estoy en tercer a&ntilde;o de mi carrera de Ingenier&iacute;a en Sistemas. Soy casado y tengo 2 hijos varones, uno de 5 a&ntilde;os y otro de 2 a&ntilde;itos pero son de distintas madres. Cuando tuve mi primera relaci&oacute;n sexual estaba en tercer a&ntilde;o de secundaria, fue con mi novia de ese entonces y no nos cuidamos, pero no cre&iacute; quedar&iacute;a embarazada a la primera; yo segu&iacute; estudiando pero ella se retir&oacute; y hasta hace unos a&ntilde;os retom&oacute; sus estudios. Hace&nbsp; tres a&ntilde;os yo conoc&iacute; a Massiel (mi actual esposa) con quien tengo mi &uacute;ltimo hijo somos felices pero no les niego que tener dos hijos siendo tan joven es dif&iacute;cil porque no solo es comprarles la leche, sino ropa, zapatos, llevarlos al doctor cuando enferman&nbsp; y somos de escasos recursos y a veces no alcanza para todo y uno debe escoger que debe priorizar.&rdquo;</p>
                            <p style="text-align: right;"><strong>Experiencia de&nbsp; Gabriel</strong></p>
                        </div>
                    </div>

                </div>
            </div>
            <hr />

            <div class="row">
                <div class="col-md-1"></div>

                <div class="col-md-5">
                    <div class="card">

                        <p style="text-align: justify; color: #848283;">&ldquo;Me encanta tener sexo a como a todos los hombres pero no me gusta usar cond&oacute;n, no siento lo mismo es como comerse un Eskimo con todo y envoltura, pero tengo que usarlo para protegerme a m&iacute; mismo. Cuando ten&iacute;a 18 a&ntilde;os adquir&iacute; una ITS por tener sexo con una mujer mayor que yo, afortunadamente se pudo curar, fue una situaci&oacute;n traum&aacute;tica y muy dolorosa para m&iacute;, pero desde entonces el doctor me recomend&oacute; que debo usar cond&oacute;n siempre aunque conozca a la otra persona, as&iacute; me protejo de una ITS o de que ella quede embarazada.&rdquo;</p>
                        <p style="text-align: right;"><strong>Experiencia de&nbsp; Rub&eacute;n</strong></p>

                    </div>
                </div>
                <div class="col-md-5">
                    <div class="card">
                        <p style="text-align: justify; color: #848283;">&ldquo;Me llamo Jonathan y tengo 22 a&ntilde;os. Hace unos cinco a&ntilde;os inici&eacute; a tener sexo, lo malo es que lo tuve con varias personas unas de mi edad y otras mayores que yo; a&uacute;n no se quien fue pero me contagiaron de Sida, bueno mas bien de VIH, me di cuenta porque&nbsp; a la universidad llegaron a hacer unas pruebas r&aacute;pidas de VIH y con mi grupo de amigos decidimos ir a hac&eacute;rnosla, mi susto fue cuando la persona que me dio los resultados me hablo de muchas cosas y se dilat&oacute; m&aacute;s conmigo que con mis amigos. Cuando vi el resultado no lo cre&iacute;a y me indic&oacute; un lugar para hacerme una prueba confirmatoria y as&iacute; lo hice y sali&oacute; positiva; a&uacute;n es dif&iacute;cil para m&iacute; aceptarlo pero estoy en tratamiento.&rdquo;</p>
                        <p style="text-align: right;"><strong>Experiencia de&nbsp; Jonathan</strong></p>

                    </div>
                </div>
                <div class="col-md-1"></div>

            </div>
        </div>
    </div>

    <div id="section2"></div>
    <div id="section3"></div>

    <script src="../js/principal/jquery.js"></script>
    <!-- -->

    <script type="text/javascript" src="../js/principal/jquery.mixitup.js"></script>
    <script type="text/javascript" src="../js/principal/bootstrap.js"></script>
    <!--<script type="text/javascript" src="js/principal/modernizr.custom.js"></script>-->
    <script type="text/javascript" src="../js/principal/jquery.bxslider.js"></script>
    <script type="text/javascript" src="../js/principal/jquery.cslider.js"></script>
    <script type="text/javascript" src="../js/principal/jquery.placeholder.js"></script>
    <script type="text/javascript" src="../js/principal/jquery.inview.js"></script>

    <script type="text/javascript" src="../js/principal/app.js"></script>
    <script src="../js/principal/plugins/swiper.min.js"></script>

    <script type="text/javascript">

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
