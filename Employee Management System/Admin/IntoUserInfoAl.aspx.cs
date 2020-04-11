using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using Employee;

namespace Employee_Management_System
{
    public partial class IntoUserInfoAl : System.Web.UI.Page
    {
        EmployeeInfo emof = new EmployeeInfo();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = emof.GetUserInfo();
                txtUsername.Text = dt.Rows[0]["Username"].ToString();

            }
        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {

        }
    }
}