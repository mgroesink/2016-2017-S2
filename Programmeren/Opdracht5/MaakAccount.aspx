<%@ Page Language="C#" AutoEventWireup="true"    CodeFile="MaakAccount.aspx.cs" Inherits="MaakAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .button {
            margin-right:25px;
            background-color:darkcyan;
            color:yellow;
            font-weight:bold;
            padding:10px;
            width:200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Naam is een verplicht veld" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Username</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Usernaam is een verplicht veld" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" 
                        ErrorMessage="Ongeldig e-mailadres" 
                        ValidationExpression="^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" ForeColor="Red">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" BackColor="#0066FF"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Check Password</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" BackColor="#0066FF"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Wachtwoorden komen niet overeen" ForeColor="Red">*</asp:CompareValidator>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Button ID="Button1" runat="server" Text="Button" CssClass="button" />
        <input id="Reset1" type="reset" value="Reset" class="button" /><asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" />
    </form>
</body>
</html>
