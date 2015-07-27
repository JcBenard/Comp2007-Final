<%@ Page Title="RaidInsert" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Insert.aspx.cs" Inherits="comp2007_final.Raids.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="comp2007_final.Models.Raid" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Raid</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="RaidName" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="DateTime" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Description" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="NumberNeeded" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="NumberSignedUp" runat="server" />
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
