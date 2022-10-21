using System.ComponentModel.DataAnnotations;

namespace _Customizanator.Models
{
    public class Laser:Service
    {
        [Required]
        public virtual BluePrint Image { get; set;}
        [Required]
        public virtual  Materials Material { get; set;}
        [Required]
        public int MaterialThickness { get; set; } 
        [Required]
        public int CutDepth { get; set; }
    }
}