using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Shopwipez.Models;
using Shopwipez.UserManagement;

namespace Shopwipez.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = new UserManager();
            var user = new ApplicationUser() { UserName = UserName.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                UserExtension.CreateRole();
                IdentityHelper.SignIn(manager, user, isPersistent: false);
                string userId = user.Id;
                Session["userId"] = userId;
                UserExtension.AddUserToRole(userId, "Customer");
                Response.Redirect("~/User/UserRegistration.aspx");
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);

            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}