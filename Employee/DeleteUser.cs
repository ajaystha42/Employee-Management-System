using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace Employee
{
   public class DeleteUser
    {

       public int Delete(int employeeid)
       {
       SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\V11.0; Integrated Security=true; Database=EmployeeDB;");
       SqlCommand cmd = new SqlCommand("delete from tblEmployeeInfo where EmployeeId=@employeeid ",con);
           cmd.Parameters.AddWithValue("@employeeid",employeeid);
           con.Open();
           int i=cmd.ExecuteNonQuery();
           con.Close();
           return i;



       }

       public DataTable LoadDelete(int employeeid)
       {

           SqlConnection con=new SqlConnection("Data Source=(LocalDB)\\V11.0; Integrated Security=true; Database=EmployeeDB;");
           SqlCommand cmd=new SqlCommand("select *from tblEmployeeInfo where EmployeeId=@employeeid",con);
           cmd.Parameters.AddWithValue("@employeeid", employeeid);
           SqlDataAdapter da=new SqlDataAdapter(cmd);
           DataTable dt=new DataTable();
           da.Fill(dt);
           return dt;




       }

     


    }
}
