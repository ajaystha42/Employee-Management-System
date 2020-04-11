using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Employee
{
    public  class EmployeeInfo
    {
        public int CreateUser(string title,int employeeno,string firstname,string lastname,string gender,string country,string city,string post,string tempadd,string permadd,DateTime dateofjoining,DateTime dateofbirth,string telephone,string mobile,string email,decimal basicsalary,string contractperiod,string contracttype,bool allowbonus,bool ot,string photo,bool isactive,string username,string password,string repassword,string usertype)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\V11.0; Integrated Security=true; Database=EmployeeDB;");
            SqlCommand cmd = new SqlCommand("insert into tblEmployeeInfo Values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j,@k,@l,@m,@n,@o,@p,@q,@r,@s,@t,@u,@v,@w,@x,@y,@z)",con);
            cmd.Parameters.AddWithValue("@a",title);
            cmd.Parameters.AddWithValue("@b", employeeno);
            cmd.Parameters.AddWithValue("@c", firstname);
            cmd.Parameters.AddWithValue("@d", lastname);
            cmd.Parameters.AddWithValue("@e", gender);
            cmd.Parameters.AddWithValue("@f", country);
            cmd.Parameters.AddWithValue("@g", city);
            cmd.Parameters.AddWithValue("@h", post);
            cmd.Parameters.AddWithValue("@i", tempadd);
            cmd.Parameters.AddWithValue("@j", permadd);
            cmd.Parameters.AddWithValue("@k", dateofjoining);
            cmd.Parameters.AddWithValue("@l", dateofbirth);
            cmd.Parameters.AddWithValue("@m", telephone);
            cmd.Parameters.AddWithValue("@n", mobile);
            cmd.Parameters.AddWithValue("@o", email);
            cmd.Parameters.AddWithValue("@p", basicsalary);
            cmd.Parameters.AddWithValue("@q", contractperiod);
            cmd.Parameters.AddWithValue("@r", contracttype);
            cmd.Parameters.AddWithValue("@s", allowbonus);
            cmd.Parameters.AddWithValue("@t", ot);
            cmd.Parameters.AddWithValue("@u", photo);
            cmd.Parameters.AddWithValue("@v", isactive);
            cmd.Parameters.AddWithValue("@w", username);
            cmd.Parameters.AddWithValue("@x", password);
            cmd.Parameters.AddWithValue("@y", repassword);
            cmd.Parameters.AddWithValue("@z", usertype);
         
            con.Open();

            int i = cmd.ExecuteNonQuery();

            con.Close();
            return i;

        }


        public DataTable GetUserInfo()
        {

            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\V11.0; Integrated Security=true; Database=EmployeeDB;");
            SqlCommand cmd = new SqlCommand("select *from tblEmployeeInfo", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable CheckUser(string username)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\V11.0; Integrated Security=true; Database=EmployeeDB;");
            SqlCommand cmd = new SqlCommand("select *from tblEmployeeInfo where Username=@username", con);
            cmd.Parameters.AddWithValue("@username", username);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }


        public DataTable GetByEmployeeId(int employeeid)
        {

            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\V11.0; Integrated Security=true; Database=EmployeeDB;");
            SqlCommand cmd = new SqlCommand("select *from tblEmployeeInfo where EmployeeID=@employeeid", con);
            cmd.Parameters.AddWithValue("@employeeid", employeeid);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);

            return dt;


        }
    }
}
