using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace _3DPRT.Models
{
    public class User
    {
        [Key]
        public int ID { get; set; }
        public string FirstName { get; set; }
        public string LatsName { get; set; }
        [Required]
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