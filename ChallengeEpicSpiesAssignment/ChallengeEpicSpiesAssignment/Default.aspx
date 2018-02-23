<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>
                <asp:Image ID="Image1" runat="server" Height="190px" ImageUrl="~/epic-spies-logo.jpg" Width="155px" />
                <br />
                Spy New Assignment Form</h3>
            <p style="font-family: Arial, Helvetica, sans-serif">
                Spy Code Name:
                <asp:TextBox ID="spyCodeTextBox" runat="server"></asp:TextBox>
            </p>
            <p style="font-family: Arial, Helvetica, sans-serif">
                New Assignment Name: <asp:TextBox ID="assignmentTextBox" runat="server"></asp:TextBox>
            </p>
            <p style="font-family: Arial, Helvetica, sans-serif">
                End Date of Previous Assignment<asp:Calendar ID="endCalendar" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="endCalendar_SelectionChanged" SelectedDate="02/13/2018 11:06:15" ShowGridLines="True" VisibleDate="2018-02-13" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </p>
            <p style="font-family: Arial, Helvetica, sans-serif">
                Start Date of New Assignment<asp:Calendar ID="startCalendar" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </p>
            <p style="font-family: Arial, Helvetica, sans-serif">
                Projected End Date of New Assignment<asp:Calendar ID="projectedCalendar" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </p>
            <p style="font-family: Arial, Helvetica, sans-serif">
                <asp:Button ID="assignButton" runat="server" OnClick="spyButton_Click" Text="Assign Spy" />
            </p>
            <p style="font-family: Arial, Helvetica, sans-serif">
                <asp:Label ID="resultLabel" runat="server"></asp:Label>
            </p>
            <p style="font-family: Arial, Helvetica, sans-serif">
                &nbsp;</p>
        </div>
    </form>
</body>
</html>
