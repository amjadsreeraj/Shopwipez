using BO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public static class UserProfileHelper
    {
        public static void InsertUserProfile(UserProfile u)
        {
            DataManager.InsertUpdateDelete("InsertUserProfile", u.FirstName, u.Lastname, u.Email, u.Phone, u.HouseName, u.Street, u.City, u.State, u.Country, u.Zip, u.Profilrpic, u.UserId);
        }

        public static int GetUserprofileId(string userId)
        {
            int id = DataManager.GetSingleInt("GetUserprofileId", userId);
            return id;
        }
        public static DataSet ViewMyprofileDetails(string userId)
        {
            DataSet ds = DataManager.GetDataSet("ViewMyprofileDetails", userId);
            return ds;
        }
        public static void UpdateAddressBook(UserProfile u)
        {
            DataManager.InsertUpdateDelete("UpdateAddressBook", u.HouseName, u.Street, u.City, u.State, u.Country, u.Zip, u.UserProfileId);
        }
        public static void UpdateProfileSetting(UserProfile u)
        {
            DataManager.InsertUpdateDelete("UpdateProfileSetting", u.FirstName, u.Lastname, u.Email, u.Phone, u.Profilrpic, u.UserProfileId);
        }

    }
}
