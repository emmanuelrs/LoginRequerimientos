<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatePassword.aspx.cs" Inherits="LoginRequerimientosTEC.updatePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 539px;
        }
        .auto-style4 {
            width: 884px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lbl_code_update" runat="server" Text="Code"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtb_code_update" runat="server" Width="199px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lbl_newPassword_update" runat="server" Text="New Password"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtb_newPassoword_update" runat="server" Width="199px" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lbl_repeat_password_update" runat="server" Text="Repeat Password"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_repeatPassword_update" runat="server" Width="199px" TextMode="Password" ></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
