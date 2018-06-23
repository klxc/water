<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="collection.aspx.cs" Inherits="water.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
    <div class="navbar navbar-inverse"></div>
        <a href="member.aspx">回功能表</a><br/>
        <div class="container">
            <div class="row">
                <div class="col-md-offset-2 col-md-8 ">
                    <div class="text-center">
                        <h2>看看河川有什麼汙染物吧</h2>
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server"  placeholder="請輸入河名" style="text-align: center" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name">
                        </asp:DropDownList>
                        <asp:Button class="btn" ID="btn" runat="server" Text="查詢" OnClick="btn_Click" style="text-align: center" />
                        <div>
                            <table class="table text-center">
                                <tr>
                                    <td><strong>名稱</strong></td>
                                    <td><strong>酸鹼值</strong></td>
                                    <td><strong>溶氧量mg/L</strong></td>
                                    <td><strong>生化需氧量mg/L</strong></td>
                                    <td><strong>懸浮固體mg/L</strong></td>
                                    <td><strong>大腸桿菌群CFU/100mL</strong></td>
                                    <td><strong>氨氣mg/L</strong></td>
                                </tr>
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" Visible="False">
                                    <ItemTemplate>
                                        <tr>
                                            <td><asp:Label ID="Label7" runat="server" Text='<%#Eval("name")%>' /></td>
                                            <td><asp:Label ID="Label1" runat="server" Text='<%#Eval("ph")%>' /></td>
                                            <td><asp:Label ID="Label2" runat="server" Text='<%#Eval("oxygen")%>' /></td>
                                            <td><asp:Label ID="Label3" runat="server" Text='<%#Eval("life")%>' /></td>
                                            <td><asp:Label ID="Label4" runat="server" Text='<%#Eval("substance") %>' /></td>
                                            <td><asp:Label ID="Label5" runat="server" Text='<%#Eval("Ecoli") %>' /></td>
                                             <td><asp:Label ID="Label6" runat="server" Text='<%#Eval("ammonia") %>' /></td>
                                        </tr>                                    
                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB1_28ConnectionString2 %>" SelectCommand="SELECT DISTINCT [name] FROM [POLLUTION]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB1_28ConnectionString2 %>" SelectCommand="SELECT DISTINCT [name] FROM [POLLUTION]"></asp:SqlDataSource>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
