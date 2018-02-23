<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 style="font-family: Arial, Helvetica, sans-serif">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/epic-spies-logo.jpg" />
                <br />
            </h2>
            <h2 style="font-family: Arial, Helvetica, sans-serif">Asset Performance Tracker</h2>
            <p style="font-family: Arial, Helvetica, sans-serif">
                &nbsp;Asset Name:
                <asp:TextBox ID="assetTextBox" runat="server"></asp:TextBox>
            </p>
            <p style="font-family: Arial, Helvetica, sans-serif">
                Elections Rigged: <asp:TextBox ID="electionsTextBox" runat="server"></asp:TextBox>
            </p>
            <p style="font-family: Arial, Helvetica, sans-serif">
                Acts of Subterfuge Performed: <asp:TextBox ID="actsTextBox" runat="server"></asp:TextBox>
            </p>
            <p style="font-family: Arial, Helvetica, sans-serif">
                <asp:Button ID="addAssetButton" runat="server" OnClick="addAssetButton_Click" Text="Add Asset" />
            </p>
            <p style="font-family: Arial, Helvetica, sans-serif">
                <asp:Label ID="resultLabel" runat="server"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
