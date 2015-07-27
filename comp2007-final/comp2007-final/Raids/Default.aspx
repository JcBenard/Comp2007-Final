<%@ Page Title="RaidList" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Default.aspx.cs" Inherits="comp2007_final.Raids.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Raids List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="Id" 
			ItemType="comp2007_final.Models.Raid"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Raids
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="Id" CommandName="Sort" CommandArgument="Id" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="RaidName" CommandName="Sort" CommandArgument="RaidName" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="DateTime" CommandName="Sort" CommandArgument="DateTime" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Description" CommandName="Sort" CommandArgument="Description" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="NumberNeeded" CommandName="Sort" CommandArgument="NumberNeeded" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="NumberSignedUp" CommandName="Sort" CommandArgument="NumberSignedUp" runat="Server" />
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
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                    </Fields>
				</asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
							<td>
								<asp:DynamicControl runat="server" DataField="Id" ID="Id" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="RaidName" ID="RaidName" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="DateTime" ID="DateTime" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Description" ID="Description" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="NumberNeeded" ID="NumberNeeded" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="NumberSignedUp" ID="NumberSignedUp" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Raids/Details", Item.Id) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Raids/Edit", Item.Id) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Raids/Delete", Item.Id) %>' Text="Delete" />
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/RaidMemebers/Inset", Item.Id) %>' Text="Join" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

