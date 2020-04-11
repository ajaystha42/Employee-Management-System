using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CountryCity;
using Employee;
using System.Data.SqlClient;
using System.Security.Cryptography;


namespace Employee_Management_System
{
    public partial class ALCreate : System.Web.UI.Page
    {
        BLLCountry blc = new BLLCountry();
        BLLCity bct = new BLLCity();
        EmployeeInfo empf = new EmployeeInfo();
        Photos pt = new Photos();
        Employ em = new Employ();
        Alert al = new Alert();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlCountry.DataSource = blc.GetCountry();
                ddlCountry.DataValueField = "CountryID";
                ddlCountry.DataTextField = "CountryName";
                ddlCountry.DataBind();
                ddlCountry.Items.Insert(0,"Choose Country");
            }


        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            DataTable dt = empf.CheckUser(txtUsername.Text);
            if (txtPassword.Text == txtRePassword.Text)
            {
                if (dt.Rows.Count == 0)
                {

                    int i = empf.CreateUser(ddlTitle.Text, Convert.ToInt32(txtEmployeeNo.Text), txtFirstName.Text, txtLastName.Text, radGender.Text, ddlCountry.Text, ddlCity.Text, txtPost.Text, txtTemporary.Text, txtPermanent.Text, Convert.ToDateTime(txtDateOfJoining.Text), Convert.ToDateTime(txtDateOfBirth.Text), txtTelephone.Text, txtMobile.Text, txtEmail.Text, Convert.ToDecimal(txtBasicSalary.Text), ddlContractPeriod.Text, ddlContractType.Text, chkAllpwBonus.Checked ? true : false, chkOt.Checked ? true : false, FileUpload1.FileName, chkIsActive.Checked ? true : false, txtUsername.Text, txtPassword.Text, txtRePassword.Text, ddlUsertype.Text);

                    if (i > 0)
                    {
                        FileUpload1.SaveAs(Server.MapPath("../Gallery/" + FileUpload1.FileName));
                        al.callAlert("success", "User", "Employee Created");
                        ClearGrid();

                    }
                }

                else if (dt.Rows.Count > 0)
                {
                    al.callAlert("error", "FAIL", "User already exists");

                }
            }

            else if(txtPassword.Text!=txtRePassword.Text)
            {
                al.callAlert("warning", "FAIL", "Password Donot Match");
            }


        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
        
             if (ddlCountry.SelectedIndex != 0)
            {
                ddlCity.DataSource = bct.GetCityByCountryId(Convert.ToInt32(ddlCountry.SelectedValue.ToString()));
                ddlCity.DataTextField = "CityName";
                ddlCity.DataValueField = "CityId";
                ddlCity.DataBind();
                ddlCity.Items.Insert(0, "Choose City");
            }

            else if (ddlCountry.Text=="Choose Country")
            {
                ddlCity.SelectedIndex = 0;
                ddlCity.DataTextField = "";
                ddlCity.DataValueField = "";
                ddlCity.Items.Insert(0, "");


            }


        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearGrid();

        }

        private void ClearGrid()
        {
            ddlTitle.SelectedIndex = 0;
            txtEmployeeNo.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            
            txtPost.Text = "";
            txtTemporary.Text = "";
            txtPermanent.Text = "";
            txtDateOfBirth.Text = "";
            txtDateOfJoining.Text = "";
            txtTelephone.Text = "";
            txtMobile.Text = "";
            txtBasicSalary.Text = "";
            txtEmail.Text = "";
            ddlContractPeriod.SelectedIndex = 0;
            ddlContractPeriod.SelectedIndex = 0;
            txtUsername.Text = "";
            txtPassword.Text = "";
            txtRePassword.Text = "";
            ddlUsertype.SelectedIndex = 0;
            chkAllpwBonus.Checked = false;
            chkIsActive.Checked = false;
            chkOt.Checked = false;
        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            string a = Get4Digits();
            txtEmployeeNo.Text = a;
        }

        public string Get4Digits()
        {

            var bytes = new byte[4];
            var rng = RandomNumberGenerator.Create();
            rng.GetBytes(bytes);
            uint random = BitConverter.ToUInt32(bytes, 0) % 10000;
            return String.Format("{0:D4}", random);
        }
                


        }

       

    }
