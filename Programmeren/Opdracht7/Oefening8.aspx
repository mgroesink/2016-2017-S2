<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oefening8.aspx.cs" Inherits="Oefening8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>De nationale begroetingssite</h1>

    </div>
        <p>
            &nbsp;</p>
        <asp:Label ID="lblNaam" runat="server" Text="Geef a.u.b. uw naam"></asp:Label>
&nbsp;<asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="btnBegroeting" runat="server" OnClick="btnBegroeting_Click" Text="Druk hier voor uw begroeting" />
        </p>
        <asp:Literal ID="litGroet" runat="server" Mode="PassThrough"></asp:Literal>
    </form>
</body>
</html>
