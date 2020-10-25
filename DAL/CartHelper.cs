using BO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
  public static class CartHelper
    {

      public static void InsertCart(Cart c)
      {
          DataManager.InsertUpdateDelete("InsertCart",c.Quantity,c.ProductId,c.UserProfileId);
      }
          public static DataSet ViewMyCart(int uid)
      {
          DataSet ds = DataManager.GetDataSet("ViewMyCart", uid);
          return ds;
      }
           public static void DeleteCart(int cartId)
      {
          DataManager.InsertUpdateDelete("DeleteCart", cartId);
      }
           public static void UpdateCart(int cartId,int qty)
           {
               DataManager.InsertUpdateDelete("UpdateCart", cartId, qty);
           }
    }
}
