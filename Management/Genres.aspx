<%@ Page Title="Management – Genre" Language="VB" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="false" CodeFile="Genres.aspx.vb" Inherits="Management_Genres" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="STT" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="STT" HeaderText="STT" ReadOnly="True" SortExpression="STT" />
        <asp:BoundField DataField="Tenkh" HeaderText="Tenkh" SortExpression="Tenkh" />
        <asp:BoundField DataField="ngayxemlive" HeaderText="ngayxemlive" SortExpression="ngayxemlive" />
        <asp:BoundField DataField="gioxemlive" HeaderText="gioxemlive" SortExpression="gioxemlive" />
        <asp:BoundField DataField="luongtiendonate" HeaderText="luongtiendonate" SortExpression="luongtiendonate" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Khachhang] WHERE [STT] = @STT" InsertCommand="INSERT INTO [Khachhang] ([Tenkh], [ngayxemlive], [gioxemlive], [luongtiendonate]) VALUES (@Tenkh, @ngayxemlive, @gioxemlive, @luongtiendonate)" ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [STT], [Tenkh], [ngayxemlive], [gioxemlive], [luongtiendonate] FROM [Khachhang]" UpdateCommand="UPDATE [Khachhang] SET [Tenkh] = @Tenkh, [ngayxemlive] = @ngayxemlive, [gioxemlive] = @gioxemlive, [luongtiendonate] = @luongtiendonate WHERE [STT] = @STT">
    <DeleteParameters>
        <asp:Parameter Name="STT" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Tenkh" Type="String" />
        <asp:Parameter Name="ngayxemlive" Type="String" />
        <asp:Parameter Name="gioxemlive" Type="String" />
        <asp:Parameter Name="luongtiendonate" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Tenkh" Type="String" />
        <asp:Parameter Name="ngayxemlive" Type="String" />
        <asp:Parameter Name="gioxemlive" Type="String" />
        <asp:Parameter Name="luongtiendonate" Type="String" />
        <asp:Parameter Name="STT" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:nguyenhongnhatlamConnectionString1 %>" DeleteCommand="DELETE FROM [Khách Hàng] WHERE [STT] = @STT" InsertCommand="INSERT INTO [Khách Hàng] ([STT], [Tên khách hàng xem live], [ngày xem live], [giờ xem live], [lượng tiền donate]) VALUES (@STT, @Tên_khách_hàng_xem_live, @ngày_xem_live, @giờ_xem_live, @lượng_tiền_donate)" ProviderName="<%$ ConnectionStrings:nguyenhongnhatlamConnectionString1.ProviderName %>" SelectCommand="SELECT [STT], [Tên khách hàng xem live] AS Tên_khách_hàng_xem_live, [ngày xem live] AS ngày_xem_live, [giờ xem live] AS giờ_xem_live, [lượng tiền donate] AS lượng_tiền_donate FROM [Khách Hàng]" UpdateCommand="UPDATE [Khách Hàng] SET [Tên khách hàng xem live] = @Tên_khách_hàng_xem_live, [ngày xem live] = @ngày_xem_live, [giờ xem live] = @giờ_xem_live, [lượng tiền donate] = @lượng_tiền_donate WHERE [STT] = @STT">
        <DeleteParameters>
            <asp:Parameter Name="STT" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="STT" Type="Int32" />
            <asp:Parameter Name="Tên_khách_hàng_xem_live" Type="String" />
            <asp:Parameter Name="ngày_xem_live" Type="String" />
            <asp:Parameter Name="giờ_xem_live" Type="String" />
            <asp:Parameter Name="lượng_tiền_donate" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Tên_khách_hàng_xem_live" Type="String" />
            <asp:Parameter Name="ngày_xem_live" Type="String" />
            <asp:Parameter Name="giờ_xem_live" Type="String" />
            <asp:Parameter Name="lượng_tiền_donate" Type="String" />
            <asp:Parameter Name="STT" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <a href="../them.aspx">Thêm khác hàng </a>
</asp:Content>

