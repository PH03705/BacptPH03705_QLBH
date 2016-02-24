<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h2>Thông tin liên hệ</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Số điện thoại:</h3>
        </header>
        <p>
            <span class="label">Máy bàn:</span>
            <span>043.662.665</span>
        </p>
        <p>
            <span class="label">Di động:</span>
            <span>0168.282.4552</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Hỗ trợ:</span>
            <span><a href="mailto:Support@example.com">giaidapthongtin@gmail.com</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:Marketing@example.com">tienbac250496@gmail.com</a></span>
        </p>
        <p>
            <span class="label">Chăm sóc khách hàng:</span>
            <span><a href="mailto:General@example.com">chamsockhachhang24h@gmail.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Địa chỉ:</h3>
        </header>
        <p>
            Số 85, đường Nguyễn Đổng Chi<br />
            Nam Từ Liêm, Hà Nội<br />
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.8558013445386!2d105.76221731537242!3d21.03845499282215!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454bf4e31a99f%3A0x6776bcd769081498!2zTmd1eeG7hW4gxJDhu5VuZyBDaGksIFThu6sgTGnDqm0sIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1456306841932" width="800" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
        </p>
    </section>
</asp:Content>