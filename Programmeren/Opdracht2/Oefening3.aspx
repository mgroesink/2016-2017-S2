<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oefening3.aspx.cs" Inherits="Oefening3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList ID="rbShowPanel" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbShowPanel_SelectedIndexChanged">
                <asp:ListItem>Laat formulier zien</asp:ListItem>
                <asp:ListItem Selected="True">Verberg formulier</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Panel ID="Panel1" Visible="false" runat="server">
                <h1>Wie ben je?</h1>

                <br />
                <br />
                Vul de onderstaande vragen in:
            <br />
                <table class="auto-style1">
                    <tr>
                        <td>Naam</td>
                        <td>
                            <asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Geslacht</td>
                        <td>
                            <asp:RadioButtonList ID="rbGeslacht" RepeatDirection="Horizontal" runat="server">
                                <asp:ListItem Value="M">Man</asp:ListItem>
                                <asp:ListItem Value="V">Vrouw</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td>Hobby</td>
                        <td>
                            <asp:CheckBoxList ID="chkHobby" runat="server">
                                <asp:ListItem Value="1">Gamen</asp:ListItem>
                                <asp:ListItem Value="2">Programmeren</asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr>
                        <td>Opleiding</td>
                        <td>
                            <asp:DropDownList ID="cbOpleiding" runat="server">
                                <asp:ListItem Value="1">VMBO</asp:ListItem>
                                <asp:ListItem Value="2">HAVO</asp:ListItem>
                                <asp:ListItem Value="3">VWO</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnMaakKaart" runat="server" Text="Maak persoon aan" OnClick="btnMaakKaart_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>


                <asp:Literal ID="litResultaat" Mode="Transform" runat="server"></asp:Literal>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
