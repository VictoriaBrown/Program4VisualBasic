<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EntryForm.aspx.vb" Inherits="VBProgram4VictoriaBrown.EntryForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <p>
                    $15 per ticket</p>
                <p>
                    <asp:Label ID="Label1" runat="server" Text="$25 per ticket with Award Night"></asp:Label>
                </p>
            </ContentTemplate>
        </asp:UpdatePanel>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            Number of tickets:&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NumberOfTicketsTextBox" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:TextBox ID="NumberOfTicketsTextBox" runat="server" Width="38px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Award Night&nbsp;
            <asp:CheckBox ID="AwardNightCheckBox" runat="server" />
        </p>
        <p>
            Shipping Address:</p>
        <p>
            <asp:TextBox ID="StreetAddressTextBox" runat="server" Width="245px"></asp:TextBox>
&nbsp; City:&nbsp;
            <asp:TextBox ID="CityTextBox" runat="server"></asp:TextBox>
        </p>
        <p>
            State:
            <asp:TextBox ID="StateTextBox" runat="server" Width="77px"></asp:TextBox>
&nbsp;&nbsp; ZIP Code:&nbsp;
            <asp:TextBox ID="ZIPCodeTextBox" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Card Info:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="TypeOfCardDropDownList" runat="server">
                <asp:ListItem>Visa</asp:ListItem>
                <asp:ListItem>Master Card</asp:ListItem>
                <asp:ListItem>American Express</asp:ListItem>
                <asp:ListItem>Discover</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:TextBox ID="CardNumberTextBox" runat="server" Width="250px"></asp:TextBox>
        </p>
        <p>
            Expiration Date:&nbsp;&nbsp;
            <asp:TextBox ID="ExpirationDateTextBox" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="AmountDueTextLabel" runat="server" Text="Amount Due: $" Visible="False"></asp:Label>
                <asp:Label ID="AmountDueLabel" runat="server" Visible="False"></asp:Label>
                &nbsp;&nbsp;
                <asp:HyperLink ID="ConfirmationPageHyperLink" runat="server" NavigateUrl="~/SubmitForm.aspx" Visible="False">www.program4.com/confirmation_page</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="SubmitButton" runat="server" CssClass="auto-style1" Text="Submit" Width="104px" />
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
