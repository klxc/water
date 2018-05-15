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
    public partial class water : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["MSSQL_DBconnect"].ConnectionString);
            conn.Open();//開啟資料庫的連結
            SqlDataReader dr;
            SqlCommand log = new SqlCommand("Select * From  ACCOUNT  Where USERNAME ='" + username.Text + "'and PASSWARD ='" + passward.Text + "'", conn);
            SqlCommand level = new SqlCommand("Select * From  ACCOUNT  Where USERNAME ='" + username.Text + "' and MANAGEMENT='1'", conn);
            dr = log.ExecuteReader();
            if (!dr.Read())
            {
                Response.Write("帳號或密碼錯誤!!");
                log.Cancel();
                dr.Close();
                conn.Close();
                conn.Dispose();
                Response.End();
            }
            else {
                log.Cancel();
                dr.Close();
                dr = level.ExecuteReader();
                if (dr.Read())
                {
                    level.Cancel();
                    dr.Close();
                    conn.Close();
                    conn.Dispose();
                    Response.Redirect("server.aspx");
                }
                else
                {
                    level.Cancel();
                    dr.Close();
                    conn.Close();
                    conn.Dispose();
                    Response.Redirect("member.aspx");
                }
            }
        }
    }
        }

