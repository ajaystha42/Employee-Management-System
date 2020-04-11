using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Employee;
using System.Data.SqlClient;

namespace Employee_Management_System
{
    public partial class MLDelete : System.Web.UI.Page
    {
        EmployeeInfo empf = new EmployeeInfo();
        Alert al = new Alert();
        DeleteUser del = new DeleteUser();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGrid();

            }

        }

        private void LoadGrid()
        {
            GridView1.DataSource = empf.GetUserInfo();
            GridView1.DataBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            


            int i = del.Delete(Convert.ToInt32(HiddenField1.Value));
            if (i > 0)
            {
                al.callAlert("success", "Confirmation", "User Deleted");
                LoadGrid();
            }


        }

       

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int employeeid = Convert.ToInt32(GridView1.SelectedDataKey.Value.ToString());

            DataTable dt = empf.GetByEmployeeId(employeeid);

            txtUsername.Text = dt.Rows[0]["Username"].ToString();
            txtEmployeeNo.Text = dt.Rows[0]["EmployeeNo"].ToString();
            HiddenField1.Value = employeeid.ToString();

          

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            txtEmployeeNo.Text = "";
            LoadGrid();


        }

       
    }
}