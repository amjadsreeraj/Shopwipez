using BO;
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
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataSet ds = CategoryHelper.ViewAllCategory();
                ListView1.DataSource = ds;
                ListView1.DataBind();
            }
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            Category c = new Category();
            c.CategoryName = TxtCat.Text;
            CategoryHelper.InsertCategory(c);
            Response.Redirect("AddCategory");
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            ListViewItem item = (ListViewItem)btn.NamingContainer;
            Label Cid = (Label)item.FindControl("CategoryIdLabel");
            TextBox Cname = (TextBox)item.FindControl("CategoryNameLabel");
            Category c1 = new Category();
            c1.CategoryId = int.Parse(Cid.Text);
            c1.CategoryName = Cname.Text;
            
            CategoryHelper.UpdateCategory(c1);
            Response.Redirect("AddCategory");

        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            ListViewItem item = (ListViewItem)btn.NamingContainer;
            Label Cid = (Label)item.FindControl("CategoryIdLabel");
           
            Category c1 = new Category();
            c1.CategoryId = int.Parse(Cid.Text);


            CategoryHelper.DeleteCategory(c1);
            Response.Redirect("AddCategory");
        }
    }
}