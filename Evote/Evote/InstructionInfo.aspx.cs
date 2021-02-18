using Evote.App_Code;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evote
{
    public partial class InstructionInfo : System.Web.UI.Page
    {
        inst ins = new inst();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Student"]==null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    Repeater1.DataSource = ins.getInst();
                    Repeater1.DataBind();
                }
            }
           
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
        }


        protected void btnNext_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vote.aspx");
        }
    }
}