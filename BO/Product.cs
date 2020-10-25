using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BO
{
    public class Product
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string Description { get; set; }
        public int CategoryId { get; set; }
        public string Weight { get; set; }
        public int Price { get; set; }
        public string Dimentions { get; set; }
        public string Composition { get; set; }
        public string SizeDfit { get; set; }
        public string OtherInfo { get; set; }
        public string Size { get; set; }
        public string Color { get; set; }
        public string Pimage1 { get; set; }
        public string Pimage2 { get; set; }
        public string Pimage3 { get; set; }
        public string Pimage4 { get; set; }
    }
}
