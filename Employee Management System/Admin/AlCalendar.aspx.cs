using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Employee;

namespace Employee_Management_System
{
    public partial class AlCalendar : System.Web.UI.Page
    {
        CalendarEvent cal = new CalendarEvent();


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        Alert al = new Alert();



        protected void btnSave_Click(object sender, EventArgs e)
        {
            int i = cal.CreateEvent(txtEventName.Text, Convert.ToDateTime(txtEventDate.Text));
            if (i > 0)
            {
                al.callAlert("success", "Calendar", "Event Created");

            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtEventDate.Text = "";
            txtEventName.Text = "";

        }

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            txtEventDate.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void Calendar1_DayRender1(object sender, DayRenderEventArgs e)
        {
            DataTable dt = cal.GetEvent();
            if (dt.Rows.Count > 0)
            {

                for (int i = 0; i < dt.Rows.Count; i++)
                {


                    DateTime dteventdate = Convert.ToDateTime(dt.Rows[i]["EventDate"].ToString());
                    if (e.Day.Date.ToString("dd-MM-yyyy") == dteventdate.ToString("dd-MM-yyyy"))
                    {
                        Literal lineBreak = new Literal();
                        lineBreak.Text = "<BR /><BR />";
                        e.Cell.Controls.Add(lineBreak);
                        e.Cell.BorderColor = System.Drawing.ColorTranslator.FromHtml("#808080");
                        e.Cell.BackColor = System.Drawing.ColorTranslator.FromHtml("#f3f3f3");
                        e.Cell.BorderStyle = BorderStyle.Solid;
                        e.Cell.BorderWidth = 1;
                        Label b = new Label();
                        b.Font.Size = 8;
                        b.Font.Bold = true;
                        b.ForeColor = System.Drawing.ColorTranslator.FromHtml("#336699");
                        b.Text = dt.Rows[i]["EventName"].ToString();
                        e.Cell.Controls.Add(b);
                    }

                }
            }
        }
    }
}