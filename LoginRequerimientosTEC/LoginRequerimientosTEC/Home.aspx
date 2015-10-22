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
        <asp:ImageButton ID="ImageButton1" runat="server" Height="159px" ImageUrl="~/img/word.png" OnClick="ImageButton1_Click1" Width="165px" Visible="false" />
        <asp:ImageButton ID="btnExcel" runat="server" Height="169px" ImageUrl="~/img/excel.png" OnClick="ImageButton2_Click" style="margin-right: 0px" Width="165px" Visible="false"/>
        <asp:ImageButton ID="btnPowerPoint" runat="server" Height="180px" ImageUrl="~/img/powerpoint.png" OnClick="btnPowerPoint_Click" Width="182px" Visible="false"/>
        <asp:ImageButton ID="btnOneNote" runat="server" ImageUrl="~/img/onenote.png" OnClick="btnOneNote_Click" style="margin-left: 21px" Width="159px" Visible="false" />
        <asp:ImageButton ID="btnOneDrive" runat="server" ImageUrl="~/img/OneDrive.png" OnClick="btnOneDrive_Click" Width="169px" Visible="false"/>
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
