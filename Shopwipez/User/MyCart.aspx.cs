using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using DAL;

namespace Shopwipez.User
{
    public partial class MyCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string userid = User.Identity.GetUserId();
                int UserprofileId = UserProfileHelper.GetUserprofileId(userid);
                DataSet ds = CartHelper.ViewMyCart(UserprofileId);
                ListView1.DataSource = ds;
                ListView1.DataBind();
            }
        }
        
        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
             Button btn = (Button)sender;
            ListViewItem item = (ListViewItem)btn.NamingContainer;
            Label id = (Label)item.FindControl("CartIdLabel");
            TextBox Qty = (TextBox)item.FindControl("QuantityLabel");
            int cid = int.Parse(id.Text);
            int quantity = int.Parse(Qty.Text);
            CartHelper.UpdateCart(cid, quantity);
            Response.Redirect("MyCart");
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            ListViewItem item = (ListViewItem)btn.NamingContainer;
            Label id = (Label)item.FindControl("CartIdLabel");
            int cid = int.Parse(id.Text);
            CartHelper.DeleteCart(cid);
            Response.Redirect("MyCart");
        }
    }
}