using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace STO.Models
{
    public class MASTERS_SERVICES
    {
        public IEnumerable<Masters> Master { get; set; }
        public IEnumerable<Services> Service { get; set; }
    }
}