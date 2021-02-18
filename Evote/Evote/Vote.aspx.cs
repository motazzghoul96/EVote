using Evote.App_Code;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evote
{
    public partial class Vote : System.Web.UI.Page
    {
        App_Code.Electors elc = new App_Code.Electors();
        App_Code.Vote vt = new App_Code.Vote();
        Students std = new Students();
        static ArrayList arr = new ArrayList();
        App_Code.Setting st = new App_Code.Setting();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Student"] == null)
            {
                Response.Redirect("login.aspx");
            }
            if (!IsPostBack)
            {
                Repeater1.DataSource = vt.getelcinfo();

                Repeater1.DataBind();
            }
           
            
        }





        protected void Repeater1_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {





        }
        protected void CheckBox1_OnCheckedChanged1(object sender, EventArgs e)
        {

        }

        protected void btnVote_Click(object sender, EventArgs e)
        {
           
            try
            {
                DataTable dt = st.getSetting();
                int num = int.Parse(dt.Rows[0]["no_of_voting"].ToString());
                int count = 0;
                foreach (RepeaterItem item in Repeater1.Items)
                {
                    CheckBox chkbx = (item.FindControl("Checkbox1") as CheckBox);
                    HiddenField hf1 = item.FindControl("HF1") as HiddenField;
                   
                    if (chkbx.Checked)
                    {
                       
                        vt.electorID = int.Parse(hf1.Value.ToString());
                        if (count <= num)
                        {


                            count++;
                            Session["vote" + count] = vt.electorID;

                           


                        }
                       
                    }
                }
                if (count>num )
                {
                    lblvote.Text = "اجتزت الحد المسموح به من الاصوات :(";
                }
                else if (count==0)
                {
                    lblvote.Text = "اختر شخص واحد على الأقل ";
                }
                else
                {
                    Response.Redirect("Finish.aspx");
                }
               
            }
            catch (Exception ex)
            {

                ModelState.AddModelError("",ex.Message);
            }
           
        }
    }
}