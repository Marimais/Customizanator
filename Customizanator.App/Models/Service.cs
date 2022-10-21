using System.ComponentModel.DataAnnotations;

namespace _Customizanator.Models
{
    public class Service
    {
        [Key]
        public int ID { get; set; }
        [Required]
        public int Price { get; set; }
    }
}