using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Employee;

namespace Employee_Management_System
{
    public partial class LeaveRequestUL : System.Web.UI.Page
    {
        Leave lea = new Leave();
        Alert al = new Alert();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRequest_Click(object sender, EventArgs e)
        {
            int i = lea.LeaveRequest(Convert.ToInt32(txtEmployeeNo.Text), txtUsername.Text, txtPost.Text, txtNoOfDays.Text, txtDescription.Text);
            if (i > 0)
            {
                al.callAlert("success", "Leave Request", "Sent Successfully");
                cleargrid();
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            cleargrid();
        }

        private void cleargrid()
        {
            txtDescription.Text = "";
            txtUsername.Text = "";
            txtNoOfDays.Text = "";
            txtEmployeeNo.Text = "";
            txtPost.Text = "";
        }
    }
}