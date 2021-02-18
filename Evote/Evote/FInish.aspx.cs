using Evote.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evote
{
    public partial class FInish : System.Web.UI.Page
    {
        Students std = new Students();
       App_Code.Vote vt = new App_Code.Vote();
        App_Code.Setting st = new App_Code.Setting();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Student"]==null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnfinish_Click(object sender, EventArgs e)
        {
             DataTable dt= st.getSetting();
            int num = int.Parse(dt.Rows[0]["no_of_voting"].ToString());
            vt.stno = int.Parse(Session["Student"].ToString());
            for (int i = 1; i <= num; i++)
            {
                if (Session["vote" + i]!=null)
                {


                    vt.electorID = int.Parse(Session["vote" + i].ToString());
                    vt.insert(); }
            }
          


            std.Stno = int.Parse(Session["Student"].ToString());
            std.elected = 1;
            std.uElecte();
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}