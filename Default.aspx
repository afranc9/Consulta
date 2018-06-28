<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <title>SISTEMA</title>

      <!-- Tell the browser to be responsive to screen width -->
      <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />

      <!-- Bootstrap 3.3.6 -->
      <link rel="stylesheet" href="Assets/bootstrap/css/bootstrap.min.css" />
      <!-- Font Awesome -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />
      <!-- Ionicons -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css" />
      <!-- Theme style -->
      <link rel="stylesheet" href="Assets/dist/css/AdminLTE.min.css" />
      <!-- iCheck -->
      <link rel="stylesheet" href="Assets/iCheck/square/blue.css" />

</head>
<body class="hold-transition login-page">

    <div class="login-box">
      <div class="login-logo">
        <a href="#">SISTEMA</a>
      </div>
      <!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">Inicio de Sesion</p>

        <form id="form1" runat="server">
            <asp:Login ID="frmLogin" Width="100%" Height="100%" runat="server" DestinationPageUrl="~/App/Dashboard.aspx">
                <LayoutTemplate>
                    <fieldset>
                         <div class="form-group has-feedback">
                            <asp:TextBox ID="UserName" runat="server" Placeholder="Usuario" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                ControlToValidate="UserName" ErrorMessage="Debe Proporcionar el Usuario." 
                                ToolTip="Debe Proporcionar el Usuario." ValidationGroup="ctl00$frmLogin">*</asp:RequiredFieldValidator>
                            <span class="glyphicon glyphicon-user form-control-feedback"></span>
                          </div>

                          <div class="form-group has-feedback">
                            <asp:TextBox ID="Password" runat="server" Placeholder="Contraseña" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                ControlToValidate="Password" ErrorMessage="Debe de escribir su contraseña." 
                                ToolTip="Debe de escribir su contraseña." ValidationGroup="ctl00$frmLogin">*</asp:RequiredFieldValidator>
                            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                          </div>
                       
                           <div class="row">
                            <div class="col-xs-12 text-right">
                                <asp:Button ID="LoginImageButton" runat="server" CssClass="btn btn-primary btn-block btn-flat"
                                                CommandName="Login" Text="Login" ValidationGroup="ctl00$frmLogin"  />
                                <br />
                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False" ></asp:Literal>
                            </div>
                          </div>

                    </fieldset>
                </LayoutTemplate>
            </asp:Login>
        
          
        </form>

      </div>
      <!-- /.login-box-body -->
    </div>
    <!-- /.login-box -->

    <!-- jQuery 2.2.0 -->
    <script src="Assets/jQuery/jQuery-2.2.0.min.js"></script>
    <!-- Bootstrap 3.3.6 -->
    <script src="Assets/bootstrap/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="Assets/iCheck/icheck.min.js"></script>
    <script>
        $(function () {
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue',
                increaseArea: '20%' // optional
            });
        });
    </script>
</body>
</html>
