using System;
using System.Web.UI.WebControls;
using _Customizanator.DataAccess;
using _Customizanator.Models;

namespace _Customizanator.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            var context = new PrintingDBContext();

            var users=context.Users;

            string email=txtEmail.Text;
            string password=txtPassword.Text;

            if (string.IsNullOrEmpty(email))
            {
                ltMessage.Text = "Please enter your email";
            }
            else
            {
                ltMessage.Text = "Email not found! Please first Sign Up!";
                foreach (var user in users)
                {
                    if (user.Email==email)
                    {
                        if (user.Password == password)
                            ltMessage.Text = $"Log In successful! Welcome {user.FirstName}";
                        else
                            ltMessage.Text = "Incorrect password!";
                    }
                }                
            }

        }
    }
}