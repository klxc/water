using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace water
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection Conn = new SqlConnection();
            Conn.ConnectionString = WebConfigurationManager.ConnectionStrings["MSSQL_DBconnect"].ConnectionString;
            SqlDataReader dr = null;
            SqlCommand cmd = new SqlCommand("UPDATE account SET PASSWARD='" + passward.Text + "' WHERE USERNAME='"+username.Text+"';", Conn);
            
            try
            {
                Conn.Open();   //---- 這時候才連結DB
                dr = cmd.ExecuteReader();   //---- 這時候執行SQL指令，取出資料

                if (dr.HasRows)
                {
                    dr.Read();
                    Session["u_name"] = dr["USERNAME"].ToString();  //--通過帳號與密碼的認證，就獲得 Session。
                    Session["u_rank"] = dr["PASSWARD"].ToString();
                    Session["Login"] = "OK";
                    cmd.Cancel();
                    dr.Close();
                    Conn.Close();
                    Conn.Dispose();
                    return;
                }
            }catch (Exception ex)   //---- 如果程式有錯誤或是例外狀況，將執行這一段
            {
                Response.Write("<b>Error Message----  </b>" + ex.ToString() + "<HR/>");
                
            }

            Response.Write("修改成功");
            Button1.Visible = false;


        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("member.aspx");
        }
    }
}