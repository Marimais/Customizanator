using System.ComponentModel.DataAnnotations;

namespace _Customizanator.Models
{
    public class Model
    {
        [Key]
        public int ID { get; set; }
        public string ModelName { get; set; }
        [Required]
        public string ModelURL { get; set; } 
    }
}