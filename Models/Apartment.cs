using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Setl.Models
{
    public class Apartment
    {
        public string number { get; set; }
        public decimal area { get; set; }
        public decimal price { get; set; }
        public decimal price_m2 { get; set; }
    }
}
