<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oefening7.aspx.cs" Inherits="Oefening7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Rapport resultaten</h1>

        <br />
        Geef het cijfer in
        <asp:TextBox ID="txtGetal" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtGetal" ErrorMessage="Moet tussen 1 en 10 liggen" MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtGetal" ErrorMessage="Voer een cijfer in"></asp:RequiredFieldValidator>

    </div>
        <br />
        <asp:Button ID="btnBereken" runat="server" OnClick="btnBereken_Click" Text="Bepaal resultaat" />
        <p>
            Het resultaat is: <asp:TextBox ID="txtResultaat" runat="server" ReadOnly="True" Width="315px"></asp:TextBox>
        </p>
    </form>
</body>
</html>
