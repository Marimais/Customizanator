using System.ComponentModel.DataAnnotations;

namespace _3DPRT.Models
{
    public class Service
    {
        [Key]
        public int ID { get; set; }
        [Required]
        public string ServiceName { get; set; }
    }
}