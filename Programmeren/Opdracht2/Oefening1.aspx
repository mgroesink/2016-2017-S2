<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oefening1.aspx.cs" Inherits="Oefening1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="calKalender" VisibleDate="30-mar-2015" runat="server"></asp:Calendar>

            <br />
            Type hier je naam
        <asp:TextBox ID="txtNaam" MaxLength="25" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnDoeIets" runat="server" Text="Verzenden" OnClick="btnDoeIets_Click" />
            <br />
            <br />
            <asp:Label ID="lblBoodschap" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
