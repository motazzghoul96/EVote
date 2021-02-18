using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Evote.App_Code;
using System.Web.UI.WebControls;
using System.Data;

namespace Evote
{
    public partial class Electors : System.Web.UI.Page
    {
       Evote.App_Code.Electors elc = new Evote.App_Code.Electors();
        Lists lst = new Lists();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlList.DataSource = lst.getList();
                ddlList.DataTextField = "List_Name";
                ddlList.DataValueField = "ListID";
                ddlList.DataBind();
                ddlList.Items.Insert(0, new ListItem("Select an List", null));
                Display();
               
            }
           
        }

        private void Display()
        {

            GridView1.DataSource = elc.getelc();
            GridView1.DataBind();
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            elc.Stno = int.Parse(txtinsert.Text);
            elc.ListID =int.Parse(ddlList.SelectedValue);

            if (FileUpload1.HasFile)
            {

                FileUpload1.SaveAs(Server.MapPath("/images/" + FileUpload1.FileName));
                elc.Image = FileUpload1.FileName; // new image

            }

            elc.cudelc("insert");
            Display();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Display();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            GridViewRow row = GridView1.Rows[e.RowIndex]; // pulling every controls included current row
            string id = ((Label)row.FindControl("lblID")).Text; // get value of product id

            elc.ElectorID = int.Parse(id);
            


            elc.cudelc("delete");


            Display();


        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex]; // pulling every controls included current row
            string id = ((Label)row.FindControl("lblID")).Text; // get value of product id
            string image = ((HiddenField)row.FindControl("HF1")).Value;
            string stno = ((TextBox)row.FindControl("txtStd")).Text;
            string lstid = ((TextBox)row.FindControl("txtlist")).Text;
            FileUpload fp = (FileUpload)row.FindControl("Fp1");
            if (fp.HasFile)
            {
                fp.SaveAs(Server.MapPath("/images/" + fp.FileName));
                elc.Image = fp.FileName; // new image
            }

            
               else
            {
                    elc.Image = image; // old image 
                
            }
            elc.ElectorID = int.Parse(id);
            elc.ListID =int.Parse(lstid);
            elc.Stno = int.Parse(stno);
            

            elc.cudelc("update");

            GridView1.EditIndex = -1; // switch from textboxes to lbls
            Display();




        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
            GridView1.EditIndex = e.NewEditIndex;
            


            Display();
        }

    }
}