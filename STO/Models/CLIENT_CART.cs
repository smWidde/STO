using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace STO.Models
{
    public class CLIENT_CART
    {
        public IEnumerable<CLIENT> Client { get; set; }
        public IEnumerable<CART> Cart { get; set; }
    }
}