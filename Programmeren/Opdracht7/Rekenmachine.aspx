<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rekenmachine.aspx.cs" Inherits="Rekenmachine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        /*.auto-style1 {
            width: 50%;
        }*/
        .button {
            width: 60px;
            height:60px;
            font-weight: bold;
            font-size: large;
            text-align: center;
        }
        .button2 {
            width: 120px;
        }

        #TextBoxDisplay {
            width: 315px;
            height:100px;
            font-size:48pt;
            font-weight:900;
            text-align:right;
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>De rekenmachine</h2>
            <p>
                Hieronder staat een grafische rekenmachine.<br />
                Druk op de knoppen om deze te gebruiken
            </p>

            <table class="auto-style1">
                <tr>
                    <td colspan="5">
                        <asp:TextBox ID="TextBoxDisplay" ReadOnly="true" Text="0" runat="server">0</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button7" CssClass="button" runat="server" Text="7" OnClick="Button_Click" /></td>
                    <td>
                        <asp:Button ID="Button8" CssClass="button" runat="server" Text="8" OnClick="Button_Click" /></td>
                    <td>
                        <asp:Button ID="Button9" CssClass="button" runat="server" Text="9" OnClick="Button_Click" /></td>
                    <td>
                        <asp:Button ID="ButtonC" CssClass="button" runat="server" Text="C" OnClick="ButtonC_Click" /></td>
                    <td>
                        <asp:Button ID="ButtonBack" CssClass="button" runat="server" Text="Back" OnClick="ButtonBack_Click" /></td>

                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button4" CssClass="button" runat="server" Text="4" OnClick="Button_Click" /></td>
                    <td>
                        <asp:Button ID="Button5" CssClass="button" runat="server" Text="5" OnClick="Button_Click" /></td>
                    <td>
                        <asp:Button ID="Button6" CssClass="button" runat="server" Text="6" OnClick="Button_Click" /></td>
                    <td>
                        <asp:Button ID="ButtonPlus" CssClass="button" runat="server" Text="+" OnClick="ButtonPlus_Click" /></td>
                    <td>
                        <asp:Button ID="ButtonM2" CssClass="button" runat="server" Text="M2" /></td>

                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" CssClass="button" runat="server" Text="1" OnClick="Button_Click" /></td>
                    <td>
                        <asp:Button ID="Button2" CssClass="button" runat="server" Text="2" OnClick="Button_Click" /></td>
                    <td>
                        <asp:Button ID="Button3" CssClass="button" runat="server" Text="3" OnClick="Button_Click" /></td>
                    <td>
                        <asp:Button ID="Button1Minus" CssClass="button" runat="server" Text="-" OnClick="Button1Minus_Click" /></td>
                    <td>
                        <asp:Button ID="ButtonO1" CssClass="button" runat="server" Text="O1" OnClick="ButtonO1_Click" /></td>

                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button0" CssClass="button button2" runat="server" Text="0" OnClick="Button_Click" /></td>
                    <td>
                        <asp:Button ID="ButtonDec" CssClass="button" runat="server" Text="." OnClick="ButtonDec_Click" /></td>
                    <td>
                        <asp:Button ID="ButtonResult" CssClass="button" runat="server" Text="=" OnClick="ButtonResult_Click" /></td>
                    <td>
                        <asp:Button ID="ButtonO2" CssClass="button" runat="server" Text="O2" OnClick="ButtonO2_Click" /></td>
                </tr>
            </table>

        </div>
        <asp:Label ID="lGetal1" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="lBereken" runat="server" Text="Label" Visible="False"></asp:Label>
    </form>
</body>
</html>
