<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="MyRaids.aspx.cs" Inherits="Comp2007_final.RaidMemebers.MyRaids" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="well">
    <h2>My Events</h2>
    <div>
        <asp:ListView ID="ListView1" runat="server"
            DataKeyNames="Id"
            ItemType="Comp2007_final.Models.RaidMemeber"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for My Events
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
                                <asp:LinkButton Text="Event Name" CommandName="Sort" CommandArgument="RaidName" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Time" CommandName="Sort" CommandArgument="Time" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Description" CommandName="Sort" CommandArgument="Description" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Role" CommandName="Sort" CommandArgument="Role" runat="Server" />
                            </th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
                <asp:DataPager PageSize="8" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn btn-default" />
                        <asp:NumericPagerField ButtonType="Button" NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn btn-default" />
                    </Fields>
                </asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%#: Item.Raid != null ? Item.Raid.RaidName : "" %>
                    </td>
                    <td>
                        <%#: Item.Raid != null ? Item.Raid.Time : "" %>
                    </td>
                    <td>
                        <%#: Item.Raid != null ? Item.Raid.Description : "" %>
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Role" ID="Role" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/RaidMemebers/Delete", Item.Id, Item.Role) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
    </div>
    <asp:LoginName ID="LoginName" runat="server" Font-Size="Larger" Visible="False" />
</asp:Content>
