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
    <asp:Label ID="lbl_Welcome" runat="server" Text="&quot;&quot;"></asp:Label>
    <asp:Button ID="Button1" runat="server" class="button" OnClick="Button1_Click" Text="LogOut" />
      
    </div>
        
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="159px" ImageUrl="~/img/word.png" OnClick="ImageButton1_Click1" Width="165px" />
        <asp:ImageButton ID="btnExcel" runat="server" Height="159px" ImageUrl="~/img/excel.png" OnClick="ImageButton2_Click" style="margin-right: 0px" Width="164px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
