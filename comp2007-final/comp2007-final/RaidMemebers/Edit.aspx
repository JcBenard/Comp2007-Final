<%@ Page Title="RaidMemeberEdit" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Edit.aspx.cs" Inherits="Comp2007_final.RaidMemebers.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="well bs-component">
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="Comp2007_final.Models.RaidMemeber" DefaultMode="Edit" DataKeyNames="Id"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the RaidMemeber with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Memeber</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="Role" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="RaidId" 
								DataTypeName="Comp2007_final.Models.Raid" 
								DataTextField="RaidName" 
								DataValueField="Id" 
								UIHint="ForeignKey" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" /> &nbsp;
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

