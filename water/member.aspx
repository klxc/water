<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="member.aspx.cs" Inherits="water.member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>water</title>
</head>
<body>
    <form id="form5" runat="server">
        <div>
            <p>恭喜登入成功</p>
             <asp:Button runat="server" ID="Button4" Text="回到首頁" OnClick="Button4_Click" />
        </div>
    </form>
</body>
</html>
