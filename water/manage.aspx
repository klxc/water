<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manage.aspx.cs" Inherits="water.manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            歡迎回來管理員!!
        </div>
        <asp:Button ID="Button1" runat="server" Text="資料管理" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="會員管理" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="討論區" OnClick="Button3_Click" />
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="登出" />
        </p>
    </form>
</body>
</html>
