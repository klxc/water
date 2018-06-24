<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="server3.aspx.cs" Inherits="water.server3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
 <div class="navbar navbar-inverse"></div>
     <a href="manage.aspx">回功能表</a><br/>
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <div class="text-center">
                    <h2>留言板</h2>
                    <br />
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        請在這裡進行交流~
                    </div>
                    <div class="panel-body">                    
                        <form name="form1" runat="server">
                            <p>
                                <asp:TextBox ID="name" runat="server" placeholder="您的暱稱" size="40" MaxLength="30" required="required"></asp:TextBox>
                                <p />
                                <asp:TextBox class="form-control" Style="resize: none" ID="content" runat="server" TextMode="MultiLine" placeholder="請留言..." Rows="4" required="required"></asp:TextBox>
                                <br />
                                <div class="text-center">
                                    <asp:Button class="btn" ID="btn" runat="server" Text="Submit" OnClick="btn_Click" />
                                </div>                               
                                <hr>                               
                                <!-- 顯示資料 -->
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        <strong class="text-info">
                                            <asp:Label ID="nameLabel" runat="server" Text='<%#Eval("name")+"：" %>' /></strong>
                                        <span class="text-muted pull-right">
                                            <small>
                                                <asp:Label ID="dateLabel" runat="server" Text='<%#Eval("date") %>' />
                                            </small>
                                        </span>
                                        <p>
                                            <asp:Label ID="contentLabel" runat="server" Text='<%#Eval("content") %>' /><hr>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB1_28ConnectionString2 %>" SelectCommand="SELECT DISTINCT [no], [name], [content], [date] FROM [Message] ORDER BY [no]"></asp:SqlDataSource>
                                </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
