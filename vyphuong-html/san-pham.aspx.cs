using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class san_pham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HtmlMeta meta = new HtmlMeta();
            meta.Name = "description";
            var dv1 = (DataView)ObjectDataSource2.Select();

            if (Request.QueryString["p"] != null)
            {
                var dv = new ProductCategory().ProductCategorySelectOne(Request.QueryString["p"]).DefaultView;
                if (dv.Count > 0)
                {
                    lbTitle.Text = dv[0]["ProductCategoryName"].ToString();

                    Page.Title = dv[0]["MetaTitle"].ToString();
                    meta.Content = dv[0]["MetaDescription"].ToString();
                    Header.Controls.Add(meta);


                }
            }
            else
            {
                lbTitle.Text = "Sản Phẩm";

                Page.Title = "Sản Phẩm";
                meta.Content = "Sản Phẩm";
                Header.Controls.Add(meta);
            }
            if (Session["PageSize"] != null)
            {
                ddlPageSize.SelectedValue = Session["PageSize"].ToString();
                DataPager1.PageSize = Convert.ToInt32(Session["PageSize"]);
            }
            if (((DataView)ObjectDataSource2.Select()).Count <= DataPager1.PageSize)
            {
                DataPager1.Visible = false;
            }
        }

    }
    protected void ddlPageSize_SelectedIndexChanged(object sender, EventArgs e)
    {

        Session["PageSize"] = ddlPageSize.SelectedValue;
        ddlPageSize.SelectedValue = Session["PageSize"].ToString();
        DataPager1.PageSize = Convert.ToInt32(Session["PageSize"]);
    }
    protected string progressTitle(object input)
    {
        var convertTitle = new ConvertTitle();
        return convertTitle.convertToLowerCase(input.ToString());
    }
}