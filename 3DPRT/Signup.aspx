<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="_3DPRT.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Signup</h1>
            <p>
                <asp:Literal ID="ltMessage" runat="server"></asp:Literal>
            </p>
            <p>&nbsp;</p>
        </div>
        <p>
            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
&nbsp;
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
&nbsp;
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnRegister" runat="server" OnClick="btnRegistert_Click" Text="Register" />
        </p>
    </form>
</body>
</html>
