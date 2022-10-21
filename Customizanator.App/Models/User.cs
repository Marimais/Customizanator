#nullable enable
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace _Customizanator.Models
{
    public class User
    {
        public User()
        {

        }
        public User(string email, string password, string? firstName, string? lastName, Role role, List<Order>? orders)
        {
            Email = email;
            Password = password;
            FirstName = firstName;
            LastName=lastName;
            Role = role;
            Orders = orders;
        }

        [Key]
        public int ID { get; set; }
        [MaxLength(50)]
        public string? FirstName { get; set; }=string.Empty;
        [MaxLength(50)]
        public string? LastName { get; set; } = string.Empty;
        [Required]
        [MaxLength(50)]
        public string Email { get; set; }        
        [Required]
        [MaxLength(100)]
        [DataType(DataType.Password)]
        public string Password { get ; set; }
        [Required]
        public virtual Role Role { get; set; }

        public virtual ICollection<Order>? Orders { get; set; }=new List<Order>();

    }
}