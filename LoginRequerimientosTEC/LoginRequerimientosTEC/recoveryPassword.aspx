<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recoveryPassword.aspx.cs" Inherits="LoginRequerimientosTEC.recoveryPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            top: -103px;
            left: -148px;
        }
        .auto-style2 {
            width: 637px;
            height: 107px;
        }
        .auto-style3 {
            text-align: right;
            height: 107px;
        }
        .auto-style4 {
            text-align: right;
            height: 56px;
        }
        .auto-style5 {
            width: 637px;
            height: 56px;
        }
        .auto-style6 {
            text-align: right;
            height: 46px;
        }
        .auto-style7 {
            width: 637px;
            height: 46px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="CSS/RecoveryCSS.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lbl_name_recovery" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtb_name_recovery" runat="server" Height="24px" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lbl_email_recovery" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtb_email_recovery" runat="server" Height="24px" Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" class="button" runat="server" OnClick="Button1_Click" Text="Recover" />
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
