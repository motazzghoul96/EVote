using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evote
{
    public partial class Result : System.Web.UI.Page
    {
        App_Code.Vote vt = new App_Code.Vote();
        App_Code.Setting st = new App_Code.Setting();
        protected void Page_Load(object sender, EventArgs e)
        {
          
                Display();
            
               
            
        }

        private void Display()
        {
            DataTable dt= st.getSetting();
            st.start = ((TimeSpan)(dt.Rows[0]["election_start_time"]));
            st.End = (TimeSpan)(dt.Rows[0]["election_finish_time"]);
            st.Date = ((DateTime)(dt.Rows[0]["date"]));
            if (DateTime.Now.TimeOfDay>=st.start&& DateTime.Now.TimeOfDay <= st.End&& DateTime.Now.DayOfYear == st.Date.DayOfYear)
            {
                Response.Redirect("message_result.aspx");
            }
            else
            {
                GridView1.DataSource = vt.result();
                GridView1.DataBind();
               
            }
           
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Result.aspx");
        }
    }
}