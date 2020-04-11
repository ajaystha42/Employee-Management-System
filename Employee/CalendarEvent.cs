using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace Employee
{
    public class CalendarEvent
    {
        public int CreateEvent(string eventname, DateTime eventdate)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\V11.0; Integrated Security=true; Database=EmployeeDB;");
            SqlCommand cmd = new SqlCommand("insert into tblEvent values(@a,@b)", con);
            cmd.Parameters.AddWithValue("@a", eventname);
            cmd.Parameters.AddWithValue("@b", eventdate);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;

        }


        public DataTable GetEvent()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\V11.0; Integrated Security=true; Database=EmployeeDB;");
            SqlCommand cmd = new SqlCommand("select *from tblEvent", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;


        }


    }
}
