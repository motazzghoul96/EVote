using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evote
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        
     
        protected void Page_Load(object sender, EventArgs e)
        {

           

            if (Session["Admin"]==null)
            {
                Response.Redirect("Login.aspx");
                Session["date"] = null;
            }
           
           
            
        }
        protected void lnkLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        protected void lnkinst_Click(object sender, EventArgs e)
        {
            Response.Redirect("Instroction.aspx");
        }
        protected void lnklist_Click(object sender, EventArgs e)
        {
            Response.Redirect("List.aspx");
        }
        protected void lnkElector_Click(object sender, EventArgs e)
        {
            Response.Redirect("Electors.aspx");
        }
        protected void lnkResult_Click(object sender, EventArgs e)
        {
            if (Session["Date"]!=null)
            {
               
                Response.Redirect("message_result.aspx");
            }
            else
            {
                Response.Redirect("Result.aspx");
            }
           
        }
        protected void lnkSetting_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("Setting.aspx");
        }
        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Session["Admin"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}