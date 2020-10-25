using BO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
   public static class ProductHelper
    {
       public static void InsertProduct(Product p)
       {
           DataManager.InsertUpdateDelete("InsertProduct",p.ProductName,p.Description,p.CategoryId,p.Weight,p.Price,p.Dimentions,p.Composition,p.SizeDfit,p.OtherInfo,p.Size,p.Color,p.Pimage1,p.Pimage2,p.Pimage3,p.Pimage4);
       }
       public static void UpdateProduct(Product p)
       {
           DataManager.InsertUpdateDelete("UpdateProduct",p.ProductId,p.ProductName, p.Description, p.CategoryId, p.Weight, p.Price, p.Dimentions, p.Composition, p.SizeDfit, p.OtherInfo, p.Size, p.Color, p.Pimage1, p.Pimage2, p.Pimage3, p.Pimage4);
       }
       public static void DeleteProduct(int id)
       {
           DataManager.InsertUpdateDelete("DeleteProduct", id);
       }
       public static DataSet ViewAllProduct()
       {
           DataSet ds = DataManager.GetDataSet("ViewAllProducts");
           return ds;
       }
            public static DataSet ViewSingleProduct(int id)
       {
           DataSet ds = DataManager.GetDataSet("ViewSingleproduct",id);
           return ds;
       }
    }
}
