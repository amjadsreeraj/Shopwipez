using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using System.Data;
using DAL;
using BO;

namespace Shopwipez.User
{
    public partial class AddressBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userid = User.Identity.GetUserId();
            if (!IsPostBack)
            {
                DataSet ds = UserProfileHelper.ViewMyprofileDetails(userid);
                ListView1.DataSource = ds;
                ListView1.DataBind();
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            string userid = User.Identity.GetUserId();
            int UserProfileId = UserProfileHelper.GetUserprofileId(userid);
            Button btn = (Button)sender;
            ListViewItem item = (ListViewItem)btn.NamingContainer;
            TextBox Hname = (TextBox)item.FindControl("HouseNameLabel");
            TextBox Street = (TextBox)item.FindControl("StreetLabel");
            TextBox City = (TextBox)item.FindControl("CityLabel");
            TextBox State = (TextBox)item.FindControl("StateLabel");
            TextBox Country = (TextBox)item.FindControl("CountryLabel");
            TextBox Zip = (TextBox)item.FindControl("ZipLabel");
            UserProfile u = new UserProfile();
            u.HouseName = Hname.Text;
            u.Street = Street.Text;
            u.City = City.Text;
            u.State = State.Text;
            u.Country = Country.Text;
            u.Zip = int.Parse(Zip.Text);
            u.UserProfileId=UserProfileId;
            UserProfileHelper.UpdateAddressBook(u);
            Response.Redirect("AddressBook");
        }
    }
}