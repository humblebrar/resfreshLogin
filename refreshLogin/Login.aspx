<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="refreshLogin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-color:aqua;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td>
                        <asp:Label ID="User" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="UserBox" runat="server" Text=""></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                       <td>
                        <asp:Label ID="Passwordlbl" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="PasswordBox" runat="server" Text=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Button ID="Loginbtn" runat="server" Text="Login" OnClick="Loginbtn_Click" />
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Label ID="lblErrormsg" runat="server" Text="Incorrect Username and Password" ForeColor="Red"></asp:Label>
                    </td>
                        </tr>
            </table>
        </div>
    </form>
</body>
</html>
