using _3DPRT.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3DPRT.Pages
{
    public partial class Print : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var colors = Enum.GetValues(typeof(Color));
            var materials = Enum.GetValues(typeof(PrintingMaterial));
            //add smth for model

            foreach(var color in colors)
            {
                ddColor.Items.Add(color.ToString());
            }

            foreach(var material in materials)
            {
                ddMaterial.Items.Add(material.ToString());
            }
        }

        protected void ddColor_SelectedIndexChanged(object sender, EventArgs e)
        {
            //create price calculator
            //color material in stock method
            //save model and service togather with User orders in DB
        }
    }
}