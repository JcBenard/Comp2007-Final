<%@ Page Title="RaidList" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Default.aspx.cs" Inherits="Comp2007_final.Raids.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="well">
    <h2>Raids List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="Id" 
			ItemType="Comp2007_final.Models.Raid"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Raids
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table table-striped table-hover">
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
								<asp:LinkButton Text="Tanks Needed" CommandName="Sort" CommandArgument="TanksNeeded" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Healers Needed" CommandName="Sort" CommandArgument="HealersNeeded" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Dps Needed" CommandName="Sort" CommandArgument="DpsNeeded" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Tanks Have" CommandName="Sort" CommandArgument="TanksHave" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Healers Have" CommandName="Sort" CommandArgument="HealersHave" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Dps Have" CommandName="Sort" CommandArgument="DpsHave" runat="Server" />
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
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn btn-default disabled" NextPreviousButtonCssClass="btn btn-default" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn btn-default" />
                    </Fields>
				</asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
							<td>
								<asp:DynamicControl runat="server" DataField="RaidName" ID="RaidName" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Time" ID="Time" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Description" ID="Description" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="TanksNeeded" ID="TanksNeeded" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="HealersNeeded" ID="HealersNeeded" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="DpsNeeded" ID="DpsNeeded" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="TanksHave" ID="TanksHave" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="HealersHave" ID="HealersHave" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="DpsHave" ID="DpsHave" Mode="ReadOnly" />
							</td>
                    <td>					    
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Raids/Edit", Item.Id) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Raids/Delete", Item.Id) %>' Text="Delete" /> |
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/RaidMemebers/Default", Item.Id) %>' Text="Memebers" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/RaidMemebers/Insert", Item.Id) %>' Text="Join" /> 
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
        </div>
</asp:Content>

