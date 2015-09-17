<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="LoginRequerimientosTEC.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="CSS/loginCSS.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Button ID="Button1" runat="server" class="button" OnClick="Button1_Click" Text="LogOut" />
      
    </div>
        <asp:Label ID="lbl_Welcome" runat="server" Text="&quot;&quot;"></asp:Label>
    </form>
</body>
</html>
