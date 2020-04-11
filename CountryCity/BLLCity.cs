using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace CountryCity
{
    public class BLLCity
    {
        public DataTable GetCityByCountryId(int countryid)
        {

            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\V11.0; Integrated Security=true; Database=EmployeeDB;");
            SqlCommand cmd = new SqlCommand("select *from tblCity where Countryid=@countryid",con);
            cmd.Parameters.AddWithValue("@countryid",countryid);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;

        }


    }
}
