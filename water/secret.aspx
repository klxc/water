<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="secret.aspx.cs" Inherits="water.WebForm4" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="3000px">
                    <series>
                        <asp:Series Name="Series1" XValueMember="name" YValueMembers="count">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisX IntervalAutoMode="VariableCount" IsLabelAutoFit="False">
                <LabelStyle IsStaggered="True" />
            </AxisX>
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB1_28ConnectionString %>" SelectCommand="SELECT  name , AVG(level)as count
FROM   rivers
GROUP  BY  name
having  AVG(level) &lt;10"></asp:SqlDataSource>
            </p>
            <p>
                &nbsp;</p>
        </div>
    </form>
</body>
</html>
