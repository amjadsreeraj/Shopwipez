using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BO
{
   public class Review
    {
       public int ReviewId { get; set; }
       public string Rname { get; set; }
       public string Description { get; set; }
       public int ProductId { get; set; }
       public int UserProfileId { get; set; }
    }
}
