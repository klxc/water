<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="server.aspx.cs" Inherits="water.server" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>會員管理</title>
</head>
<body>
    <form id="form3" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="344px">
            <Columns>                  
                <asp:CommandField ShowDeleteButton="True" />
                <asp:HyperLinkField NavigateUrl="WebForm3.aspx?id=1" Text="修改" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" InsertVisible="False" />
                <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
                <asp:BoundField DataField="PASSWARD" HeaderText="PASSWARD" SortExpression="PASSWARD" />
                <asp:BoundField DataField="rank" HeaderText="rank" SortExpression="rank" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MSSQL_DBconnect %>" SelectCommand="SELECT * FROM [ACCOUNT]"
            DeleteCommand="DELETE FROM [ACCOUNT] WHERE ID = @ID">       
        </asp:SqlDataSource>
        <div>
             <asp:Button runat="server" ID="Button6" Text="登出" OnClick="Button6_Click" />
        </div>
    </form>
</body>
</html>
