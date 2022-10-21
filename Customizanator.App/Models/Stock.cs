using System.ComponentModel.DataAnnotations;

namespace _Customizanator.Models
{
    public class Stock
    {
        [Required]
        public virtual Color Color { get; set; }
        [Required]
        public virtual PrintingMaterial Material { get; set; }
    }
}