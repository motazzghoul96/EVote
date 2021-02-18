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
    public partial class Instroction : System.Web.UI.Page
    {
        inst i = new inst();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Display();

            }

        }
        private void Display()
        {
            GridView1.DataSource = i.getInst();
            GridView1.DataBind();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Display();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex]; // pulling every controls included current row
            int id = int.Parse(((Label)row.FindControl("lblID")).Text); // get value of product id
            i.inst_id = id;

           
            i.cudInst("delete");


            Display();
            // excute nonequery delete



        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex]; // pulling every controls included current row
            string id = ((Label)row.FindControl("lblID")).Text; // get value of product id
            string inst_desc = ((TextBox)row.FindControl("txtinst")).Text;


            i.inst_id = int.Parse(id);
            i.inst_desc = inst_desc;


            i.cudInst("update");

            GridView1.EditIndex = -1; // switch from textboxes to lbls
            Display();




        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Display();


        }










        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            i.inst_desc = txtinsert.Text;


            i.cudInst("insert");

            Display();


        }
      
    }
}