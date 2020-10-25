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
    public partial class ProfileSetting : System.Web.UI.Page
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
            TextBox Fname = (TextBox)item.FindControl("FirstNameLabel");
            TextBox Lname = (TextBox)item.FindControl("LastnameLabel");
            TextBox Email = (TextBox)item.FindControl("EmailLabel");
            TextBox Phone = (TextBox)item.FindControl("PhoneLabel");
            Label Picture = (Label)item.FindControl("ProfilrpicLabel");
            FileUpload Pimage1 = (FileUpload)item.FindControl("FileUpload1");
            UserProfile u = new UserProfile();
            u.FirstName = Fname.Text;
            u.Lastname = Lname.Text;
            u.Email = Email.Text;
            u.Phone = Phone.Text;
            if (Pimage1.FileName != "")
            {
                u.Profilrpic = Pimage1.FileName;
                Pimage1.SaveAs(Server.MapPath("~/ProfilePicture/" + u.Profilrpic));
            }
            else
            {
                u.Profilrpic = Picture.Text;
            }
            u.UserProfileId = UserProfileId;
            UserProfileHelper.UpdateProfileSetting(u);
            Response.Redirect("ProfileSetting");
        }
    }
}