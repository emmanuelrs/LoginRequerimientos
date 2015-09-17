<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatePassword.aspx.cs" Inherits="LoginRequerimientosTEC.updatePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 45%;
            top: 92px;
            left: 266px;
            margin-bottom: 0px;
        }
        .auto-style4 {
            width: 373px;
        }
        .auto-style5 {
            width: 1172px;
        }
        .auto-style6 {
            width: 1172px;
            height: 43px;
            text-align: justify;
        }
        .auto-style7 {
            width: 373px;
            height: 43px;
            text-align: justify;
        }
        .auto-style8 {
            height: 43px;
        }
        .auto-style9 {
            width: 1172px;
            height: 25px;
        }
        .auto-style10 {
            width: 373px;
            height: 25px;
        }
        .auto-style11 {
            height: 25px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="CSS/UpdateCSS.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lbl_code_update" runat="server" Text="Code"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtb_code_update" runat="server" Width="199px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lbl_newPassword_update" runat="server" Text="New Password"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtb_newPassoword_update" runat="server" Width="199px" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="lbl_repeat_password_update" runat="server" Text="Repeat Password"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txt_repeatPassword_update" runat="server" Width="199px" TextMode="Password" ></asp:TextBox>
                </td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" class="button" runat="server" OnClick="Button1_Click" Text="Update" />
                </td>
                <td class="auto-style8"></td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
