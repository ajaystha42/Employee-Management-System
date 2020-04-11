using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Employee
{
    public class Leave
    {
        public int LeaveRequest(int employeeno, string username, string post, string days, string description)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\V11.0; Integrated Security=true; Database=EmployeeDB;");
            SqlCommand cmd = new SqlCommand("insert into tblRequest Values(@a,@b,@c,@d,@e)", con);
            cmd.Parameters.AddWithValue("@a", employeeno);
            cmd.Parameters.AddWithValue("@b", username);
            cmd.Parameters.AddWithValue("@c", post);
            cmd.Parameters.AddWithValue("@d", days);
            cmd.Parameters.AddWithValue("@e", description);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;



        }



        public DataTable LeaveReq()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\V11.0; Integrated Security=true; Database=EmployeeDB;");
            SqlCommand cmd = new SqlCommand("select *from tblRequest", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;

        }


        public DataTable LeaveByEmployeeId(int employeeno)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\V11.0; Integrated Security=true; Database=EmployeeDB;");
            SqlCommand cmd = new SqlCommand("select *from tblRequest where EmployeeNo=@employeeno", con);
            cmd.Parameters.AddWithValue("@employeeno", employeeno);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;

        }




    }
}
