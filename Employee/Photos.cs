using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Employee
{
    public class Photos
    {

        //public int InsertPhoto(string photo,string username)
        //{

        //    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\V11.0; Integrated Security=true; Database=EmployeeDB;");
        //    SqlCommand cmd = new SqlCommand("insert into tblGallery Values(@a,@b)",con);
        //    cmd.Parameters.AddWithValue("@a", photo);
        //    cmd.Parameters.AddWithValue("@b", username);


        //    con.Open();
        //    int i = cmd.ExecuteNonQuery();

        //    con.Close();
        //    return i;
        //}

        public DataTable GetGallery()
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\V11.0; Integrated Security=true; Database=EmployeeDB;");
            SqlCommand cmd = new SqlCommand("select *from tblEmployeeInfo",con);
            //cmd.Parameters.AddWithValue("@photo", photo);
            //cmd.Parameters.AddWithValue("@username", username);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
      
        
    }
}
