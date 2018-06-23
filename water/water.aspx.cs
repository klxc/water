using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//----自己寫的（宣告）----
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace water
{
    public partial class water : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Check_SQLInjection(username.Text, passward.Text) != 0)
            {
                Response.End();
            }
            SqlConnection Conn = new SqlConnection();
            //----上面已經事先寫好 System.Web.Configuration命名空間 ----
            Conn.ConnectionString = WebConfigurationManager.ConnectionStrings["MSSQL_DBconnect"].ConnectionString;
            //----(連結資料庫)----

            SqlDataReader dr = null;
            SqlCommand cmd = new SqlCommand("select * from ACCOUNT where USERNAME = '" + username.Text + "' and PASSWARD = '" + passward.Text + "'", Conn);
            SqlCommand level = new SqlCommand("Select * From  ACCOUNT  Where USERNAME ='" + username.Text + "' and rank='1'", Conn);
            //----透過字串組合的方式，組成SQL指令，容易被人攻擊！！

            try
            {
                Conn.Open();   //---- 這時候才連結DB
                dr = cmd.ExecuteReader();   //---- 這時候執行SQL指令，取出資料
                if (!dr.Read())
                {
                    Response.Write("帳號或密碼錯誤!!");
                    level.Cancel();
                    dr.Close();
                    Conn.Close();
                    Conn.Dispose();
                    return;
                }
                else
                {
                    cmd.Cancel();
                    dr.Close();
                    dr = level.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        Session["u_name"] = dr["USERNAME"].ToString();  //--通過帳號與密碼的認證，就獲得 Session。
                        Session["u_rank"] = dr["PASSWARD"].ToString();
                        Session["Login"] = "OK";
                        level.Cancel();
                        dr.Close();
                        Conn.Close();
                        Conn.Dispose();
                        Response.Redirect("manage.aspx");
                    }
                    else
                    {
                        cmd.Cancel();
                        dr.Close();
                        Conn.Close();
                        Conn.Dispose();
                        Response.Redirect("member.aspx");
                    }
                }
            }
            catch (Exception ex)   //---- 如果程式有錯誤或是例外狀況，將執行這一段
            {
                Response.Write("<b>Error Message----  </b>" + ex.ToString() + "<HR/>");
                
            }

        }
        protected int Check_SQLInjection(String str_1, String str_2)
        {
            //-- 自訂函數。為了避免SQL Injection攻擊，發現可疑字將會立刻阻擋！
            int i = 0;

            //=================================================
            //== 方法一 ==
            //if ((str_1.IndexOf("--", 0) != -1) || (str_1.IndexOf("1=1", 0) != -1))
            //{
            //    //Response.Write("<h2>「真實姓名」的欄位發現可疑字  立刻阻擋！</h2>");
            //    i = 1;
            //}
            //else
            //{
            //    if ((str_2.IndexOf("--", 0) != -1) || (str_2.IndexOf("1=1", 0) != -1))
            //    {
            //        //Response.Write("<h2>「帳號」的欄位發現可疑字  立刻阻擋！</h2>");
            //        i = 1;
            //    }
            //    else
            //    {
            //            // if (...) {
            //            // } else {
            //            // }
            //        i = 0;  //--通過檢查
            //    }
            //    i = 0;  //--通過檢查
            //    //*** 其他相關的攻擊字串，可以仿造上面寫法，繼續增加。 ***
            //}
            //return i;   //--返回值。檢查結果（1表示失敗，沒通過。）


            //=================================================
            //== 方法二 ==

            //if ((str_1.IndexOf("--", 0) != -1) || (str_1.IndexOf("1=1", 0) != -1))
            //{
            //    //Response.Write("<h2>「真實姓名」的欄位發現可疑字  立刻阻擋！</h2>");
            //    return 1;  //--返回值。檢查結果（1表示失敗，沒通過。）
            //}
            //if ((str_2.IndexOf("--", 0) != -1) || (str_2.IndexOf("1=1", 0) != -1))
            //{
            //    //Response.Write("<h2>「真實姓名」的欄位發現可疑字  立刻阻擋！</h2>");
            //    return 1;  //--返回值。檢查結果（1表示失敗，沒通過。）
            //}
            ////*** 其他相關的攻擊字串，可以仿造上面寫法，繼續增加。 ***

            //return 0;  //--返回值。通過。


            //=================================================
            //== 方法三 ==
            //== 請您參閱「重構（Refactoring）」一書的  Ch.9-5節

            if ((str_1.IndexOf("--", 0) != -1)) return 1;  //--返回值。檢查結果（1表示失敗，沒通過。）
            if ((str_1.IndexOf("1=1", 0) != -1)) return 1;  //--返回值。檢查結果（1表示失敗，沒通過。）

            if ((str_2.IndexOf("--", 0) != -1)) return 1;  //--返回值。檢查結果（1表示失敗，沒通過。）
            if ((str_2.IndexOf("1=1", 0) != -1)) return 1;  //--返回值。檢查結果（1表示失敗，沒通過。）

            //*** 其他相關的攻擊字串，可以仿造上面寫法，繼續增加。 ***

            return 0;  //--返回值。通過。
        }
    }
}

