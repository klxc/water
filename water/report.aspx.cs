using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace water
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void InterviewDateBtn_Click(object sender, EventArgs e)
        {
            InterviewCalendar.Visible = false;
        }
        protected void InterviewCalendar_SelectionChanged(object sender, EventArgs e)
        {
            InterviewDate.Text = InterviewCalendar.SelectedDate.Date.Year.ToString();
            InterviewDate.Text +="-"+ InterviewCalendar.SelectedDate.Date.Month.ToString();
            InterviewDate.Text += "-" + InterviewCalendar.SelectedDate.Date.Day.ToString();
            InterviewCalendar.Visible = false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource4.Insert();
            Response.Write("回報成功");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("water.aspx");
        }
    }
}