using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace water
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void showAll()
        {

        }
        protected void btn_Click(object sender, EventArgs e)
        {

            string key = DropDownList1.Text;
            string cmd = SqlDataSource1.SelectCommand;
            SqlDataSource1.SelectCommand = "SELECT  * From POLLUTION where name like '%" + key + "%'";
            Repeater1.Visible = true;
            // SqlDataSource1.DataBind();
            // Repeater1.DataBind();

        }
    }
}