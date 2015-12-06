<%@ Page Title="" Language="C#" MasterPageFile="~/site-home.master" AutoEventWireup="true" CodeFile="san-pham.aspx.cs" Inherits="san_pham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphAside" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="head head-bgd">
        <h4 class="text-uppercase head-tit">
            <asp:Label ID="lbTitle" runat="server"></asp:Label></h4>
        <div class="pager-select">
            <label class="pager-lb">sản phẩm / trang</label>
            <div class="select-box">
                <asp:DropDownList ID="ddlPageSize" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged" CssClass="selectb" runat="server">
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
    </div>
    <div class="row product-tb">
        <asp:ListView ID="ListView2" runat="server"
            DataSourceID="ObjectDataSource2"
            EnableModelValidation="True">
            <ItemTemplate>
                <div class="col-xs-3 element-item">
                    <div class="product-box">
                        <a href='<%# progressTitle(Eval("ProductName")) + "-pd-" + Eval("ProductID")+ ".aspx" %>' class="product-img fullbox-img">
                            <img id="Img1" class="hideo" src='<%# "~/res/product/thumbs/" + Eval("ImageName") %>'
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
                <asp:QueryStringParameter Name="CategoryID" QueryStringField="p" Type="String" />
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
    <div class="pager">
        <asp:DataPager ID="DataPager1" runat="server" PageSize="12" PagedControlID="ListView2">
            <Fields>
                <asp:NextPreviousPagerField ButtonType="Link" FirstPageText="«" ShowFirstPageButton="true"
                    ShowNextPageButton="false" ShowPreviousPageButton="false" PreviousPageText="‹"
                    RenderDisabledButtonsAsLabels="true" ButtonCssClass="first icon-backward" />
                <asp:NextPreviousPagerField ButtonType="Link" FirstPageText="«" ShowFirstPageButton="false"
                    ShowNextPageButton="false" ShowPreviousPageButton="true" PreviousPageText="‹"
                    RenderDisabledButtonsAsLabels="true" ButtonCssClass="prev icon-caret-left" />
                <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="current" CurrentPageLabelCssClass="current" />
                <asp:NextPreviousPagerField ButtonType="Link" LastPageText="»" ShowLastPageButton="false"
                    ShowNextPageButton="true" ShowPreviousPageButton="false" ButtonCssClass="next icon-caret-right"
                    NextPageText="›" RenderDisabledButtonsAsLabels="true" />
                <asp:NextPreviousPagerField ButtonType="Link" LastPageText="»" ShowLastPageButton="True"
                    ShowNextPageButton="false" ShowPreviousPageButton="false" ButtonCssClass="last icon-forward"
                    NextPageText="›" RenderDisabledButtonsAsLabels="true" />
            </Fields>
        </asp:DataPager>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>

