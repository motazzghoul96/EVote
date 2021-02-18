using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Evote.App_Code
{
    public class Admins 
    {

        private SqlConnection con;
        public string Admin_Name { get; set; }
        public string Password { get; set; }
       
       

        public Admins()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            con.Open();
        }
       
        public DataTable login ()
        {
            SqlCommand cmd = new SqlCommand("sp_loginadmin", con);
            cmd.CommandType = CommandType.StoredProcedure;
           
                cmd.Parameters.AddWithValue("@Admin_Name", Admin_Name);
                cmd.Parameters.AddWithValue("@Password", Password);
            
            SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
           






        }
    }
}