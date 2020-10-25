using BO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
  public static  class CategoryHelper
    {
      public static void InsertCategory(Category c)
      {
          DataManager.InsertUpdateDelete("InserCategory", c.CategoryName);
      }
       public static void UpdateCategory(Category c)
      {
          DataManager.InsertUpdateDelete("UpdateCategory",c.CategoryId, c.CategoryName);
      }
       public static void DeleteCategory(Category c)
      {
          DataManager.InsertUpdateDelete("DeleteCategory", c.CategoryId);
      }
       public static DataSet ViewAllCategory()
      {
          DataSet ds = DataManager.GetDataSet("ViewAllCategoery");
          return ds;
      }
    }
}
