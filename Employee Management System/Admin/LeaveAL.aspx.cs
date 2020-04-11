using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Employee;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace Employee_Management_System
{
    public partial class LeaveAL : System.Web.UI.Page
    {
        Leave lea = new Leave();
        EmployeeInfo empf = new EmployeeInfo();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = lea.LeaveReq();
                GridView1.DataBind();
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int employeeid = Convert.ToInt32(GridView1.SelectedDataKey.Value.ToString());


            DataTable dt = lea.LeaveByEmployeeId(employeeid);


            txtUsername.Text = dt.Rows[0]["Username"].ToString();
            txtEmployeeNo.Text = dt.Rows[0]["EmployeeNo"].ToString();
            txtNoOfDays.Text = dt.Rows[0]["NoOfDays"].ToString();
            txtPost.Text = dt.Rows[0]["Post"].ToString();
            txtDescription.Text = dt.Rows[0]["Description"].ToString();

            

        }
    }
}