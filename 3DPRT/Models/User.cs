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
        [StringLength(50, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 8)]
        [RegularExpression(@"^((?=.*[a-z])(?=.*[A-Z])(?=.*\d)).+$", ErrorMessage="Must contain at least one digit, one lower and one upper case character.")]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get ; set; }
        public Role Role { get; set; }

        public virtual ICollection<Order> Orders { get; set; }

    }
}