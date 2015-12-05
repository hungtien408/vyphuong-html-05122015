<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>VY PHƯƠNG</title>
    <meta name="description" content="VY PHƯƠNG" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphAside" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="head">
        <h4 class="text-uppercase head-tit">Sản phẩm</h4>
        <a href="#" class="more-all">Xem tất cả<span class="icon-play"></span></a>
    </div>
    <%--<div class="row product-tb">
        <div class="col-xs-3 element-item">
            <div class="product-box">
                <a href="#" class="product-img fullbox-img">
                    <img class="hideo" src="assets/images/product-img-1.jpg" alt="" /></a>
                <h4 class="product-name"><a href="#" class="text-uppercase">Silver Lights Shampoo</a></h4>
                <div class="description">Dầu gội cho tóc Highlight</div>
            </div>
        </div>
        <div class="col-xs-3 element-item">
            <div class="product-box">
                <a href="#" class="product-img fullbox-img">
                    <img class="hideo" src="assets/images/product-img-2.jpg" alt="" /></a>
                <h4 class="product-name"><a href="#" class="text-uppercase">Silver Lights Shampoo</a></h4>
                <div class="description">Dầu gội cho tóc Highlight</div>
            </div>
        </div>
        <div class="col-xs-3 element-item">
            <div class="product-box">
                <a href="#" class="product-img fullbox-img">
                    <img class="hideo" src="assets/images/product-img-3.jpg" alt="" /></a>
                <h4 class="product-name"><a href="#" class="text-uppercase">Silver Lights Shampoo</a></h4>
                <div class="description">Dầu gội cho tóc Highlight</div>
            </div>
        </div>
        <div class="col-xs-3 element-item">
            <div class="product-box">
                <a href="#" class="product-img fullbox-img">
                    <img class="hideo" src="assets/images/product-img-4.jpg" alt="" /></a>
                <h4 class="product-name"><a href="#" class="text-uppercase">Silver Lights Shampoo</a></h4>
                <div class="description">Dầu gội cho tóc Highlight</div>
            </div>
        </div>
        <div class="col-xs-3 element-item">
            <div class="product-box">
                <a href="#" class="product-img fullbox-img">
                    <img class="hideo" src="assets/images/product-img-5.jpg" alt="" /></a>
                <h4 class="product-name"><a href="#" class="text-uppercase">Silver Lights Shampoo</a></h4>
                <div class="description">Dầu gội cho tóc Highlight</div>
            </div>
        </div>
        <div class="col-xs-3 element-item">
            <div class="product-box">
                <a href="#" class="product-img fullbox-img">
                    <img class="hideo" src="assets/images/product-img-6.jpg" alt="" /></a>
                <h4 class="product-name"><a href="#" class="text-uppercase">Silver Lights Shampoo</a></h4>
                <div class="description">Dầu gội cho tóc Highlight</div>
            </div>
        </div>
        <div class="col-xs-3 element-item">
            <div class="product-box">
                <a href="#" class="product-img fullbox-img">
                    <img class="hideo" src="assets/images/product-img-7.jpg" alt="" /></a>
                <h4 class="product-name"><a href="#" class="text-uppercase">Silver Lights Shampoo</a></h4>
                <div class="description">Dầu gội cho tóc Highlight</div>
            </div>
        </div>
        <div class="col-xs-3 element-item">
            <div class="product-box">
                <a href="#" class="product-img fullbox-img">
                    <img class="hideo" src="assets/images/product-img-8.jpg" alt="" /></a>
                <h4 class="product-name"><a href="#" class="text-uppercase">Silver Lights Shampoo</a></h4>
                <div class="description">Dầu gội cho tóc Highlight</div>
            </div>
        </div>
    </div>--%>
    <div class="slider-product banner-pro">
        <div id="sliderProduct">
            <asp:ListView ID="ListView1" runat="server"
                DataSourceID="ObjectDataSource1"
                EnableModelValidation="True">
                <ItemTemplate>
                    <div class="slide">
                        <a class="link-b" href='<%# Eval("Website") %> '>
                            <img src='<%# "~/res/advertisement/" + Eval("FileName") %>'
                                visible='<%# string.IsNullOrEmpty( Eval("FileName").ToString()) ? false : 
true %>'
                                runat="server" alt="" /></a>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"
                SelectMethod="AdsBannerSelectAll" TypeName="TLLib.AdsBanner">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" />
                    <asp:Parameter Name="EndRowIndex" Type="String" />
                    <asp:Parameter Name="AdsCategoryID" Type="String" DefaultValue="2" />
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
    <div class="head">
        <h4 class="text-uppercase head-tit">Sản phẩm</h4>
        <a href="#" class="more-all">Xem tất cả<span class="icon-play"></span></a>
    </div>
    <div class="slider-product product-list">
        <div id="listProduct">
            <asp:ListView ID="ListView2" runat="server"
                DataSourceID="ObjectDataSource2"
                EnableModelValidation="True">
                <ItemTemplate>
                    <div class="slide">
                        <div class="product-box">
                            <a href='<%# progressTitle(Eval("ProductName")) + "-pd-" + Eval("ProductID")+ ".aspx" %>' class="product-img fullbox-img">
                                <img class="hideo" src='<%# "~/res/product/thumbs/" + Eval("ImageName") %>'
                                    visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : 
