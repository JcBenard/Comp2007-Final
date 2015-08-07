<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="Comp2007_final.RaidMemebers.Insert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<%@ Import Namespace="Microsoft.AspNet.FriendlyUrls" %>

            <div class="well bs-component">
                <fieldset class="form-horizontal">
                    <legend class="col-sm-offset-2">Join Event</legend>
                    <div class="col-sm-offset-2">
                            <div class="form-group">
                                <asp:Label ID="NameLabel" runat="server" Text="Name: " Font-Size="Larger"></asp:Label>
                                <asp:LoginName ID="LoginName" runat="server" Font-Size="Larger" />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="RoleLabel" runat="server" Text="Role: " Font-Size="Larger"></asp:Label>
                                <asp:DropDownList ID="RoleDropDownList" runat="server" Font-Size="Larger">
                                    <asp:ListItem Value="Dps" Text="Dps"></asp:ListItem>
                                    <asp:ListItem Value="Healer" Text="Healer"></asp:ListItem>
                                    <asp:ListItem Value="Tank" Text="Tank"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="RaidLabel" runat="server" Text="Raid: " Font-Size="Larger"></asp:Label>
                                <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="Larger"><%: Id %></asp:Label>
                            </div>
                        </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" OnClick="Join" Text="Join" class="btn btn-default" />
                            <asp:Button runat="server" OnClick="Cancel" Text="Cancel" CssClass="btn btn-default" />
                        </div>
                    </div>
                </fieldset>
            </div>
</asp:Content>
