using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace STO.Models
{
    public class ORDER
    {
        public int ID { get; set; }
        public int QUANTITY { get; set; }
        public int IdProduct { get; set; }
    }
}