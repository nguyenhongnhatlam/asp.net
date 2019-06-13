<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="false" CodeFile="them.aspx.vb" Inherits="them" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="STT" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
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
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="STT" DataSourceID="SqlDataSource2" DefaultMode="Insert" GridLines="Horizontal" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <Fields>
            <asp:BoundField DataField="STT" HeaderText="STT" InsertVisible="False" ReadOnly="True" SortExpression="STT" />
            <asp:BoundField DataField="Tenkh" HeaderText="Tenkh" SortExpression="Tenkh" />
            <asp:BoundField DataField="ngayxemlive" HeaderText="ngayxemlive" SortExpression="ngayxemlive" />
            <asp:BoundField DataField="gioxemlive" HeaderText="gioxemlive" SortExpression="gioxemlive" />
            <asp:BoundField DataField="luongtiendonate" HeaderText="luongtiendonate" SortExpression="luongtiendonate" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Khachhang] WHERE [STT] = @STT" InsertCommand="INSERT INTO [Khachhang] ([Tenkh], [ngayxemlive], [gioxemlive], [luongtiendonate]) VALUES (@Tenkh, @ngayxemlive, @gioxemlive, @luongtiendonate)" ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [STT], [Tenkh], [ngayxemlive], [gioxemlive], [luongtiendonate] FROM [Khachhang]" UpdateCommand="UPDATE [Khachhang] SET [Tenkh] = @Tenkh, [ngayxemlive] = @ngayxemlive, [gioxemlive] = @gioxemlive, [luongtiendonate] = @luongtiendonate WHERE [STT] = @STT">
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
  
</asp:Content>

