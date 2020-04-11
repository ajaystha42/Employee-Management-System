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
    public partial class Login : System.Web.UI.Page
    {
        Employ emp = new Employ();
        Alert al = new Alert();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

       

        protected void btnLogin_Click(object sender, EventArgs e)

        {
            if (txtUsername.Text != "" &&txtPassword.Text!="")
            {

                if (ddlUsertype.SelectedIndex != 0)
                {
                    DataTable dt = emp.Login(txtUsername.Text, txtPassword.Text, ddlUsertype.Text);
                    if (dt.Rows.Count > 0)
                    {
                        if (dt.Rows[0]["Usertype"].ToString() == "Admin")
                        {
                    
                            Response.Redirect("~/Admin/ALUsersInfo.aspx");

                        }
                        else if (dt.Rows[0]["Usertype"].ToString() == "User")
                        {
                          
                            Response.Redirect("~/User/ULUserInfos.aspx");
                        }
                    }

                    else
                    {
                        al.callAlert("error", "No Access", "Invalid User");

                    }


                }
                else
                {
                    al.callAlert("warning", "Usertype", "Select Usertype");

                }
            }

            else if (txtUsername.Text != "" && txtPassword.Text == "")
            {
                al.callAlert("warning", "Password", "Enter Password First");
            }

            else if (txtUsername.Text == "" && txtPassword.Text != "")
            {
                al.callAlert("warning", "Username", "Enter Username First");
            }

            else if (txtUsername.Text == "" && txtPassword.Text == "")
            {
                al.callAlert("warning", "Entry", "Enter Username and Password");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            txtPassword.Text = "";
            ddlUsertype.SelectedIndex = 0;
        }

        
    }
}