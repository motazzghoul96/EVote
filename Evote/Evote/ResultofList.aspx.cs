using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evote
{
    public partial class ResultofList : System.Web.UI.Page
    {
        App_Code.Vote vt = new App_Code.Vote();
        protected void Page_Load(object sender, EventArgs e)
        {
            display();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void display()
        {
            GridView1.DataSource = vt.resultList();
            GridView1.DataBind();
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Result.aspx");
        }
    }
}