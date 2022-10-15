using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Http;
using System.Data.Entity;
using _3DPRT.DataAccess;

namespace _3DPRT
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            GlobalConfiguration.Configure(WebApiConfig.Register);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            Application["ApplicationStartDateTime"] = DateTime.Now;
        }

        void Session_start(object sender, EventArgs e)
        {
            //Session["SessionStartDateTime"] = DateTime.Now;
        }

    }
}