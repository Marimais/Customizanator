using System.ComponentModel.DataAnnotations;

namespace _3DPRT.Models
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