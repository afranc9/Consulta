<%@ Page Title="" Language="C#" MasterPageFile="~/App/App.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="App_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
     <!-- Content Header (Page header) -->
    <section style="background-color:white;" class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>    

    <div  style="background-color:white;" class="content">
    </div>
	

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
    <script src="../Assets/chartjs/Chart.min.js"></script>
    <script>
        $(function () {           
            
        });
    </script>
</asp:Content>