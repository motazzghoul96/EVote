using Evote.App_Code;
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
    public partial class StudentInfo : System.Web.UI.Page
    {
        Students std = new Students();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Student"]!=null)
            {
                show();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnnext_Click(object sender, EventArgs e)
        {
            Response.Redirect("instructionInfo.aspx");
        }
        public void show()
        {
            std.Stno = int.Parse(Session["Student"].ToString());
            SqlDataReader dr = std.getStudent();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lblID.Text = dr["Stno"].ToString();
                    lblName.Text = dr["stname"].ToString();
                    Image1.ImageUrl = "~/stdimges/" + dr["image"].ToString();
                }
            }

        }
    }
}