<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Comp2007_final.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row text-center">
        <div class="col-lg-4 col-lg-offset-4">
            <div class="well bs-component">
    <div>
        <h2>New user registration</h2>
        <hr />
        <p>
            <asp:Literal runat="server" ID="StatusMessage" />
        </p>                
        <div style="margin-bottom:20px">
            <div>
                <asp:TextBox runat="server" ID="UserName" placeholder="Username" Font-Size="Larger"/>                
            </div>
        </div>
        <div style="margin-bottom:20px">
            <div>
                <asp:TextBox runat="server" ID="Password" TextMode="Password" placeholder="Password" Font-Size="Larger"/>                
            </div>
        </div>
        <div style="margin-bottom:20px">
            <div>
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" placeholder="Confirm Password" Font-Size="Larger"/>                
            </div>
        </div>
        <div>
            <div>
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" class="btn btn-default btn-lg" />
            </div>
        </div>
        <div style="margin-bottom:15px">
    </div>
                </div>
            </div>
        </div>
        </div>

</asp:Content>
