using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evote
{
    public partial class Result1 : System.Web.UI.Page
    {
        App_Code.Vote vt = new App_Code.Vote();
        App_Code.Setting st = new App_Code.Setting();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gettotal();
            }
           
        }

        protected void lnkList_Click(object sender, EventArgs e)
        {
            Response.Redirect("resultoflist.aspx");
        }

        protected void lnkElector_Click(object sender, EventArgs e)
        {
            Response.Redirect("resultofelector.aspx");
        }
        private void gettotal()
        {
            
            SqlDataReader dr = vt.totalVote();

            double x = 0;
            while (dr.Read())
            {
                x =double.Parse( dr["expr1"].ToString());
                Label1.Text =x+"%";
            }
         
        }
    }
}