using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace water
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["MSSQL_DBconnect"].ConnectionString);
            conn.Open();//開啟資料庫的連結
            SqlDataReader ddr;
            SqlCommand sqlr = new SqlCommand("Insert Into ACCOUNT" + "(USERNAME,PASSWARD,MANAGEMENT,ID)" + "values('" + rname.Text + "','" + rpassward.Text + "','0','7')",conn);
            ddr = sqlr.ExecuteReader();
            Response.Redirect("newm.aspx");
            sqlr.Cancel();
            conn.Close();
            ddr.Close();
            conn.Dispose();
            Response.End();
        }
    }
}