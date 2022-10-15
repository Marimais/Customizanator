using System;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity.Core;
using System.Data.Entity.Validation;
using System.Web.UI;
using _3DPRT.DataAccess;
using _3DPRT.Models;
using Newtonsoft.Json;

namespace _3DPRT
{
    public partial class Signup : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ltMessage.Text = "Please enter your email and password";
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
                else
                {
                    context.Users.Add(new User(txtEmail.Text, txtPassword.Text));
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