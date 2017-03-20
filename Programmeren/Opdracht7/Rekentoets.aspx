<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rekentoets.aspx.cs" Inherits="Rekentoets" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 25%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Vul het hoogste getal in dat mag worden gebruikt in de sommen <asp:TextBox ID="txtMax" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMax" ErrorMessage="Je moet een waarde opgeven"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtMax" ErrorMessage="Geef een geheel getal tussen 1 en 100" Type="Integer" MaximumValue="100" MinimumValue="1"></asp:RangeValidator>
    </div>
        <br />
        <asp:Button ID="btnMaakSommen" runat="server" Text="Maak sommen" OnClick="btnMaakSommen_Click" />
        <br />
        <br />
        <br />
        <h2>Sommen</h2>
        <table class="auto-style1" runat="server" id="sommen" visible="false">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label13" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label14" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label15" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnScore" runat="server" OnClick="btnScore_Click" Text="Laat score zien" />
        <br />
        <br />
        <asp:Literal ID="litScore" runat="server"></asp:Literal>
    </form>
</body>
</html>
