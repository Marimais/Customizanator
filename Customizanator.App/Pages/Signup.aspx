<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" MasterPageFile="~/Site.Master" Inherits="_Customizanator.Signup" ViewStateMode="Disabled" %>

<asp:Content ID="SignUpContent" ContentPlaceHolderID="mainContent" runat="server">

    <div  class="form">
        <h2>Sign Up</h2>

        <asp:Literal ID="ltMessage" runat="server"></asp:Literal>

        <div class="form-row">
            <asp:Label ID="lblEmail" runat="server" class="form-label" Text="Email*"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" ViewStateMode="Disabled" BorderStyle="Outset" CssClass="form-input" EnableViewState="False"></asp:TextBox>        
            <asp:RegularExpressionValidator ID="valEmail" runat="server" class="form-warning" ControlToValidate="txtEmail" ErrorMessage="Email is invalid" ValidationExpression="^\S+@\S+$" ></asp:RegularExpressionValidator>
        </div>
                 
        <div class="form-row">
            <asp:Label ID="lblPassword" runat="server" Text="Password*" class="form-label"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" BorderStyle="Outset" CssClass="form-input" TextMode="Password"></asp:TextBox>
            <asp:RegularExpressionValidator ID="valPassword" runat="server" class="form-warning" ControlToValidate="txtPassword" ErrorMessage="Password must contain at least one digit, one lower, one upper case character and must be at least 8  characters long." ValidationExpression="^((?=.*[a-z])(?=.*[A-Z])(?=.*\d)).{8,}$"></asp:RegularExpressionValidator>
        </div>
                

        <div class="form-row">
            <asp:Label ID="lblName" runat="server" Text="First Name" class="form-label"></asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server" BorderStyle="Outset" ViewStateMode="Disabled" CssClass="form-input"></asp:TextBox>
            <asp:RegularExpressionValidator ID="valFirstName" runat="server" class="form-warning" ControlToValidate="txtFirstName" ErrorMessage="Invalid First name" ValidationExpression="^(([A-Z].{1})([a-z].*)).*$" ></asp:RegularExpressionValidator>
        </div>

        <div class="form-row">
            <asp:Label ID="lblLastName" runat="server" Text="Last Name" class="form-label"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" BorderStyle="Outset" ViewStateMode="Disabled"  CssClass="form-input"></asp:TextBox>
            <asp:RegularExpressionValidator ID="valLastName" runat="server" class="form-warning" ControlToValidate="txtLastName" ErrorMessage="Invalid Last name" ValidationExpression="^(([A-Z].{1})([a-z].*)).*$" ></asp:RegularExpressionValidator>
        </div>

        <asp:Button ID="btnRegister" runat="server" OnClick="Register_Click" Text="Register" CssClass="btn btn-outline-success" type="submit" style="background-color:#CE8523" />
        
    </div>

</asp:Content>
