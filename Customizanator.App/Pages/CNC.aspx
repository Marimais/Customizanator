<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CNC.aspx.cs" Inherits="_Customizanator.Pages.CNC" %>

<asp:Content ID="CNCContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="form">
        <h2>CNC Carving</h2>
        <asp:Literal ID="ltCNCMessage" runat="server"></asp:Literal>

        <div class="form-row">
            <asp:Label ID="lblCutoutText" runat="server" Text="Cut out text" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtCutoutText" runat="server" BorderStyle="Outset" ViewStateMode="Disabled" CssClass="form-input" MaxLength="100"></asp:TextBox>
        </div>

        <div class="form-row">
            <asp:Label ID="lblThickness" runat="server" Text="Material thickness(cm)" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtThickness" runat="server" BorderStyle="Outset" ViewStateMode="Disabled" CssClass="form-input" MaxLength="4"></asp:TextBox>
            <asp:RegularExpressionValidator ID="valThickness" runat="server" class="form-warning" ControlToValidate="txtThickness" ErrorMessage="Thickness should be below 10cm and should be floating number" ValidationExpression="^(([0-9][.]{1})([0-9].*))$" ></asp:RegularExpressionValidator>
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