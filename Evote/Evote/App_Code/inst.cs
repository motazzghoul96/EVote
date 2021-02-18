using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Evote.App_Code
{
    public class inst
    {
        public int inst_id { get; set; }
        public string inst_desc { get; set; }
        public string Action { get; set; }
        SqlConnection con;

        public inst()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            con.Open();
        }

        public int cudInst(string action)
        {
            
            SqlCommand cmd = new SqlCommand("sp_inst", con);
            cmd.CommandType = CommandType.StoredProcedure;

           cmd.Parameters.AddWithValue("@action", action);
            cmd.Parameters.AddWithValue("@ID", inst_id);
            if (action == "update" || action == "insert")
            {
                cmd.Parameters.AddWithValue("@inst_desc", inst_desc);
            }
               
            
            return cmd.ExecuteNonQuery();

        }

       
        public SqlDataReader getInst()
        {
            SqlCommand cmd = new SqlCommand("sp_getinst", con);
            cmd.CommandType = CommandType.StoredProcedure;
           
         
            return cmd.ExecuteReader();
        }
        
    }
}