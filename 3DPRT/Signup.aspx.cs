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

        protected void btnRegistert_Click(object sender, EventArgs e)
        {
            ltMessage.Text = $"Your email {txtEmail.Text} has been registered";
        }
    }
}