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
    public partial class UpdateProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                DataSet ds = ProductHelper.ViewSingleProduct(id);
                ListView1.DataSource = ds;
                ListView1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            ListViewItem item = (ListViewItem)btn.NamingContainer;
            Label Pid = (Label)item.FindControl("ProductIdLabel");
            TextBox ProductName = (TextBox)item.FindControl("ProductNameLabel");
            TextBox Description = (TextBox)item.FindControl("DescriptionLabel");
            TextBox CategoryId = (TextBox)item.FindControl("CategoryIdLabel");
            TextBox Weight = (TextBox)item.FindControl("WeightLabel");
            TextBox Price = (TextBox)item.FindControl("PriceLabel");
            TextBox Dimentions = (TextBox)item.FindControl("DimentionsLabel");
            TextBox Composition = (TextBox)item.FindControl("CompositionLabel");
            TextBox SizeDfit = (TextBox)item.FindControl("SizeDfitLabel");
            TextBox OtherInfo = (TextBox)item.FindControl("OtherInfoLabel");
            TextBox Size = (TextBox)item.FindControl("SizeLabel");
            TextBox Color = (TextBox)item.FindControl("ColorLabel");
            Label m1 = (Label)item.FindControl("Pimage1Label");
            Label m2 = (Label)item.FindControl("Pimage2Label");
            Label m3 = (Label)item.FindControl("Pimage3Label");
            Label m4 = (Label)item.FindControl("Pimage4Label");
            FileUpload Pimage1 = (FileUpload)item.FindControl("FileUpload1");
            FileUpload Pimage2 = (FileUpload)item.FindControl("FileUpload2");
            FileUpload Pimage3 = (FileUpload)item.FindControl("FileUpload3");
            FileUpload Pimage4 = (FileUpload)item.FindControl("FileUpload4");
            Product p = new Product();
            p.ProductId = int.Parse(Pid.Text);
            p.ProductName = ProductName.Text;
            p.Description = Description.Text;
            p.CategoryId = int.Parse(CategoryId.Text);
            p.Weight = Weight.Text;
            p.Price = int.Parse(Price.Text);
            p.Dimentions = Dimentions.Text;
            p.Composition = Composition.Text;
            p.SizeDfit = SizeDfit.Text;
            p.OtherInfo = OtherInfo.Text;
            p.Size = Size.Text;
            p.Color = Color.Text;
            if (Pimage1.FileName!="")
            {
                p.Pimage1 = Pimage1.FileName;
                Pimage1.SaveAs(Server.MapPath("~/Image/" + p.Pimage1));
            }
            else
            {
                p.Pimage1 = m1.Text;

            }
            if (Pimage2.FileName !="")
            {
                p.Pimage2 = Pimage2.FileName;
                Pimage2.SaveAs(Server.MapPath("~/Image/" + p.Pimage2));
            }
            else
            {
                p.Pimage2 = m2.Text;

            }
            if (Pimage3.FileName != "")
            {
                p.Pimage3 = Pimage3.FileName;
                Pimage3.SaveAs(Server.MapPath("~/Image/" + p.Pimage3));
            }
            else
            {
                p.Pimage3 = m3.Text;

            }
            if (Pimage4.FileName != "")
            {
                p.Pimage4 = Pimage4.FileName;
                Pimage4.SaveAs(Server.MapPath("~/Image/" + p.Pimage4));
            }
            else
            {
                p.Pimage4 = m4.Text;

            }
            ProductHelper.UpdateProduct(p);
            Response.Redirect("ManageProduct");
       

          

           
        }
    }
}