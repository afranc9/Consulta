<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hablemos.aspx.cs" Inherits="App_hablemos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            color: #848283;
        }

        h4 b {
            color: #cb1d51
        }

        h2, h3 {
            color: #cb1d51;
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
                        <li><a class="itemMenu" href="#tips">DESCOTA TU MENTE - ABRE TU MENTE</a></li>
                        <li class="active"><a class="itemMenu" href="hablemos.aspx">MAMÁ, PAPÁ HABLEMOS DE SEXUALIDAD</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div id="tips" style="background-color: white;" class="section secondary-section">
        <div class="container" style="background-color: #fdf2fa;">
            <h2>¿Qué Onda?</h2>

            <h3>Mamá… Papá hablemos de Sexualidad
            </h3>

            <p>En la actualidad nuestros hijos e hijas al tener dudas sobre sexualidad recurren al sitio donde por excelencia encuentran información sobre cualquier aspecto que necesitan conocer… el internet;  sin embargo éste no es el responsable de educarlos sexualmente.</p>

            <p>Es responsabilidad de los padres compartir con sus hijos e hijas información sobre los temas de sexualidad de acuerdo a la etapa de vida que están pasando; es necesario hablarles sobre los cambios que tendrá su cuerpo y aclarar dudas que ellos tengan sobre ese tema en específico u otro del cual ellos necesiten conocer.</p>

            <p>Aún en la cultura Nicaragüense la comunicación padres e hijos/as es limitada y en algunos casos es nula. No se ha establecido un ambiente de confianza el cual permita que  los hijos e hijas se acerquen sin temor o vergüenza  a sus padres y preguntarles: Mamá, papá ¿Qué es el sexo? ¿Por qué  mi cuerpo está cambiando? Y cuando esto sucede en lugar de aperturar una conversación natural y espontánea sobre el tema más bien mostramos un rostro de susto,  nos escandalizamos  y cortamos de raíz la conversación; esto se debe a que en la mayoría de los casos nos atemoriza hablarles abiertamente a nuestros hijos e hijas sobre sexualidad porque nos imaginamos que nos preguntarán sobre relaciones sexuales y querrán experimentarlas, otras veces nuestro temor radica en que no tenemos las respuestas a sus interrogantes.</p>

            <p>Muchas familias piensan que el papá es el responsable de educar sexualmente al hijo y la mamá a la hija; no negamos es un poco más sencillo debido  a la identificación de género que existe, pero ¿Qué sucede en aquellas familias donde la mamá  (y en  algunos casos el papá) cumple el rol de padre y madre? En este ejemplo le corresponde a la madre orientar sexualmente al hijo o al padre a la hija y estar preparados para cualquier interrogante que tengan y que ellos sientan que tienen la confianza con sus padres de preguntarles cualquier cosa o contarles alguna experiencia que están pasando.</p>

            <p>Es importante que de una vez por todas nosotros como padres asumamos la responsabilidad de educar y orientar sexualmente de manera adecuada a nuestros hijos e hijas, si no lo hacemos ¿Dónde creen ustedes que van a averiguar lo que desean saber? ¿Quién les dará la información? ¿Será ésta información la  adecuada o correcta?  </p>

            <p>Te invitamos a conversar con tu familia en un ambiente respetuoso, abierto, cálido y de confianza en donde puedas aclarar dudas de manera conjunta.</p>
            <p>Aquí te dejo algunas reflexiones que debes tener en cuenta al momento de abordar temas de sexualidad con tus hijos e hijas.</p>


            <p>Te pedimos que primero te respondas esta pregunta<b>¿Por qué no hablamos de sexualidad en la familia?</b></p>

            <p>Hay que reconocer que nuestros hijos e hijas al entrar a la etapa de la adolescencia comienzan a tener mucha curiosidad en los temas sexuales, pero no es en nosotros sus padres y madres en quienes buscan aclarar esas inquietudes y dudas. Normalmente a nuestros hijos e hijas les gana el miedo, el temor y la vergüenza para hacernos preguntas de aspectos sexuales, porque piensan que no les responderemos adecuadamente o hasta les castigaremos por andar preguntando “ese tipo de cosas”; pero precisamente por no hacernos sus preguntas es que hay embarazos a temprana edad, abusos sexuales  y más adolescentes y jóvenes con ITS o VIH.</p>
            <p>Como padre o madre nos asusta el hecho de no tener respuesta a las interrogantes de nuestros hijos e hijas; esto es producto de la desinformación que nosotros mismos tenemos sobre el tema, pero aun estando conscientes de esta situación no buscamos como aumentar nuestros conocimientos para ayudar y orientar adecuadamente a nuestros hijos e hijas y es más cómodo dejar esa responsabilidad en otras personas o que ellos mismos busquen la información por los medios que sea.</p>
            <p>Si en el núcleo familiar no se habla abiertamente de sexualidad es porque a nosotros no nos enseñaron a hacerlo, porque pensamos que de eso no se debe hablar y que nuestros hijos e hijas no están en edad de saber de esas cosas. Pregúntate ¿Cuándo tendrán la edad para conocer  de sexualidad?</p>
            <p>¡Tranquilos! Hoy en día existen un sinnúmero de libros, revistas y sitios web especializados (como este ¿Qué Onda?) en donde puedes aclarar tus interrogantes y despejar tus dudas, ya sea leyendo la información que te brindamos o conversando en línea con nuestros especialistas quienes te darán la orientación más adecuada en base a tu necesidad y te indicarán como puedes abordar con tus hijos e hijas estos temas, convirtiéndote en sus mejores amigos.</p>
            <p>Este sitio web te permite que puedas aprender de sexualidad a la par de tus hijos e hijas, lo importante es estar atento a sus inquietudes y responderlas de manera honesta y sincera.</p>
            <p>
                Has pensado <b>¿Qué harías si encuentras a tu hijo o hija masturbándose?</b>


                <p>Imagino que sería un tremendo shock para ti, pero prepárate que eso puede suceder y debes estar listo para brindarle la orientación pertinente.</p>
                <p>Lo primero que debes hacer es no alarmarte, ni castigarlos…. Respira profundo y busca el momento más adecuado para hablar del tema. Inicia diciendo que tu entiendes la etapa por la que está pasando (adolescencia o juventud) y que tú  también la viviste, que tuviste dudas, inquietudes y que experimentaste, que es algo normal y que no es malo.</p>
                <p>Explica que la adolescencia es una etapa de muchos cambios, deseos, anhelos y sueños. Diles que en esta etapa es normal querer conocer su cuerpo y que la masturbación es una de las maneras de hacerlo desde uno/a mismo/a. La masturbación no es más que la autoestimulación a los órganos genitales provocando sensaciones agradables.</p>
                <p>Es importante al conversar con ellos recomendarles que si van a masturbarse lo hagan en privado, con las manos limpias y sin prisa. Hay que hacerles ver que la masturbación es un acto común en la adolescencia y juventud pero que es algo natural en cualquier edad, aclárales que un adulto también puede masturbarse y no hay problema siempre y cuando lo haga en privado y esto no afecte o perjudique a terceros.</p>
                <p>Invita a tu hijo o hija a buscar información sobre la masturbación y que la comparta contigo para aumentar sus conocimientos de manera conjunta. Si tienen alguna interrogante puedes conversar con nuestros especialistas en línea activando la opción de Chat que te presenta este sitio web.</p>
                <p>¿Estás preparado si te das cuenta que tu hija o hijo tiene novio/a?</p>
                <p>Mostrar interés afectivo o emocional por personas del sexo opuesto es algo más que normal no solo en la adolescencia o juventud también en la etapa adulta; lo que sucede es que en la adolescencia es más emocionante porque muchas veces lo haces a escondidas de tus padres queriendo mantener ese acercamiento amoroso en secreto.</p>
                <p>Como padres nos daremos cuenta cuando nuestro hijo o hija está en una relación amorosa por todos los cambios que estos tendrán, no te asustes si te dicen: mamá ¿Puedo invitar a un compañero/a  a la casa? Y tú ingenuamente le dirás: claro que sí, pero con el tiempo te darás cuenta que ese/a compañero/a es algo más que su amigo/a ; en ese momento es pertinente y significativo respetar los sentimientos de tu hijo o hija pero también debes hablar con ellos y acordar normas, compromisos y valores para que tengan en cuenta en su relación amorosa.</p>
                <p>Debes reconocer el momento más adecuado para abordar temas sexuales con tu hijo o hija más ahora que sabes que está en una relación amorosa. Debes ser inteligente, invita a la pareja de tu hijo o hija a tu casa y aprende a conocerle, saber que le gusta o le disgusta, pero sobre todo entabla una relación con ellos basada en el respeto y la confianza ante su relación.</p>
                <p>¿Estarías dispuesto/a a prohibirle a tu hijo o hija a tener relaciones sexuales? ¿Cómo la harías?</p>
                <p>Lo sé, no tienes ni idea de cómo puedes prohibirle eso a tus hijos,  solo de pensarlo te asusta, te da escalofríos. Debes estar claro que tu hijo o hija no te pedirá permiso para tener relaciones sexuales; tú tampoco lo hiciste con tus padres. Siempre existirá el miedo de tus hijos de ser castigados si te llegas a enterar que ya iniciaron su vida sexual. </p>
                <p>No lo puedes prohibir ya que esa es una decisión que depende única y exclusivamente de tus hijos, así como en su momento tú también lo decidiste. Lo que debes hacer es brindarles toda la información pertinente al respecto; debes enfatizar en el hecho que iniciar la vida sexual es una gran responsabilidad y si no te proteges adecuadamente puedes quedar o dejar embarazada a tu pareja y si eso sucede su desarrollo personal y profesional se verá limitado ya que tendrán que asumir responsabilidades de padres. Lo importante es informarlos ante de que suceda para que al momento que decidan tener relaciones sexuales lo hagan de forma responsable y libre de prejuicios.</p>
                <p>Otro aspecto del cual se debe abordar con nuestros hijos e hijas si sospechamos que ya están teniendo relaciones sexuales son las Infecciones de Transmisión Sexual y el VIH. Hay que hablar con ellos y ellas sobre la importancia de usar condones, las ventajas y desventajas que presentan, pero sobre todo orientarles qué deben hacer si sospechan que han adquirido una ITS y si es así no le digas ¡Te lo dije!... apóyalos y acompáñalos en el camino.</p>
                <p>Recuérdales que nadie puede obligarlos  a tener relaciones sexuales sin su consentimiento o bajo chantaje o amenazas, si lo hacen es violencia sexual y es una violación a tus derechos humanos, sexuales y reproductivos. </p>
                <p>Enseña a tus hijos a nunca presionar u obligar a su novia a tener relaciones sexuales y si lo hace debe asumir las consecuencias de sus actos.  Y a tus hijas a no dejarse presionar por nadie para tener relaciones sexuales y denunciar este tipo de actos.</p>
                <p>Piensa por un momento  ¿Estoy preparado como padre o madre para cuando mi hijo o hija me pregunte sobre métodos anticonceptivos? ¿Qué le responderé?</p>
                <p>Realmente es algo abrumador, no estoy preparado/a para ese momento y no sabría que responderle.</p>
                <p>Te entiendo, es normal tener miedo ante ese momento pero es hora que te prepares para estar listo/a y aclarar sus dudas. Los anticonceptivos no muerden….</p>
                <p>Podemos caer en el error de pensar que si le damos mucha información a nuestros hijos e hijas sobre métodos anticonceptivos estamos empujándolos o incitándolos a que tengan relaciones sexuales y a llevar una vida de libertinaje sexual. No pienses eso, piensa que los estas educando para que vivan una vida plena  sin preocupaciones por un embarazo no deseado.</p>
                <p>Tener información oportuna sobre métodos anticonceptivos  no es empujarlos a una vida sexual inmediata o frecuente, es crearles conciencia de los riegos que conlleva una relación sexual sin protección y las responsabilidades que trae un embarazo no deseado. La información les permite a nuestros hijos e hijas tomar decisiones,  entre estas si van a tener relaciones sexuales, que método usar y cómo usarlo.</p>
                <p>Como padres y madres no basta solo con informar a nuestros hijos e hijas sobre los diferentes métodos anticonceptivos, si no también hay que enseñarles donde conseguirlos y si lo van hacer que sea sin vergüenza, temor o prejuicios.</p>
                <p>Ojo, enseña a tus hijos e hijas que la decisión de usar métodos anticonceptivos es de dos… deben involucrar a su pareja. Acá te dejamos información sobre los diferentes métodos anticonceptivos, su uso, ventajas y desventajas. Dar Clic aquí (Link de la temática de Métodos Anticonceptivos).</p>

                <p>Te imaginas ¿Qué harías si tu hijo o hija es acosado/a sexualmente?</p>
                <p>Es una situación que piensas que nunca le pasará a tus hijos o hijas, pero adivina que… puede suceder y las  consecuencias pueden ser muy negativas.</p>
                <p>Hay que enseñarles a nuestros hijos e hijas el respeto por su propio cuerpo y el del otro, no deben dejar que ninguna persona sobre todo si es mayor que ellos los toquen aunque les diga que es por afecto o cariño. Si alguien los toca (manosea) orientales que deben decirte de inmediato sin ningún temor o miedo.</p>
                <p>Debes estar muy atento si tu hijo o hija cambia de la noche a la mañana, sobre todo si siempre ha sido un adolescente activo y alegre y de pronto se convierte en alguien introvertido y de semblante triste.</p>
                <p>La mayoría de veces el acoso sexual se da por personas muy cercanas al núcleo familiar (amigos, vecinos, compañeros, parientes etc.), en este aspecto es importante que tus hijos sepan que deben hablar sobre la situación que están pasando y contártelo inmediatamente a ti que eres su padre o su madre para que puedas apoyarlos.</p>
                <p>Cuando hay acoso sexual hay amenazas para no dar a conocer la situación a sus padres, además el o la adolescente siente culpa y vergüenza por pensar que ellos propiciaron dicho acto. Cuando tu hijo o hija te diga que está pasando por una situación de acoso sexual créele, confía, apóyale y sobre todo toma acciones inmediatas para detener dicha situación encarando directamente al agresor y haciendo  uso del acceso y derecho a la justicia.</p>
                <p>Si tu hijo o hija fue víctima de acoso sexual te recomendamos que busques apoyo psicológico para ti y tu hijo o hija. </p>
                <p>Si quieres conversar sobre el tema y obtener más información al respecto puedes usar el servicio de Chat que te presenta este sitio web, solamente debes registrar tus datos previamente para llevar un registro de las visitas recibidas.  </p>
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
