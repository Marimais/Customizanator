using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace _Customizanator.Models
{
    public class Order
    {
        [Key]
        public int ID { get; set; }
        public int Cost { get; set; }
        public int Count { get; set; }

        public virtual ICollection<Service> Services { get; set; }
    }
}