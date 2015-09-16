<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginRequerimientosTEC.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Requerimientos</title>
    <style type="text/css">
        .auto-style1 {
            width: 61%;
        }
        .auto-style2 {
            width: 291px;
            text-align: center;
        }
        .auto-style3 {
            width: 291px;
            height: 62px;
            text-align: center;
        }
        .auto-style8 {
            width: 557px;
        }
        .auto-style9 {
            height: 62px;
            width: 557px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="CSS/loginCSS.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbl_email" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtb_email" runat="server" Width="200px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbl_password" runat="server" Text="Password"></asp:Label>
            &nbsp;</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtb_password" runat="server" Width="200px" TextMode="Password" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button3"  class="button" runat="server" Text="Password Recovery" OnClick="Button3_Click" />
            </td>
            <td class="auto-style9">
                <asp:Button ID="Button1" class="button" runat="server" Text="Login" OnClick="Button1_Click" />
                <asp:Button ID="Button2" class="button" runat="server" Text="Sign in" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
