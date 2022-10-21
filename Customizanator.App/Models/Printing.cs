using System.ComponentModel.DataAnnotations;

namespace _Customizanator.Models
{
    public class Printing:Service
    {
        [Required]
        public virtual Color Color { get; set; }
        [Required]
        public virtual PrintingMaterial Material { get; set; }
        [Required]
        public virtual Model Model { get; set; }
    }
}