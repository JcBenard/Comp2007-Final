<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Comp2007_final.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row text-center">
        <div class="col-lg-4 col-lg-offset-4">
            <div class="well bs-component">
    <div>
         <h1>Welcome Back</h1>
         <hr />
         <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
            <p>
               <asp:Literal runat="server" ID="StatusText" />
            </p>
         </asp:PlaceHolder>
         <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
            <div style="margin-bottom: 15px">
               <div>
                  <asp:TextBox runat="server" ID="UserName" placeholder="Username" Font-Size="Larger" />
               </div>
            </div>
            <div style="margin-bottom: 15px">
               <div>
                  <asp:TextBox runat="server" ID="Password" TextMode="Password" placeholder="Password" Font-Size="Larger" />
               </div>
            </div>
            <div style="margin-bottom: 15px">
               <div>
                  <asp:Button runat="server" OnClick="SignIn" Text="Log in" class="btn btn-default btn-lg" />
               </div>
            </div>
             <p>new user? <a href="/Register">create new account</a></p>
         </asp:PlaceHolder>
         <asp:PlaceHolder runat="server" ID="LogoutButton" Visible="false">
            <div>
               <div>
                  <asp:Button runat="server" OnClick="SignOut" Text="Log out" class="btn btn-default btn-lg"  />
               </div>
            </div>
         </asp:PlaceHolder>
      </div>
                </div>
            </div>
        </div>

</asp:Content>
