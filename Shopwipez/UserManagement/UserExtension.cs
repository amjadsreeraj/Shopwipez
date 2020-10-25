using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Shopwipez.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Shopwipez.UserManagement
{
    public class UserExtension
    {
        public static void CreateRole()
        {



            ApplicationDbContext context = new ApplicationDbContext();

            IdentityResult IdRoleResult;
            // IdentityResult IdUserResult;

            // Create a RoleStore object by using the ApplicationDbContext object.
            // The RoleStore is only allowed to contain IdentityRole objects.
            var roleStore = new RoleStore<IdentityRole>(context);

            // Create a RoleManager object that is only allowed to contain IdentityRole objects.
            // When creating the RoleManager object, you pass in (as a parameter) a new RoleStore object.
            var roleMgr = new RoleManager<IdentityRole>(roleStore);


            // Then, you create the "Administrator" role if it doesn't already exist.
            if (!roleMgr.RoleExists("Administrator"))
            {
                IdRoleResult = roleMgr.Create(new IdentityRole("Administrator"));
                if (!IdRoleResult.Succeeded)
                {
                    // Handle the error condition if there's a problem creating the RoleManager object.
                }
            }
            if (!roleMgr.RoleExists("Customer"))
            {
                IdRoleResult = roleMgr.Create(new IdentityRole("Customer"));
                if (!IdRoleResult.Succeeded)
                {
                    // Handle the error condition if there's a problem creating the RoleManager object.
                }
            }
            //if (!roleMgr.RoleExists("Company"))
            //{
            //    IdRoleResult = roleMgr.Create(new IdentityRole("Company"));
            //    if (!IdRoleResult.Succeeded)
            //    {
            //        // Handle the error condition if there's a problem creating the RoleManager object.
            //    }
            //}
            //if (!roleMgr.RoleExists("Staff"))
            //{
            //    IdRoleResult = roleMgr.Create(new IdentityRole("Staff"));
            //    if (!IdRoleResult.Succeeded)
            //    {
            //        // Handle the error condition if there's a problem creating the RoleManager object.
            //    }
            //}
            //if (!roleMgr.RoleExists("CreativeStaff"))
            //{
            //    IdRoleResult = roleMgr.Create(new IdentityRole("CreativeStaff"));
            //    if (!IdRoleResult.Succeeded)
            //    {
            //        // Handle the error condition if there's a problem creating the RoleManager object.
            //    }
            //}
            //if (!roleMgr.RoleExists("VedioPhtStaff"))
            //{
            //    IdRoleResult = roleMgr.Create(new IdentityRole("VedioPhtStaff"));
            //    if (!IdRoleResult.Succeeded)
            //    {
            //        // Handle the error condition if there's a problem creating the RoleManager object.
            //    }
            //}
        }
        public static bool IsInRole(string userId, string roleName)
        {
            ApplicationDbContext context = new ApplicationDbContext();

            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            if (userMgr.IsInRole(userId, roleName))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public static bool AddUserToRole(string userId, string roleName)
        {
            // Access the application context and create result variables.
            ApplicationDbContext context = new ApplicationDbContext();

            IdentityResult IdUserResult;
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            IdUserResult = userMgr.AddToRole(userId, roleName);
            return IdUserResult.Succeeded;
        }
    }
}