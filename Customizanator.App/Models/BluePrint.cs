using System.ComponentModel.DataAnnotations;
namespace _Customizanator.Models
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