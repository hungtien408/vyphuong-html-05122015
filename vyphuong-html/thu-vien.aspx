<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="thu-vien.aspx.cs" Inherits="thu_vien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>VY PHƯƠNG</title>
    <meta name="description" content="VY PHƯƠNG" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAside" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1 class="title-about">
        Thư viện</h1>
    <div class="library-group">
        <div class="colno-5">
            <div class="librarya">
                <a href="#" class="library-img">
                    <img src="assets/images/img-library-1.jpg" alt="" />
                </a>
                <h5 class="library-name">
                    <a href="#">BST tóc cô dâu đẹp 2016</a></h5>
            </div>
        </div>
        <div class="colno-5">
            <div class="librarya">
                <a href="#" class="library-img">
                    <img src="assets/images/img-library-2.jpg" alt="" />
                </a>
                <h5 class="library-name">
                    <a href="#">Tóc đẹp Thu Đông 2016</a></h5>
            </div>
        </div>
        <div class="colno-5">
            <div class="librarya">
                <a href="#" class="library-img">
                    <img src="assets/images/img-library-3.jpg" alt="" />
                </a>
                <h5 class="library-name">
                    <a href="#">BST kiểu tóc đi cùng năm tháng</a></h5>
            </div>
        </div>
        <div class="colno-5">
            <div class="librarya">
                <a href="#" class="library-img">
                    <img src="assets/images/img-library-4.jpg" alt="" />
                </a>
                <h5 class="library-name">
                    <a href="#">BST tóc ép phồng duyên dáng</a></h5>
            </div>
        </div>
        <div class="colno-5">
            <div class="librarya">
                <a href="#" class="library-img">
                    <img src="assets/images/img-library-5.jpg" alt="" />
                </a>
                <h5 class="library-name">
                    <a href="#">Hướng dẫn tạo mẫu tóc đẹp</a></h5>
            </div>
        </div>
        <div class="colno-5">
            <div class="librarya">
                <a href="#" class="library-img">
                    <img src="assets/images/img-library-6.jpg" alt="" />
                </a>
                <h5 class="library-name">
                    <a href="#">BST Kiểu tóc ngắn đẹp như Sao</a></h5>
            </div>
        </div>
    </div>
    <div class="wrapper-video">
        <div class="video-details">
                <div id="jwplayer"></div>
                <script type="text/javascript">
                    $(document).ready(function () {
                        jwplayer('jwplayer').setup({
                            file: "https://youtu.be/wDJ5nol2JKs",
                            flashplayer: "assets/js/jwplayer.flash.swf",
                            width: '100%',
                            aspectratio: '16:9'
                        });
                        jwplayer('jwplayer').play();
                    });
                </script>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
