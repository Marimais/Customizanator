using System;
using System.Web.UI;

namespace _3DPRT
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                ltMessage.Text = "Wlcome to 3DPRT family!";
            }
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text.Length < 0)
            {
                ltMessage.Text = "Please fill in your email!";
            }
            else if (txtPassword.Text.Length < 8)
            {
                ltMessage.Text = "Please have your password longer than 8 characters!";
            }
            else
            {
                ltMessage.Text = $"Your email {txtEmail.Text} has been registered";
            }            
        }
    }
}