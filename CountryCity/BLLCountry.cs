using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace CountryCity
{
   public class BLLCountry
    {

       public DataTable GetCountry()
       {
           SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\V11.0; Integrated Security=true; Database=EmployeeDB;");
           SqlCommand cmd = new SqlCommand("select *from tblCountry",con);
           SqlDataAdapter da = new SqlDataAdapter(cmd);
           DataTable dt = new DataTable();
           da.Fill(dt);
           return dt;
       }

    }
}
