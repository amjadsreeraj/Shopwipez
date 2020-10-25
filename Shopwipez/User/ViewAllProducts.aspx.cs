using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using BO;

namespace Shopwipez.User
{
    public partial class ViewAllProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet ds = ProductHelper.ViewAllProduct();
                ListView1.DataSource = ds;
                ListView1.DataBind();
            }
        }

       

        protected void BtnToCart_Click(object sender, ImageClickEventArgs e)
        {
            string userid = User.Identity.GetUserId();

            ImageButton btn = (ImageButton)sender;
            ListViewItem item = (ListViewItem)btn.NamingContainer;
            Label id = (Label)item.FindControl("ProductIdLabel");
            TextBox quantity = (TextBox)item.FindControl("TxtQuantity");
            Cart c = new Cart();
            c.ProductId = int.Parse(id.Text);
            c.Quantity = 1;
            c.UserProfileId = UserProfileHelper.GetUserprofileId(userid);
            CartHelper.InsertCart(c);
            Response.Redirect("ViewAllProducts");
        }

        protected void BtnDetailView_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            ListViewItem item = (ListViewItem)btn.NamingContainer;
            Label id = (Label)item.FindControl("ProductIdLabel");
            Response.Redirect("ViewSingleProduct.aspx?id="+id.Text);
        }
    }
}