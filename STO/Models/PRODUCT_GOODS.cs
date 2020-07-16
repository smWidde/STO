using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace STO.Models
{
    public class PRODUCT_GOODS
    {
        public IEnumerable<GOODS> Goods { get; set; }
        public IEnumerable<Product> Product { get; set; }
    }
}