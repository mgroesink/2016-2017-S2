<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Mijn eerste ASP.NET pagina</div>
        <asp:Button ID="btnPostback" runat="server" Text="Druk op mij" />
        <asp:Calendar ID="calKalender" runat="server" VisibleDate="2017-01-13"></asp:Calendar>
        <p>
            Type hier je naam
            <asp:TextBox ID="txtNaam" runat="server" MaxLength="25"></asp:TextBox>
        </p>
        <asp:Button ID="btnDoeIets" runat="server" OnClick="btnDoeIets_Click" Text="Verzenden" />
        <br />
        <br />
        <asp:Label ID="lblBoodschap" runat="server"></asp:Label>
    </form>
</body>
</html>
