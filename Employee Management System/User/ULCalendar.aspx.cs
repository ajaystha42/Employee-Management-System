using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Employee;
using System.Data;

namespace Employee_Management_System
{
    public partial class ULCalendar : System.Web.UI.Page
    {
        CalendarEvent cal = new CalendarEvent();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                

               
            }
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
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