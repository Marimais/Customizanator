using System.ComponentModel.DataAnnotations;

namespace _3DPRT.Models
{
    public class Stock
    {
        [Required]
        public Color Color { get; set; }
        [Required]
        public PrintingMaterial Material { get; set; }
    }
}