using System.ComponentModel.DataAnnotations;

namespace _3DPRT.Models
{
    public class CNC:Service
    {
        
        [Required]
        public int MaterialThickness { get; set; }
        [Required]
        public int CutDepth { get; set; }

        [Required]
        public virtual BluePrint Image { get; set; }
        [Required]
        public virtual Materials Material { get; set; }
    }
}