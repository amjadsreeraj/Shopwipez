using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shopwipez.Admin
{
    public partial class ManageProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataSet ds = ProductHelper.ViewAllProduct();
                ListView1.DataSource = ds;
                ListView1.DataBind();
            }
        }

        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            ListViewItem item = (ListViewItem)btn.NamingContainer;
            Label id = (Label)item.FindControl("ProductIdLabel");
            Response.Redirect("UpdateProduct?id="+id.Text);
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            ListViewItem item = (ListViewItem)btn.NamingContainer;
            Label id = (Label)item.FindControl("ProductIdLabel");
            int pid=int.Parse(id.Text);
            ProductHelper.DeleteProduct(pid);
            Response.Redirect("ManageProduct");
        }
    }
}