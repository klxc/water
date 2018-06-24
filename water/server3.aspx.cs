using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


namespace water
{
    public partial class server3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MSSQL_DBconnect"].ConnectionString);
            conn.Open();
            String sql = "Insert into Message(name, content, date) values(@name, @content, convert(varchar, getdate(), 120))";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@content", content.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Message.aspx");
        }
    }
}