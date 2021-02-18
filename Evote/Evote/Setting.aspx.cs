using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Evote.App_Code;
using System.Data.SqlClient;

namespace Evote
{
    public partial class Setting : System.Web.UI.Page
    {
        App_Code.Setting st = new App_Code.Setting();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Display();
            }
            

        }
        private void Display()
        {

            GridView1.DataSource = st.getSetting();
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Display();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Display();


        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex]; // pulling every controls included current row
            string date = ((TextBox)row.FindControl("txtdate")).Text; // get value of product id
            string start = ((TextBox)row.FindControl("txtstart")).Text;
            string finish = ((TextBox)row.FindControl("txtfinish")).Text;
            string number = ((TextBox)row.FindControl("txtnumVote")).Text;
           

            st.Date = DateTime.Parse(date);
            st.start=TimeSpan.Parse(start);
            st.End = TimeSpan.Parse(finish);
            st.NoVotting = int.Parse(number);


            st.upSetting();
            if (DateTime.Now.DayOfYear==st.Date.DayOfYear&&DateTime.Now.TimeOfDay >= st.start && DateTime.Now.TimeOfDay <st.End)
            {
                Session["date"] = st.Date;
            }
            else
            {
                Session["date"] = null;
            }
            GridView1.EditIndex = -1; // switch from textboxes to lbls
            Display();




        }
    }
    }

