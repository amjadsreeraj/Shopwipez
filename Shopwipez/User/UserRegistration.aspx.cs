using BO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using DAL;

namespace Shopwipez.User
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            UserProfile u= new UserProfile();
            u.FirstName = TxtFname.Text;
            u.Lastname = TxtLname.Text;
            u.Email = TxtEmail.Text;
            u.Phone = TxtPhone.Text;
            u.HouseName = TxtHouseName.Text;
            u.Street = TxtStreet.Text;
            u.City = TxtCity.Text;
            u.State = TxtState.Text;
            u.Country = TxtCountry.Text;
            u.Zip = int.Parse(TxtZip.Text);
            u.Profilrpic = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~/ProfilePicture/" + FileUpload1.FileName));
            u.UserId = User.Identity.GetUserId();
            UserProfileHelper.InsertUserProfile(u);

        }
    }
}