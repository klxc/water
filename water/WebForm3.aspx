<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="water.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
            width: 187px;
        }
        .auto-style4 {
            width: 187px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">請輸入欲修改使用者名稱:</td>
                    <td class="auto-style2">
        <asp:TextBox runat="server" ID="username" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">請輸入欲修改使用者密碼:</td>
                    <td>
        <asp:TextBox runat="server" ID="passward" TextMode="Password" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
            <asp:Button runat="server" ID="Button1" Text="修改" OnClick="Button1_Click" BackColor="#F800F8" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="回功能表" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        </div>
    </form>
</body>
</html>
