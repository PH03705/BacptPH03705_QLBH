<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h2>Thế giới điện tử và đồ gia dụng</h2>
            </hgroup>
            <p>
                Hãy đến với chúng tôi để trang bị những công nghệ mới nhất và tốt nhất cho gia đình bạn,
                Hãy tới và trải nghiệm những công nghệ mới nhất trên thế giới hiện nay... Hãy đem sự tiện dụng và thoải mái
                cho ngôi nhà và người thân của bạn.
                Có thắc mắc hãy liên hệ với chúng tôi để được hỗ trợ chu đáo nhất. Thân ái!
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Thông tin sản phẩm, hóa đơn và khách hàng</h3>
    <ol class="round">
        <li class="one">
            <h5>Khách Hàng</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaKhachHang" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="MaKhachHang" HeaderText="MaKhachHang" ReadOnly="True" SortExpression="MaKhachHang" />
                    <asp:BoundField DataField="TenKhachHang" HeaderText="TenKhachHang" SortExpression="TenKhachHang" />
                    <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                    <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BACPTPH03705_QLBHConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKhachHang] = @MaKhachHang" InsertCommand="INSERT INTO [KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SDT], [Email]) VALUES (@MaKhachHang, @TenKhachHang, @DiaChi, @SDT, @Email)" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKhachHang] = @TenKhachHang, [DiaChi] = @DiaChi, [SDT] = @SDT, [Email] = @Email WHERE [MaKhachHang] = @MaKhachHang">
                <DeleteParameters>
                    <asp:Parameter Name="MaKhachHang" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaKhachHang" Type="String" />
                    <asp:Parameter Name="TenKhachHang" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="SDT" Type="Int32" />
                    <asp:Parameter Name="Email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenKhachHang" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="SDT" Type="Int32" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="MaKhachHang" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="two">
            <h5>Hóa Đơn</h5>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHoaDon" DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:BoundField DataField="MaHoaDon" HeaderText="MaHoaDon" ReadOnly="True" SortExpression="MaHoaDon" />
                    <asp:BoundField DataField="NgayGiaoDich" HeaderText="NgayGiaoDich" SortExpression="NgayGiaoDich" />
                    <asp:BoundField DataField="MaKhachHang" HeaderText="MaKhachHang" SortExpression="MaKhachHang" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BACPTPH03705_QLBHConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHoaDon] = @MaHoaDon" InsertCommand="INSERT INTO [HoaDon] ([MaHoaDon], [NgayGiaoDich], [MaKhachHang]) VALUES (@MaHoaDon, @NgayGiaoDich, @MaKhachHang)" SelectCommand="SELECT * FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [NgayGiaoDich] = @NgayGiaoDich, [MaKhachHang] = @MaKhachHang WHERE [MaHoaDon] = @MaHoaDon">
                <DeleteParameters>
                    <asp:Parameter Name="MaHoaDon" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaHoaDon" Type="String" />
                    <asp:Parameter Name="NgayGiaoDich" Type="DateTime" />
                    <asp:Parameter Name="MaKhachHang" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NgayGiaoDich" Type="DateTime" />
                    <asp:Parameter Name="MaKhachHang" Type="String" />
                    <asp:Parameter Name="MaHoaDon" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="three">
            <h5>Chi Tiết Hóa Đơn</h5>
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource3">
                <Fields>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="MaHoaDon" HeaderText="MaHoaDon" SortExpression="MaHoaDon" />
                    <asp:BoundField DataField="MaSanPham" HeaderText="MaSanPham" SortExpression="MaSanPham" />
                    <asp:BoundField DataField="SoLuongMua" HeaderText="SoLuongMua" SortExpression="SoLuongMua" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BACPTPH03705_QLBHConnectionString %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ChiTietHoaDon] ([ID], [MaHoaDon], [MaSanPham], [SoLuongMua]) VALUES (@ID, @MaHoaDon, @MaSanPham, @SoLuongMua)" SelectCommand="SELECT * FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [MaHoaDon] = @MaHoaDon, [MaSanPham] = @MaSanPham, [SoLuongMua] = @SoLuongMua WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="String" />
                    <asp:Parameter Name="MaHoaDon" Type="String" />
                    <asp:Parameter Name="MaSanPham" Type="String" />
                    <asp:Parameter Name="SoLuongMua" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaHoaDon" Type="String" />
                    <asp:Parameter Name="MaSanPham" Type="String" />
                    <asp:Parameter Name="SoLuongMua" Type="Int32" />
                    <asp:Parameter Name="ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="four">
            <h5>Sản Phẩm</h5>
            <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSanPham" DataSourceID="SqlDataSource4">
                <Fields>
                    <asp:BoundField DataField="MaSanPham" HeaderText="MaSanPham" ReadOnly="True" SortExpression="MaSanPham" />
                    <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai" />
                    <asp:BoundField DataField="TenSanPham" HeaderText="TenSanPham" SortExpression="TenSanPham" />
                    <asp:BoundField DataField="GiaSanPham" HeaderText="GiaSanPham" SortExpression="GiaSanPham" />
                    <asp:BoundField DataField="MoTaSanPham" HeaderText="MoTaSanPham" SortExpression="MoTaSanPham" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BACPTPH03705_QLBHConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSanPham] = @MaSanPham" InsertCommand="INSERT INTO [SanPham] ([MaSanPham], [MaLoai], [TenSanPham], [GiaSanPham], [MoTaSanPham]) VALUES (@MaSanPham, @MaLoai, @TenSanPham, @GiaSanPham, @MoTaSanPham)" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaLoai] = @MaLoai, [TenSanPham] = @TenSanPham, [GiaSanPham] = @GiaSanPham, [MoTaSanPham] = @MoTaSanPham WHERE [MaSanPham] = @MaSanPham">
                <DeleteParameters>
                    <asp:Parameter Name="MaSanPham" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaSanPham" Type="String" />
                    <asp:Parameter Name="MaLoai" Type="String" />
                    <asp:Parameter Name="TenSanPham" Type="String" />
                    <asp:Parameter Name="GiaSanPham" Type="Decimal" />
                    <asp:Parameter Name="MoTaSanPham" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaLoai" Type="String" />
                    <asp:Parameter Name="TenSanPham" Type="String" />
                    <asp:Parameter Name="GiaSanPham" Type="Decimal" />
                    <asp:Parameter Name="MoTaSanPham" Type="String" />
                    <asp:Parameter Name="MaSanPham" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="five">
            <h5>Loại Sản Phẩm</h5>
            <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaLoai" DataSourceID="SqlDataSource5">
                <Fields>
                    <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" ReadOnly="True" SortExpression="MaLoai" />
                    <asp:BoundField DataField="TenSanPham" HeaderText="TenSanPham" SortExpression="TenSanPham" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:BACPTPH03705_QLBHConnectionString %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [MaLoai] = @MaLoai" InsertCommand="INSERT INTO [LoaiSanPham] ([MaLoai], [TenSanPham]) VALUES (@MaLoai, @TenSanPham)" SelectCommand="SELECT * FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenSanPham] = @TenSanPham WHERE [MaLoai] = @MaLoai">
                <DeleteParameters>
                    <asp:Parameter Name="MaLoai" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaLoai" Type="String" />
                    <asp:Parameter Name="TenSanPham" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenSanPham" Type="String" />
                    <asp:Parameter Name="MaLoai" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
    </ol>
</asp:Content>
