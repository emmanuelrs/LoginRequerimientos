<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LoginRequerimientosTEC.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 190px;
            top: 155px;
            left: 236px;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
            width: 357px;
            text-align: right;
        }
        .auto-style5 {
            height: 22px;
            width: 357px;
            text-align: right;
        }
        .auto-style6 {
            height: 30px;
            width: 357px;
            text-align: right;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="CSS/RegisterCSS.css"/>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lbl_name" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtb_name" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtb_name" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lbl_first_surname" runat="server" Text="First Surname"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtb_first_surname" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtb_first_surname" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lbl_second_surname" runat="server" Text="Second Surname"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtb_second_surname" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lbl_email" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtb_email" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtb_email" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lbl_password1" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtb_password1" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtb_password1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Repeat Password</td>
                <td>
                    <asp:TextBox ID="txtb_password2" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtb_password2" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button2" runat="server" class="myButton" OnClick="Button2_Click" Text="Cancel" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" class="myButton" OnClick="Button1_Click" Text="Register!" />
                </td>
                <td class="auto-style3"></td>
            </tr>
        </table>
    </form>
    
        <h1 style="margin-left: 320px; width: 432px; height: 37px; text-align: right;" id="welcome">
            Welcome!</h1>
    
    </body>
</html>
