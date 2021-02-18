using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Evote.App_Code
{
    public class Setting
    {

        public DateTime Date { get; set; }
        public TimeSpan start { get; set; }
        public TimeSpan End { get; set; }
        public int NoVotting { get; set; }
        SqlConnection con;
        public Setting()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            con.Open();
        }
        public int upSetting()
        {

            SqlCommand cmd = new SqlCommand("sp_upSetting", con);
            cmd.CommandType = CommandType.StoredProcedure;


            cmd.Parameters.AddWithValue("@date", Date);


            cmd.Parameters.AddWithValue("@start", start);
            cmd.Parameters.AddWithValue("@end", End);
            cmd.Parameters.AddWithValue("@noVote", NoVotting);

            return cmd.ExecuteNonQuery();
        }
        public DataTable getSetting()
        {
            SqlCommand cmd = new SqlCommand("sp_getSetting", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}