using System;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity.Core;
using System.Data.Entity.Validation;
using System.Web.UI;
using _Customizanator.DataAccess;
using _Customizanator.Models;
using Newtonsoft.Json;

namespace _Customizanator
{
    public partial class Signup : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ltMessage.Text = "Required fields are marked with '*'";
            }
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            var context = new PrintingDBContext();

            try
            {
                if (!valEmail.IsValid)
                {
                    ltMessage.Text = $"Please enter Email again.";
                    txtEmail.Text = String.Empty;
                    txtEmail.Dispose();
                }
                else if (!valPassword.IsValid)
                {
                    ltMessage.Text = $"Please enter password again.";
                    txtPassword.Text = String.Empty;
                    txtPassword.Dispose();
                }
                else if(!valFirstName.IsValid)
                {
                    ltMessage.Text = $"Please enter correct first name.";
                    txtFirstName.Text = String.Empty;
                    txtFirstName.Dispose();
                }
                else if(!valLastName.IsValid)
                {
                    ltMessage.Text = $"Please enter correct last name.";
                    txtLastName.Text = String.Empty;
                    txtLastName.Dispose();
                }
                else
                {
                    context.Users.Add(new User(txtEmail.Text, txtPassword.Text, txtFirstName.Text, txtLastName.Text, Role.Client, null));
                    context.SaveChanges();
                    ltMessage.Text = $"Your email {txtEmail.Text} has been registered";
                    txtEmail.Text = String.Empty;
                    txtPassword.Text = String.Empty;
                    txtEmail.Dispose();
                    txtPassword.Dispose();
                }
            }
            catch (DbEntityValidationException)
            {
                ltMessage.Text = $"Entered credantials are invalid";
                txtEmail.Text = String.Empty;
                txtPassword.Text = String.Empty;
                txtEmail.Dispose();
                txtPassword.Dispose();
            }
            catch (Exception ex)
            {
                ltMessage.Text = ex.Message;
            }
        }
    }
}