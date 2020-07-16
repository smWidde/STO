using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace STO.Models
{
    public class Product
    {
        public int ID { get; set; }
        public string NAME { get; set; }
        public string DESCRIPTION { get; set; }
        public decimal PRICE { get; set; }
        public IEnumerable<CATEGORY> Category { get; set; }
        public IEnumerable<CAR> Car { get; set; }
    }
}