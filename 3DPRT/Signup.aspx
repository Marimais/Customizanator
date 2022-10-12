<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" MasterPageFile="~/Site.Master" Inherits="_3DPRT.Signup" ViewStateMode="Disabled" %>

<asp:Content ID="SignUpContent" ContentPlaceHolderID="mainContent" runat="server">

    <div align="center" style="height: 160px; margin-top: 143px; text-align: center; font-family: 'Righteous';">
        <h1>Sign Up</h1>
        <p>
            <asp:Literal ID="ltMessage" runat="server"></asp:Literal>
        </p>
        <p align="center">
            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" ViewStateMode="Disabled" BorderStyle="Outset" CssClass="form-control" EnableViewState="False"  Width="20%"></asp:TextBox>        
        </p>
        <p>
            <asp:RequiredFieldValidator ID="valEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" Display="Dynamic">Email is required</asp:RequiredFieldValidator>
        </p>

        <p align="center">
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" BorderStyle="Outset" CssClass="form-control" TextMode="Password" Width="20%"></asp:TextBox>
        </p>
        <p>
            <asp:CustomValidator ID="valPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="CustomValidator"></asp:CustomValidator>
        </p>
        <p>
            <asp:Button ID="btnRegister" runat="server" OnClick="Register_Click" Text="Register" CssClass="btn btn-outline-success" type="submit" style="background-color:#CE8523" />
        </p>

        </div>

</asp:Content>
