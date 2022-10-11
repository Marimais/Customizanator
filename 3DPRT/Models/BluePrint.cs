using System.ComponentModel.DataAnnotations;
namespace _3DPRT.Models
{
    public class BluePrint
    {
        [Key]
        public int ID { get; set; }
        [Required]
        public string ImageTitle { get; set; }
        public string ImagelURL { get; set; }
        public byte[] Image { get; set; }
    }
}