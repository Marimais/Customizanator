<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Print.aspx.cs" Inherits="_Customizanator.Pages.Print" %>

<asp:Content ID="PrintContent" ContentPlaceHolderID="MainContent" runat="server">

    <div align="center" style="height: 160px; margin-top: 143px; text-align: center; font-family: 'Righteous';">
        <h2>3D printing</h2>
        <p>
            <asp:Literal ID="ltPrintMessage" runat="server"></asp:Literal>
        </p>
        <p align="center">
            <asp:Label ID="lbModel" runat="server" Text="Model"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="lblColor" runat="server" Text="Color"></asp:Label>
        </p>
        <p>
            <asp:DropDownList ID="ddColor" runat="server" OnSelectedIndexChanged="ddColor_SelectedIndexChanged"></asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="lblMaterial" runat="server" Text="Material"></asp:Label>
        </p>
        <p>
            <asp:DropDownList ID="ddMaterial" runat="server"></asp:DropDownList>
        </p>
     </div>

</asp:Content>