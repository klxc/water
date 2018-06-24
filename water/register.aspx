<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="water.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/index.css"/>
    <title>會員註冊</title>
</head>
<body>
     <h2>註冊</h2>
     <form id="Form2" runat="server">
         <div>
        請輸入名稱:
        <asp:TextBox runat="server" ID="rname" />
        </div>
         <div>
        請輸入密碼:
        <asp:TextBox runat="server" ID="rpassward" TextMode="Password" />
         </div>
        <div>
            <asp:Button runat="server" ID="Button2" Text="送出" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