true %>'
                                    runat="server" alt="" /></a>
                            <h4 class="product-name"><a href='<%# progressTitle(Eval("ProductName")) + "-pd-" + Eval("ProductID")+ ".aspx" %>' class="text-uppercase"><%# Eval("ProductName") %> </a></h4>
                            <div class="description"><%# Eval("ProductCategoryName") %> </div>
                        </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server"
                SelectMethod="ProductSelectAll"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" />
                    <asp:Parameter Name="EndRowIndex" Type="String" />
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="PriceFrom" Type="String" />
                    <asp:Parameter Name="PriceTo" Type="String" />
                    <asp:Parameter Name="CategoryID" Type="String" />
                    <asp:Parameter Name="ManufacturerID" Type="String" />
                    <asp:Parameter Name="OriginID" Type="String" />
                    <asp:Parameter Name="Tag" Type="String" />
                    <asp:Parameter Name="InStock" Type="String" />
                    <asp:Parameter Name="IsHot" Type="String" />
                    <asp:Parameter Name="IsNew" Type="String" />
                    <asp:Parameter Name="IsBestSeller" Type="String" />
                    <asp:Parameter Name="IsSaleOff" Type="String" />
                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                    <asp:Parameter Name="FromDate" Type="String" />
                    <asp:Parameter Name="ToDate" Type="String" />
                    <asp:Parameter Name="Priority" Type="String" />
                    <asp:Parameter Name="IsAvailable" Type="String" DefaultValue="true" />
                    <asp:Parameter Name="SortByPriority" Type="String" DefaultValue="true" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
    <div class="head head-bg">
        <h4 class="text-uppercase head-tit">Tin tức</h4>
        <a href="tin-tuc.aspx" class="more-all">Xem tất cả<span class="icon-play"></span></a>
    </div>
    <div class="wrapper-news">
        <div class="news-main">
            <asp:ListView ID="ListView3" runat="server"
                DataSourceID="ObjectDataSource3"
                EnableModelValidation="True">
                <ItemTemplate>
                    <div class="news-box">
                        <a href='<%# progressTitle(Eval("ArticleTitle")) + "-ar-" + Eval("ArticleID")+ ".aspx" %>' class="news-img">
                            <img src='<%# "~/res/article/thumbs/" + Eval("ImageName") %>'
                                visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : 
true %>'
                                runat="server" alt="" /></a>
                        <h4 class="news-name"><a href='<%# progressTitle(Eval("ArticleTitle")) + "-ar-" + Eval("ArticleID")+ ".aspx" %>'><%# Eval("ArticleTitle") %> </a></h4>
                        <div class="desription"><%# Eval("Desription") %> </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server"
                SelectMethod="ArticleSelectAll" TypeName="TLLib.Article">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" DefaultValue="1"/>
                    <asp:Parameter Name="EndRowIndex" Type="String" DefaultValue="1"/>
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="ArticleTitle" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="ArticleCategoryID" Type="String" DefaultValue="2" />
                    <asp:Parameter Name="Tag" Type="String" />
                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                    <asp:Parameter Name="IsHot" Type="String" />
                    <asp:Parameter Name="IsNew" Type="String" />
                    <asp:Parameter Name="FromDate" Type="String" />
                    <asp:Parameter Name="ToDate" Type="String" />
                    <asp:Parameter DefaultValue="true" Name="IsAvailable" Type="String" />
                    <asp:Parameter DefaultValue="" Name="Priority" Type="String" />
                    <asp:Parameter DefaultValue="true" Name="SortByPriority" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
        <div class="news-list">
            <asp:ListView ID="ListView4" runat="server"
                DataSourceID="ObjectDataSource4"
                EnableModelValidation="True">
                <ItemTemplate>
                    <div class="news-box">
                        <a href='<%# progressTitle(Eval("ArticleTitle")) + "-ar-" + Eval("ArticleID")+ ".aspx" %>' class="news-img">
                            <img id="Img1" src='<%# "~/res/article/thumbs/" + Eval("ImageName") %>'
                                visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : 
true %>'
                                runat="server" alt="" /></a>
                        <h4 class="news-name"><a href='<%# progressTitle(Eval("ArticleTitle")) + "-ar-" + Eval("ArticleID")+ ".aspx" %>'><%# Eval("ArticleTitle") %> </a></h4>
                        <div class="desription"><%# Eval("Desription") %> </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="ObjectDataSource4" runat="server"
                SelectMethod="ArticleSelectAll" TypeName="TLLib.Article">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" DefaultValue="2"/>
                    <asp:Parameter Name="EndRowIndex" Type="String" DefaultValue="4" />
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="ArticleTitle" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="ArticleCategoryID" Type="String" DefaultValue="2" />
                    <asp:Parameter Name="Tag" Type="String" />
                    <asp:Parameter DefaultValue="" Name="IsShowOnHomePage" Type="String" />
                    <asp:Parameter Name="IsHot" Type="String" />
                    <asp:Parameter Name="IsNew" Type="String" />
                    <asp:Parameter Name="FromDate" Type="String" />
                    <asp:Parameter Name="ToDate" Type="String" />
                    <asp:Parameter DefaultValue="true" Name="IsAvailable" Type="String" />
                    <asp:Parameter DefaultValue="" Name="Priority" Type="String" />
                    <asp:Parameter DefaultValue="true" Name="SortByPriority" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>

