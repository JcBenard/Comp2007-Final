<%@ Page Title="RaidInsert" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Insert.aspx.cs" Inherits="Comp2007_final.Raids.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="well bs-component">
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="Comp2007_final.Models.Raid" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Add Event</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="RaidName" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Time" runat="server" DataFormatString="0:dd/MM/yyyy" ApplyFormatInEditMode="True" />
						    <asp:DynamicControl Mode="Insert" DataField="Description" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="TanksNeeded" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="HealersNeeded" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="DpsNeeded" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
					</div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
