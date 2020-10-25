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
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataSet ds = CategoryHelper.ViewAllCategory();
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "CategoryName";
                DropDownList1.DataValueField = "CategoryId";
                DropDownList1.DataBind();
            }

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            Product p = new Product();
            p.ProductName = TxtPname.Text;
            p.Description = TxtDescription.Text;
            p.CategoryId = int.Parse(DropDownList1.SelectedItem.Value);
            p.Weight = TxtWeight.Text;
            p.Price = int.Parse(TxtPrice.Text);
            p.Dimentions = TxtDiamentions.Text;
            p.Composition = TxtCompositions.Text;
            p.SizeDfit = TxtSizeDfit.Text;
            p.OtherInfo = TxtOtherInfo.Text;
            p.Size = TxtSize.Text;
            p.Color = TxtColor.Text;
            p.Pimage1 = FileUpload1.FileName;
            p.Pimage2 = FileUpload2.FileName;
            p.Pimage3 = FileUpload3.FileName;
            p.Pimage4 = FileUpload4.FileName;
            FileUpload1.SaveAs(Server.MapPath("~/Image/" + FileUpload1.FileName));
            FileUpload2.SaveAs(Server.MapPath("~/image/" + FileUpload2.FileName));
            FileUpload3.SaveAs(Server.MapPath("~/image/" + FileUpload3.FileName));
            FileUpload4.SaveAs(Server.MapPath("~/image/" + FileUpload4.FileName));
            ProductHelper.InsertProduct(p);
            Response.Redirect("AddProduct");

        }
    }
}