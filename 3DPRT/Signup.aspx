﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" MasterPageFile="~/Site.Master" Inherits="_3DPRT.Signup" ViewStateMode="Disabled" %>

<asp:Content ID="SignUpContent" ContentPlaceHolderID="mainContent" runat="server">

    <div align="center" style="height: 160px; margin-top: 143px; text-align: center; font-family: 'Righteous';">
        <h2>Sign Up</h2>
        <p>
            <asp:Literal ID="ltMessage" runat="server"></asp:Literal>
        </p>
        <p align="center">
            <asp:Label ID="lblEmail" runat="server" Text="Email*"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" ViewStateMode="Disabled" BorderStyle="Outset" CssClass="form-control" EnableViewState="False"  Width="20%"></asp:TextBox>        
        </p>
        <p>
            <asp:RegularExpressionValidator ID="valEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is invalid" ValidationExpression="^\S+@\S+$"></asp:RegularExpressionValidator>
        </p>

        <p align="center">
            <asp:Label ID="lblPassword" runat="server" Text="Password*"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" BorderStyle="Outset" CssClass="form-control" TextMode="Password" Width="20%"></asp:TextBox>
        </p>
        <p>
            <asp:RegularExpressionValidator ID="valPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password must contain at least one digit, one lower, one upper case character and must be at least 8  characters long." ValidationExpression="^((?=.*[a-z])(?=.*[A-Z])(?=.*\d)).{8,}$"></asp:RegularExpressionValidator>
        </p>
        <p align="center">
            <asp:Label ID="lblName" runat="server" Text="First Name"></asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server" BorderStyle="Outset" ViewStateMode="Disabled" CssClass="form-control"  Width="20%"></asp:TextBox>
        </p>
         <asp:RegularExpressionValidator ID="valFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Invalid First name" ValidationExpression="^(([A-Z].{1})([a-z].*)).*$"></asp:RegularExpressionValidator>
       
        <p>

        </p>
        <p align="center">
            <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" BorderStyle="Outset" ViewStateMode="Disabled"  CssClass="form-control"  Width="20%"></asp:TextBox>
        </p>
        <p>
             <asp:RegularExpressionValidator ID="valLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Invalid Last name" ValidationExpression="^(([A-Z].{1})([a-z].*)).*$"></asp:RegularExpressionValidator>
       
        </p>
        <p>
            <asp:Button ID="btnRegister" runat="server" OnClick="Register_Click" Text="Register" CssClass="btn btn-outline-success" type="submit" style="background-color:#CE8523" />
        </p>


        </div>

</asp:Content>
