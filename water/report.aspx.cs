using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace water
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void InterviewDateBtn_Click(object sender, EventArgs e)
        {
            InterviewCalendar.Visible = true;
            
        }
        protected void InterviewCalendar_SelectionChanged(object sender, EventArgs e)
        {
            InterviewDate.Text = InterviewCalendar.SelectedDate.Date.Year.ToString();
            InterviewDate.Text +="-"+ InterviewCalendar.SelectedDate.Date.Month.ToString();
            InterviewDate.Text += "-" + InterviewCalendar.SelectedDate.Date.Day.ToString();
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource4.Insert();
            Response.Write("thanks");
            Button1.Visible = false;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("member.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            InterviewCalendar.Visible = true;
        }

 
        
    }
}