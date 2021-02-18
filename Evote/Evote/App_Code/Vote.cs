using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Evote.App_Code
{
    public class Vote
    {
        public int stno { get; set; }
        public int electorID { get; set; }
        public int num { get; set; }
        SqlConnection con;
        public Vote()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            con.Open();
        }
        public int insert()
        {
            SqlCommand cmd = new SqlCommand("sp_Vote", con);
            cmd.CommandType = CommandType.StoredProcedure;

            
            cmd.Parameters.AddWithValue("@stno", stno);
            cmd.Parameters.AddWithValue("@ElectorID", electorID);
            return cmd.ExecuteNonQuery();
        }
        public SqlDataReader getelcinfo()
        {
            SqlCommand cmd = new SqlCommand("sp_electors", con);
            cmd.CommandType = CommandType.StoredProcedure;

           
            return cmd.ExecuteReader();
        }
        public SqlDataReader result()
        {
            SqlCommand cmd = new SqlCommand("sp_resultelector", con);
            cmd.CommandType = CommandType.StoredProcedure;
            

            return cmd.ExecuteReader();
        }
        public SqlDataReader resultList()
        {
            SqlCommand cmd = new SqlCommand("sp_resultList", con);
            cmd.CommandType = CommandType.StoredProcedure;


            return cmd.ExecuteReader();
        }
        public SqlDataReader totalVote()
        {
            SqlCommand cmd = new SqlCommand("sp_totalvotes", con);
           
            cmd.CommandType = CommandType.StoredProcedure;
            


            return cmd.ExecuteReader();
        }
       
    }
}