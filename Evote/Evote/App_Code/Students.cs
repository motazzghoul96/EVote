using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Evote.App_Code
{
    public class Students
    {
        public int Stno { get; set; }
        public string name { get; set; }
        public string password { get; set; }
        public int elected { get; set; }
        

        private SqlConnection con;
        public Students()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            con.Open();
        }
        public DataTable login()
        {

            SqlCommand cmd = new SqlCommand("sp_loginstudent", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Stno", Stno);
            cmd.Parameters.AddWithValue("@Password", password);
           
        
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
       }
       public SqlDataReader getStudent()
        {
            SqlCommand cmd = new SqlCommand("sp_getstd", con);
            cmd.CommandType = CommandType.StoredProcedure;
           
            cmd.Parameters.AddWithValue("@ID", Stno);
            return cmd.ExecuteReader();
        }
        public int uElecte()
        {
            SqlCommand cmd = new SqlCommand("sp_upStd", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", Stno);
            cmd.Parameters.AddWithValue("@elected", elected);
           return cmd.ExecuteNonQuery();
        }
    }
}