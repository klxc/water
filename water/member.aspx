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
            <p>
                <asp:Button  runat="server" ID="Button5" runat="server" Text="我要回報" OnClick="Button5_Click" />
            </p>
            <p>
                  <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="討論區"   />
            </p>
            <p>
                <asp:Button  runat="server" ID="Button6" runat="server" Text="典藏系統" OnClick="Button6_Click" />
            </p>
            <p>
                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="秘密武器" />
            </p>
            <asp:Button ID="Button8" runat="server" OnClick="button8_Click" Text="修改密碼" />
            <br />
            <br />
           <asp:Button runat="server" ID="Button4" Text="登出" OnClick="Button4_Click" />
        </div>
    </form>
    </body>
</html>
