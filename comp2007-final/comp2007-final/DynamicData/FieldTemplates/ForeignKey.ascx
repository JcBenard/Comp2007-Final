<%@ Control Language="C#" CodeBehind="ForeignKey.ascx.cs" Inherits="comp2007_final.ForeignKeyField" %>

<asp:HyperLink ID="HyperLink1" runat="server"
    Text="<%# GetDisplayString() %>"
    NavigateUrl="<%# GetNavigateUrl() %>"  />

