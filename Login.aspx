<%@ Page Title="Đăng nhập" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Vui lòng đăng nhập để được donate:</p>

    <p> <asp:Label ID="Label2" runat="server" Text="Tài khoản"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="152px"></asp:TextBox>
    </p>
    <p> <asp:Label ID="Label1" runat="server" Text="Mật khẩu"></asp:Label>
        <asp:TextBox ID="TextBox2"  runat="server" ReadOnly="False" TextMode="Password" style="margin-left: 2px" Width="154px"></asp:TextBox>
    </p>
    <p> <a href="Content.aspx">Đăng nhập</a> <a href="About/Default.aspx">Đăng kí</a>  </p>
    <img src="Images/asd.jpg" width="80%" height="auto" />
    <p>Trở lại: <a href="Content.aspx">QUAY VỀ</a></p>
</asp:Content>

