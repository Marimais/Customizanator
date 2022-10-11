using System.ComponentModel.DataAnnotations;

namespace _3DPRT.Models
{
    public class Printing:Service
    {
        [Required]
        public string Color { get; set; }
        [Required]
        public string Material { get; set; }
        [Required]
        public  Model Model;
    }
}