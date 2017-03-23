<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reken.aspx.cs" Inherits="Reken" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!--Hallo-->
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .button {
            margin: 0 25px 0 25px;
            background-color: darkcyan;
            color: yellow;
            font-weight: bold;
            padding: 3px;
            width: 150px;
        }
    </style>
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblGetal1" runat="server" Text="Getal 1"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtGetal1" runat="server"></asp:TextBox>
                        <asp:Button CssClass="button" ID="btnOptel" runat="server" OnClick="btnOptel_Click" Text="Optellen" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtGetal1" ErrorMessage="Getal 1 is verplicht" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtGetal1" ErrorMessage="Getal 1 moet tussen 1 en 100 liggen" ForeColor="Red" MaximumValue="100" MinimumValue="1" Type="Double">*</asp:RangeValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblGetal2" runat="server" Text="Getal 2"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtGetal2" runat="server"></asp:TextBox>
                        <asp:Button ID="btnAftrek" CssClass="button" runat="server" OnClick="btnAftrek_Click" Text="Aftrekken" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtGetal2" ErrorMessage="Getal 2 is verplicht" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Getal 2 moet tussen 1 en 100 liggen" ForeColor="Red" Type="Double" ControlToValidate="txtGetal2" MaximumValue="100" MinimumValue="1">*</asp:RangeValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblUitkomst" runat="server" Text="Uitkomst"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUitkomst" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTelefoon" runat="server" Text="Telefoon"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTelefoon" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTelefoon" ErrorMessage="Ongeldig telefoonnummer" ForeColor="Red" ValidationExpression="0\d{2} \d{7}">*</asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>            </table>

        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
    </form>
</body>
</html>
