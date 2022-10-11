using System.ComponentModel.DataAnnotations;

namespace _3DPRT.Models
{
    public class Printing:Service
    {
        [Required]
        public Colors Color { get; set; }
        [Required]
        public PrintingMaterials Material { get; set; }
        [Required]
        public  Model Model;
    }
}