<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyFirstWebpage.aspx.cs" Inherits="MyFirstAspSite.MyFirstWebpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Welkom op mijn website</h1>
        <input type="button" value="Click me" id="HtmlButton" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Or me" />
    </div>
    </form>
</body>
</html>
