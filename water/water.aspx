<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="water.aspx.cs" Inherits="water.water" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="index.css"/>
    <title>水汙染</title>
</head>
<body>
     <h2>登入</h2>
    <form id="Form1" runat="server">
         <div>
        請輸入使用者名稱:
        <asp:TextBox runat="server" ID="username" />
        </div>
         <div>
        請輸入使用者密碼:
        <asp:TextBox runat="server" ID="passward" TextMode="Password" />
         </div>
        <div>
            <asp:Button runat="server" ID="Button1" Text="登入" OnClick="Button1_Click" BackColor="#F800F8" />
        </div>
    </form>
    <h3>沒有帳號嗎?註冊一個吧!</h3>
    <a href="register.aspx">註冊</a>
    <asp:Label ID="Label1" runat="server" Text="我就是不做頁面設計" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
</body>
</html>
