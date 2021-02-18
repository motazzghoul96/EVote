using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Evote.App_Code;
using System.Data;
using System.Data.SqlClient;

namespace Evote
{
    public partial class Login : System.Web.UI.Page
    {
        Admins ad = new Admins();
        App_Code.Setting st = new App_Code.Setting();
        Students std = new Students();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"]!=null)
            {
                Response.Redirect("Instroction.aspx");
            }
            if (Session["Student"]!=null)
            {
                Response.Redirect("Studentinfo.aspx");
            }
        }



        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                ad.Admin_Name = txtUsername.Text;
                ad.Password = txtPassword.Text;
              DataTable dr=  st.getSetting();
                DataTable dt = new DataTable();
                TimeSpan start = ((TimeSpan)(dr.Rows[0]["election_start_time"]));
                TimeSpan end = (TimeSpan)(dr.Rows[0]["election_finish_time"]);
                DateTime date = ((DateTime)(dr.Rows[0]["date"]));

                dt = ad.login();
                if (dt.Rows.Count > 0)
                {
                    Session["Admin"] = dt.Rows[0]["Admin_name"].ToString();
                    if (DateTime.Now.TimeOfDay >= start && DateTime.Now.TimeOfDay < end && DateTime.Now.DayOfYear == date.DayOfYear)
                    {
                       
                        Session["Date"] = dr.Rows[0]["date"].ToString();

                       
                    }
                    Response.Redirect("Instroction.aspx");

                }

                else
                {
                    std.Stno = int.Parse(txtUsername.Text);
                    std.password = txtPassword.Text;
                   
                       
                    
                    


                    dt = std.login();
                    int x =int.Parse( dt.Rows[0]["elected"].ToString());
                    
                    if (dt.Rows.Count > 0 && x == 0)
                    {
                        if (DateTime.Now.TimeOfDay >= start && DateTime.Now.TimeOfDay<end&&DateTime.Now.DayOfYear==date.DayOfYear)
                        {
                            Session["Student"] = dt.Rows[0]["Stno"].ToString();
                            Session["Date"] = dr.Rows[0]["date"].ToString();

                            Response.Redirect("StudentInfo.aspx");
                        }
                        else
                        {
                            Session["Student"] = dt.Rows[0]["Stno"].ToString();
                            Response.Redirect("FinshTime.aspx");
                        }
                       
                     }
                    else
                    {
                       
                        lbllogin.Text = "you already voted !!";
                        
                        
                    }

                    }
                

                
                
               
                
            }
            catch (Exception)
            {

                lbllogin.Text = "verify Username and Password";
            }
            
        }
    }

}