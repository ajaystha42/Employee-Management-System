using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Employee;

namespace Employee_Management_System
{

    public partial class ALUsersInfo : System.Web.UI.Page
    {
        Photos pt = new Photos();
        EmployeeInfo empf = new EmployeeInfo();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = pt.GetGallery();
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {



            //if (e.CommandName == "ajay")
            //{
            //    int employeeid =Convert.ToInt32 (GridView1.SelectedDataKey.Value.ToString());
            //    //Response.Redirect("~/Admin/IntoUserInfoAl.aspx");
            //    DataTable dt = empf.GetByEmployeeId(employeeid);
            //    //GridView2.DataSource = dt;
            //    //GridView2.DataBind();

            //    TextBox1.Text = dt.Rows[0]["Username"].ToString();
            //    HiddenField1.Value = employeeid.ToString();

            //}
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        
       


    }
}