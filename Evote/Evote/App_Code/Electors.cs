using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Evote.App_Code
{
    public class Electors
    {
        public int ElectorID { get; set; }
        public int ListID { get; set; }
        public int Stno { get; set; }
        public string Image { get; set; }
        SqlConnection con;
        public Electors()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            con.Open();
        }
      
        public SqlDataReader getstd()
        {
            SqlCommand cmd = new SqlCommand("sp_getlist", con);
            cmd.CommandType = CommandType.StoredProcedure;


            return cmd.ExecuteReader();
        }
        public SqlDataReader getelc()
        {
            SqlCommand cmd = new SqlCommand("sp_getelctor", con);
            cmd.CommandType = CommandType.StoredProcedure;


            return cmd.ExecuteReader();
        }
        public int cudelc(string action)
        {

            SqlCommand cmd = new SqlCommand("sp_elector", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@action", action);
            cmd.Parameters.AddWithValue("@ElectorID", ElectorID);
            if (action=="insert"||action=="update")
            {
                cmd.Parameters.AddWithValue("@Stno", Stno);
                cmd.Parameters.AddWithValue("@ListID", ListID);
                cmd.Parameters.AddWithValue("@image", Image);
            }
                



            return cmd.ExecuteNonQuery();

        }

    }
}