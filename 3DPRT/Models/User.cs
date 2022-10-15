using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web.UI.WebControls;

namespace _3DPRT.Models
{
    public class User
    {
        public User(string email, string password)
        {
            Email = email;
            Password = password;
        }

        [Key]
        public int ID { get; set; }
        [MaxLength(50)]
        public string FirstName { get; set; }
        [MaxLength(50)]
        public string LatsName { get; set; }
        [Required]
        [MaxLength(50)]
        public string Email { get; set; }        
        [Required]
        [MaxLength(100)]
        [DataType(DataType.Password)]
        public string Password { get ; set; }
        public virtual Role Role { get; set; }

        public virtual ICollection<Order> Orders { get; set; }

    }
}