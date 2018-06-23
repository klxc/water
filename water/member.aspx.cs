using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace water
{
    public partial class member : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void  Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("water.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("report.aspx");
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("collection.aspx");
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Webform2.aspx");
        }

        protected void button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Webform3.aspx");
        }
    }
}