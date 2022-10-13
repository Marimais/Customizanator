using System.ComponentModel.DataAnnotations;

namespace _3DPRT.Models
{
    public class Stock
    {
        [Required]
        public virtual Color Color { get; set; }
        [Required]
        public virtual PrintingMaterial Material { get; set; }
    }
}