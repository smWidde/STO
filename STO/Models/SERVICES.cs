using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace STO.Models
{
    public class Services
    {
        public int ID { get; set; }
        public IEnumerable<Product> Product { get; set; }
    }
}