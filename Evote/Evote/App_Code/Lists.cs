using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace Evote.App_Code
{
    public class Lists
    {
        public int ListID { get; set; }
        public string List_Name { get; set; }
        public string Image { get; set; }
        SqlConnection con;
        public Lists()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            con.Open();
        }
        public int cudList(string action)
        {
            SqlCommand cmd = new SqlCommand("sp_lists", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@action", action);
            cmd.Parameters.AddWithValue("@ListID",  ListID);

            cmd.Parameters.AddWithValue("@list_name", List_Name);
            cmd.Parameters.AddWithValue("@Image",Image);


            return cmd.ExecuteNonQuery();

        }


        public SqlDataReader getList()
        {
            SqlCommand cmd = new SqlCommand("sp_getlist", con);
            cmd.CommandType = CommandType.StoredProcedure;


            return cmd.ExecuteReader();
        }
    }
}