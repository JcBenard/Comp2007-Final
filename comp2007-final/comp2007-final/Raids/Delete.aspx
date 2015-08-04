<%@ Page Title="RaidDelete" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Delete.aspx.cs" Inherits="Comp2007_final.Raids.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="well bs-component">
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this Event?</h3>
        <asp:FormView runat="server"
            ItemType="Comp2007_final.Models.Raid" DataKeyNames="Id"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Raid with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete Event</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Event Name</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="RaidName" ID="RaidName" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Time</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Time" ID="Time" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Description</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Description" ID="Description" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Tanks Needed</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="TanksNeeded" ID="TanksNeeded" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Healers Needed</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="HealersNeeded" ID="HealersNeeded" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Dps Needed</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="DpsNeeded" ID="DpsNeeded" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Tanks Have</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="TanksHave" ID="TanksHave" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Healers Have</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="HealersHave" ID="HealersHave" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Dps Have</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="DpsHave" ID="DpsHave" Mode="ReadOnly" />
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

