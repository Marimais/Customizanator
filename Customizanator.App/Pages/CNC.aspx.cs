using System;
using _Customizanator.Models;

namespace _Customizanator.Pages
{
    public partial class CNC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var materials = Enum.GetValues(typeof(Materials));
            foreach(var material in materials)
            {
                ddMaterial.Items.Add(material.ToString());
            }                
        }
    }
}