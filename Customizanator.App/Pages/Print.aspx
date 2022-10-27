<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Print.aspx.cs" Inherits="_Customizanator.Pages.Print" %>

<asp:Content ID="PrintContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form">
        <h2>3D printing</h2>
        <asp:Literal ID="ltPrintMessage" runat="server"></asp:Literal>

        <div class="form-row">
            <asp:Label ID="lbModel" runat="server" Text="Model" CssClass="form-label"></asp:Label>
        </div>
        
        <div class="form-row">
            <asp:Label ID="lblColor" runat="server" Text="Color" CssClass="form-label"></asp:Label>
            <asp:DropDownList ID="ddColor" runat="server" OnSelectedIndexChanged="ddColor_SelectedIndexChanged" CssClass="form-input"></asp:DropDownList>
        </div>

        <div class="form-row">
            <asp:Label ID="lblMaterial" runat="server" Text="Material" CssClass="form-label"></asp:Label>
            <asp:DropDownList ID="ddMaterial" runat="server" CssClass="form-input"></asp:DropDownList>
        </div>
        
        <p>
            <asp:Button ID="btnOrder" runat="server" Text="Order"/>
        </p>
     </div>

</asp:Content>