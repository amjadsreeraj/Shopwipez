using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Shopwipez.Models;
using Shopwipez.UserManagement;

namespace Shopwipez.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
            OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Validate the user password
                var manager = new UserManager();
                ApplicationUser user = manager.Find(UserName.Text, Password.Text);
                if (user != null)
                {
                    Session["userId"] = user.Id;
                    ApplicationDbContext context = new ApplicationDbContext();
                    var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
                    IdentityHelper.SignIn(manager, user, RememberMe.Checked);
                    if (UserExtension.IsInRole(user.Id, "Administrator"))
                    {
                        Response.Redirect("~/Admin/AdminHome.aspx");
                    }
                    else if (UserExtension.IsInRole(user.Id, "Customer"))
                    {
                        Response.Redirect("~/User/UserHome.aspx");
                    }


                }
                else
                {
                    FailureText.Text = "Invalid username or password.";
                    ErrorMessage.Visible = true;
                }
            }
        }
    }
}