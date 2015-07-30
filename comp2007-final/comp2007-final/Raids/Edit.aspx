<%@ Page Title="RaidEdit" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Edit.aspx.cs" Inherits="Comp2007_final.Raids.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="well bs-component">
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="Comp2007_final.Models.Raid" DefaultMode="Edit" DataKeyNames="Id"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Raid with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend class="col-sm-offset-2">Edit Raid</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"/>                 
						    <asp:DynamicControl Mode="Edit" DataField="RaidName" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Time" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Description" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="TanksNeeded" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="HealersNeeded" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="DpsNeeded" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-default" />
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

