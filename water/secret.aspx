<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="secret.aspx.cs" Inherits="water.secret" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>河川汙染排名</h1>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="249px" style="background-color: #FFFFFF; text-align: center;">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="level" HeaderText="汙染程度" SortExpression="level" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="河川名稱" SortExpression="name" />
                    <asp:BoundField DataField="city" HeaderText="縣市" SortExpression="city" />
                    <asp:BoundField DataField="date" HeaderText="日期" SortExpression="date" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB1_28ConnectionString2 %>" SelectCommand="SELECT DISTINCT [level], [id], [name], [city], [date] FROM [rivers] ORDER BY [level] DESC"></asp:SqlDataSource>
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="回功能表" />
    </form>
</body>
</html>
