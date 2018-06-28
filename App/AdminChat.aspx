<%@ Page Title="" Language="C#" MasterPageFile="~/App/App.master" AutoEventWireup="true" CodeFile="AdminChat.aspx.cs" Inherits="App_AdminChat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    

    <div class="row">
        <!-- Header section containing logo -->
        <header style="display:none;" class="mdl-color-text--white mdl-color--light-blue-700">
            <div class="mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet mdl-grid">
                <div class="mdl-layout__header-row mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet mdl-cell--12-col-desktop">
                </div>
                <div id="user-container">
                    <div hidden id="user-pic"></div>
                    <div hidden id="user-name"></div>
                    <button hidden id="sign-out" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-color-text--white">
                        Sign-out
                    </button>
                    <button hidden id="sign-in" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-color-text--white">
                        <i class="material-icons">account_circle</i>Sign-in with Google
                    </button>
                </div>
            </div>
        </header>
    </div>

    <div style="margin:5%; margin-bottom:0px;" class="row">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="row">    
                    <div class="col-lg-2 col-md-2 col-sm-2">
                        <h3 class=" text-primary">Chats</h3>
                        <hr style="color: #0056b2;" />
                        <div id="divPendingChat" class="chat-sidebar">

                        </div>
                    </div>
                    <div class=" col-lg-8 col-md-8 col-sm-8">
                        <!--<div id="DivChatCon" class="panel-heading">Mi chat</div>-->
                        <div class="panel-body">
                            <div id="messages-card" class="mdl-shadow--2dp col-md-12">
                                <div class="mdl-card__supporting-text mdl-color-text--grey-600">

                                    <div style=" height:300px; max-height: 300px !important; overflow-y: auto !important;" id="messages">
                                        <span id="message-filler"></span>
                                    </div>

                                    <form id="message-form" action="#">

                                        <%--<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">--%>
                                            <input id="message" autocomplete="off" type="text" style="height: 30px !important;width: 70%;border-radius: 5px;" class="" placeholder="Mensaje">   
                                            <%--<label class="mdl-textfield__label" for="message">Mensaje...</label>--%>

                                        <%--</div>--%>
                                        <button id="submit" disabled type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Enviar</button>

                                    </form>
                                    <form style="display:none;" id="image-form" action="#">

                                        <input id="mediaCapture" type="file" accept="image/*,capture=camera">
                                        <button id="submitImage" title="Add an image" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--amber-400 mdl-color-text--white">

                                            <i class="material-icons">imagen</i>
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2">
                        <h3 class=" text-primary">Mis Chats</h3>
                        <hr style="color: #0056b2;" />
                        <div id="divMyChats" class="myOpenChats">

                        </div>
                    </div>

                </div>
            </div>
        </div>

        </div>
       

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">

    <script>
        var currentName = "Doctor";


        // Initialize Firebase
        var config = {
            apiKey: "AIzaSyAiOfklEL24X3TkgN_wOdJDNiHsVhmAKbI",
            authDomain: "chatsxseguro.firebaseapp.com",
            databaseURL: "https://chatsxseguro.firebaseio.com",
            projectId: "chatsxseguro",
            storageBucket: "chatsxseguro.appspot.com",
            messagingSenderId: "108611669195"
        };
        firebase.initializeApp(config);

        window.onload = function () {
            
            window.friendlyChat = new FriendlyChat();

            CargarNodoPrincipal();
        };

    </script>

    <style type="text/css">

        div#DivChatCon {
            background-color: green;
            color: white;
        }

        .bocadilloarriba {
        padding: 10px;
        width: 220px;
        border-radius: 10px;
        background-color: #f5f7f5;
        font-family: "trebuchet ms", tahoma, verdana, sans­serif;
        font-size: 1.4em;
        border-color: black;
        border-width: 1px;
        border-style: solid;
        }

    </style>

</asp:Content>

