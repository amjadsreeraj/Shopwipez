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
    public partial class ViewSingleProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                int id = int.Parse(Request.QueryString["id"].ToString());
                DataSet ds = ProductHelper.ViewSingleProduct(id);
                ListView1.DataSource = ds;
                ListView1.DataBind();
            }
        }

        protected void BtnCart_Click(object sender, EventArgs e)
        {
            string userid = User.Identity.GetUserId();

            Button btn = (Button)sender;
            ListViewItem item = (ListViewItem)btn.NamingContainer;
            Label id = (Label)item.FindControl("ProductIdLabel");
            TextBox quantity = (TextBox)item.FindControl("TxtQuantity");
            Cart c = new Cart();
            c.ProductId = int.Parse(id.Text);
            c.Quantity = int.Parse(quantity.Text);
            c.UserProfileId = UserProfileHelper.GetUserprofileId(userid);
            CartHelper.InsertCart(c);
           
        }
    }
}