<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="assets/styles/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/styles/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/styles/uniform-base.css" rel="stylesheet" type="text/css" />
    <link href="assets/styles/nivo-slider.css" rel="stylesheet" type="text/css" />
    <link href="assets/styles/jquery.bxslider.css" rel="stylesheet" />
    <link href="assets/styles/intro.css" rel="stylesheet" type="text/css" />
    <script src="assets/js/jquery.js" type="text/javascript"></script>
    <script src="assets/js/jquery-ui.min.js" type="text/javascript"></script>
    <script src="assets/js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="assets/js/jquery.mb.browser.min.js" type="text/javascript"></script>
    <title>VY PHƯƠNG</title>
    <meta name="description" content="VY PHƯƠNG" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
        <!--header-->
        <div id="header">
            <div id="headerin" class="corner">
                <div class="container">
                    <div class="logo">
                        <a id="A1" href="~/" runat="server">
                            <img class="img-responsive" src="assets/images/logo.png" alt="vy phuong" /></a>
                    </div>
                    <div class="nameco">
                    </div>
                    <div class="logo-bg">
                    </div>
                    <div class="clr">
                    </div>
                </div>
            </div>
        </div>
        <!--end header-->
        <hr />
        <!--main-->
        <div id="banner">
            <div class="slider-wrapper">
                <div id="slider" class="nivoSlider">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1" EnableModelValidation="True">
                        <ItemTemplate>
                            <a href='<%# Eval("Website") %> '>
                                <img id="Img1" src='<%# "~/res/advertisement/" + Eval("FileName") %>' visible='<%# string.IsNullOrEmpty( Eval("FileName").ToString()) ? false : 
true %>' runat="server" alt="" /></a>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="AdsBannerSelectAll"
                        TypeName="TLLib.AdsBanner">
                        <SelectParameters>
                            <asp:Parameter Name="StartRowIndex" Type="String" />
                            <asp:Parameter Name="EndRowIndex" Type="String" />
                            <asp:Parameter Name="AdsCategoryID" Type="String" DefaultValue="1" />
                            <asp:Parameter Name="CompanyName" Type="String" />
                            <asp:Parameter Name="Website" Type="String" />
                            <asp:Parameter Name="FromDate" Type="String" />
                            <asp:Parameter Name="ToDate" Type="String" />
                            <asp:Parameter DefaultValue="true" Name="IsAvailable" Type="String" />
                            <asp:Parameter Name="Priority" Type="String" />
                            <asp:Parameter DefaultValue="true" Name="SortByPriority" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
        </div>
        <div id="mainContent">
            <div class="container">
                <div id="isotopelist" class="wrap-boximg">
                    <div class="box-col element-item">
                        <div class="box-in">
                            <div class="wrap-images">
                                <a href="#" class="intro-img">
                                    <img class="img-responsive" src='assets/images/intro-img-1.png' runat="server" alt="" /></a>
                                <h2 class="name-link">
                                    <a href="#"></a>
                                </h2>
                            </div>
                        </div>
                    </div>
                    <div class="box-col element-item">
                        <div class="box-in">
                            <div class="wrap-images">
                                <a href="san-pham.aspx" class="intro-img">
                                    <img class="img-responsive" src='assets/images/intro-img-2.png' runat="server" alt="" /></a>
                                <h2 class="name-link">
                                    <a href="san-pham.aspx">Sản phẩm</a></h2>
                            </div>
                        </div>
                    </div>
                    <div class="box-col element-item">
                        <div class="box-in">
                            <div class="wrap-images">
                                <a href="services/" class="intro-img">
                                    <img class="img-responsive" src='assets/images/intro-img-3.png' runat="server" alt="" /></a>
                                <h2 class="name-link">
                                    <a href="services/">Dịch vụ</a></h2>
                            </div>
                        </div>
                    </div>
                    <div class="box-col element-item">
                        <div class="box-in">
                            <div class="wrap-images">
                                <a href="#" class="intro-img">
                                    <img class="img-responsive" src='assets/images/intro-img-4.png' runat="server" alt="" /></a>
                                <h2 class="name-link">
                                    <a href="#"></a>
                                </h2>
                            </div>
                        </div>
                    </div>
                    <div class="clr">
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            &copy; COPYRIGHT 2015 - VY PHƯƠNG. ALLRIGHT RESERVED | <a href="http://www.tranlegroup.com"
                target="_blank">THIẾT KẾ WEB TRẦN LÊ</a>
        </div>
        <%--<div id="footer">
            <div class="container">
                <div class="copyright">
                    &copy; COPYRIGHT 2015 - VY PHƯƠNG. ALLRIGHT RESERVED | <a href="http://www.tranlegroup.com" target="_blank">THIẾT KẾ WEB TRẦN LÊ</a>
                </div>
            </div>
        </div>--%>
    </div>
    <script src="assets/js/imagesloaded.pkgd.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="assets/js/jquery.uniform.min.js" type="text/javascript"></script>
    <script src="assets/js/isotope.pkgd.min.js" type="text/javascript"></script>
    <script src="assets/js/jquery.nivo.slider.pack.js" type="text/javascript"></script>
    <script src="assets/js/jquery.textheight.js" type="text/javascript"></script>
    <script src="assets/js/jquery.bgbox.js" type="text/javascript"></script>
    <script src="assets/js/jquery.bxslider.min.js"></script>
    <script src="assets/js/jquery.main.js"></script>
    <!--active-->
    <div id="runScript" runat="server">
    </div>
    </form>
</body>
</html>
