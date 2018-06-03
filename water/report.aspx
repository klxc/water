<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="water.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            width: 69px;
        }
        .auto-style3 {
            height: 20px;
            width: 69px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <table style="width: 25%;">
                <tr>
                    <td class="auto-style2">城市:</td>
                    <td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="city" DataValueField="city">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB1_28ConnectionString %>" SelectCommand="SELECT DISTINCT [city] FROM [rivers]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">河川:</td>
                    <td class="auto-style1">
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB1_28ConnectionString %>" SelectCommand="SELECT DISTINCT [name], [city] FROM [rivers] WHERE ([city] = @city)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="city" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">日期:</td>
                    <td colspan="1">
            <asp:Label ID="InterviewDate" runat="server" Text="InterviewDate" Visible="False"></asp:Label>
            <asp:Button ID="InterviewDateBtn" runat="server" Text="選擇日期" />
            <asp:Calendar ID="InterviewCalendar" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Visible="False" Width="220px">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">嚴重程度:</td>
                    <td colspan="1">
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="level" DataValueField="level">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DB1_28ConnectionString %>" SelectCommand="SELECT DISTINCT [level] FROM [rivers]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="送出" />
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="Button" />
        </p>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DB1_28ConnectionString %>" DeleteCommand="DELETE FROM [rivers] WHERE [id] = @id" InsertCommand="INSERT INTO [rivers] ([id], [name], [city], [date], [level]) VALUES (@id, @name, @city, @date, @level)" SelectCommand="SELECT * FROM [rivers]" UpdateCommand="UPDATE [rivers] SET [name] = @name, [city] = @city, [date] = @date, [level] = @level WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="name" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="city" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="InterviewDate" Name="date" PropertyName="Text" Type="DateTime" />
                <asp:ControlParameter ControlID="DropDownList3" Name="level" PropertyName="SelectedValue" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="level" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
