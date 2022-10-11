using System.ComponentModel.DataAnnotations;

namespace _3DPRT.Models
{
    public class CNC:Service
    {
        [Required]
        public BluePrint Image { get; set; }
        [Required]
        public string Material { get; set; }
        [Required]
        public int MaterialThickness { get; set; }
        [Required]
        public int CutDepth { get; set; }
    }
}