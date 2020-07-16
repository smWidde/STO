using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace STO.Models
{
    public class CART_ORDER
    {
        public IEnumerable<ORDER> Order { get; set; }
        public IEnumerable<CART> Cart { get; set; }
    }
}