<%@ Page Title="Raid Details" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Details.aspx.cs" Inherits="Comp2007_final.Raids.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="Comp2007_final.Models.Raid" DataKeyNames="Id"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Raid with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Raid Details</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Id</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Id" ID="Id" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>RaidName</strong>
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
									<strong>TanksNeeded</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="TanksNeeded" ID="TanksNeeded" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>HealersNeeded</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="HealersNeeded" ID="HealersNeeded" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>DpsNeeded</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="DpsNeeded" ID="DpsNeeded" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>TanksHave</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="TanksHave" ID="TanksHave" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>HealersHave</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="HealersHave" ID="HealersHave" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>DpsHave</strong>
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
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

