<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Demos_ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 22px;
    }
    .auto-style3 {
        height: 82px;
    }
    .auto-style4 {
        height: 26px;
    }
    .auto-style5 {
        height: 22px;
        width: 190px;
    }
    .auto-style6 {
        height: 26px;
        width: 190px;
    }
    .auto-style7 {
        width: 190px;
    }
    .auto-style8 {
        height: 82px;
        width: 190px;
    }
    .auto-style9 {
        height: 22px;
        width: 247px;
    }
    .auto-style10 {
        height: 26px;
        width: 247px;
    }
    .auto-style11 {
        width: 247px;
    }
    .auto-style12 {
        height: 82px;
        width: 247px;
    }
    .auto-style14 {
        height: 29px;
    }
    .auto-style15 {
        height: 29px;
        width: 190px;
    }
    .auto-style16 {
        height: 16px;
    }
    .auto-style17 {
        height: 29px;
        width: 247px;
    }
    .auto-style18 {
        height: 16px;
        width: 247px;
    }
</style>

<table class="auto-style1" runat="server" id="FormTable">
    <tr>
        <td colspan="3">Vui lòng nhập Email của bạn</td>
    </tr>
    <tr>
        <td class="auto-style9">Tên</td>
        <td class="auto-style5">
            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Nhập tên">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">Địa chỉ Email</td>
        <td class="auto-style6">
            <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" ErrorMessage="Nhập địa chỉ Email">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" ErrorMessage="Nhập địa chỉ Email hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Xác nhận địa chỉ Email</td>
        <td class="auto-style7">
            <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" ErrorMessage="Xác nhận địa chỉ Email">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" ErrorMessage="Email không khớp nhau">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">Số ĐT cá nhân</td>
        <td class="auto-style15">
            <asp:TextBox ID="PhoneHome" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style14">
            </td>
    </tr>
    <tr>
        <td class="auto-style18">Mật Khẩu</td>
        <td class="auto-style16">
            <asp:TextBox ID="ConfirmMatKhauAddress" runat="server" OnTextChanged="TextBox1_TextChanged" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style16"></td>
    </tr>
    <tr>
        <td class="auto-style12">Chú thích<br />
        </td>
        <td class="auto-style8">
            <asp:TextBox ID="Comments" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Comments" ErrorMessage="Nhập một chú thích">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style7">
            <asp:Button ID="SendButton" runat="server" Text="Send " OnClick="SendButton_Click" style="height: 26px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" ShowMessageBox="True" ShowSummary="False" />
        </td>
    </tr>
</table>

<asp:Label ID="Message" runat="server" Text="Label" Visible="false"></asp:Label>