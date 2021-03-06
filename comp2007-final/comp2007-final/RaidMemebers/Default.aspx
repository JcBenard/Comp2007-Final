﻿<%@ Page Title="RaidMemeberList" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Default.aspx.cs" Inherits="Comp2007_final.RaidMemebers.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="well">
    <h2>Memebers List</h2>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="Id" 
			ItemType="Comp2007_final.Models.RaidMemeber"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                Currently no Memebers Signed up.
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="Name" CommandName="Sort" CommandArgument="Name" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Role" CommandName="Sort" CommandArgument="Role" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Event Name" CommandName="Sort" CommandArgument="RaidId" runat="Server" />
							</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
				<asp:DataPager PageSize="5"  runat="server">
					<Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn btn-default" />
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn btn-default" />
                    </Fields>
				</asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
							<td>
								<asp:DynamicControl runat="server" DataField="Name" ID="Name" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Role" ID="Role" Mode="ReadOnly" />
							</td>
							<td>
								<%#: Item.Raid != null ? Item.Raid.RaidName : "" %>
							</td>
                    <td>
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/RaidMemebers/Delete", Item.Id, Item.Role) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
        </div>
</asp:Content>

