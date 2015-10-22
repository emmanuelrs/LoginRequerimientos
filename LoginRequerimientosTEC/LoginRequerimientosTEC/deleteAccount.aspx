<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteAccount.aspx.cs" Inherits="LoginRequerimientosTEC.deleteAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
            top: 15px;
            left: 360px;
        }
        .auto-style2 {
            height: 26px;
            width: 752px;
        }
        .auto-style3 {
            height: 26px;
            width: 341px;
        }
        .auto-style4 {
            width: 341px;
        }
        .auto-style5 {
            width: 752px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="CSS/loginCSS.css"/>
</head>
<body>

    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Email</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Repeat Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_passwordRepeat" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btn_Cancel" class="button" runat="server" Text="Cancel" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="btnDelete" class="button" runat="server" Text="Delete Account" OnClick="btnDelete_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
