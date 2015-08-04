<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp2007_final.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
      <div class="container">
        <h1>Welcome</h1>
        <p>This site was made to help groups for MMO's set up events, don't hesitate to try it out. Click the button below to register and give it a shot.</p>
        <p><a class="btn btn-default btn-lg" href="/Register" role="button">Register &raquo;</a></p>
      </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-default">
  <div class="panel-body">
          <h2>Login In</h2>
          <p>If you're returning welcome back the button below will direct you to the login page. </p>
          <p><a class="btn btn-default" href="/Login.aspx" role="button">Login &raquo;</a></p>
                </div>
                </div>
        </div>
        <div class="col-md-6">
            <div class="panel panel-default">
  <div class="panel-body">
          <h2>About</h2>
          <p>Hello this application is a school project created by Jean-Claude Benard. If you wish to learn more click below</p>
          <p><a class="btn btn-default" href="/About.aspx" role="button">About  &raquo;</a></p>
      </div>
                </div>
       </div>
    </div>
</asp:Content>