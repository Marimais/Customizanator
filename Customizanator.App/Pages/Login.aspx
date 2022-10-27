<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" MasterPageFile="~/Site.Master"  Inherits="_Customizanator.Pages.Login" ViewStateMode="Disabled"  %>

<asp:Content ID="LoginContent" ContentPlaceHolderID="mainContent" runat="server">

    <div  class="form">
        <h2>Log In</h2>

        <asp:Literal ID="ltMessage" runat="server"></asp:Literal>

        <div class="form-row">
            <asp:Label ID="lblEmail" runat="server" class="form-label" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" ViewStateMode="Disabled" BorderStyle="Outset" CssClass="form-input" EnableViewState="False"></asp:TextBox>        
        </div>
                 
        <div class="form-row">
            <asp:Label ID="lblPassword" runat="server" Text="Password" class="form-label"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" BorderStyle="Outset" CssClass="form-input" TextMode="Password"></asp:TextBox>
        </div>
              
        <asp:Button ID="btnLogIn" runat="server" Text="Log In" CssClass="btn btn-outline-success" type="reset" OnClick="btnLogIn_Click"/>
        
    </div>

</asp:Content>

