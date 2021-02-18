using Evote.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evote
{
    public partial class List : System.Web.UI.Page
    {
        Lists lst = new Lists();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Display();
            }
        }
        private void Display()
        {
            
            GridView1.DataSource = lst.getList();
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
            string id = ((Label)row.FindControl("lblID")).Text; // get value of product id
            lst.ListID = int.Parse(id);
          

            
            
           lst.cudList("delete"); 


            Display();
            // excute nonequery delete



        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex]; // pulling every controls included current row
            string id = ((Label)row.FindControl("lblID")).Text; // get value of product id
            string name = ((TextBox)row.FindControl("txtname")).Text;
            string image = ((HiddenField)row.FindControl("HF1")).Value;
            FileUpload fp = (FileUpload)row.FindControl("Fp1");
            if (fp.HasFile)
            {
                fp.SaveAs(Server.MapPath("/images/" + fp.FileName));
                lst.Image = fp.FileName; // new image
            }
            else
            {
                lst.Image = image; // old image 
            }


            lst.ListID = int.Parse(id);
            lst.List_Name = name;


            lst.cudList("update");

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
            lst.List_Name = txtinsert.Text;
            if(FileUpload1.HasFile)
            {
                
                    FileUpload1.SaveAs(Server.MapPath("/images/" + FileUpload1.FileName));
                    lst.Image = FileUpload1.FileName; // new image
                
            }
            lst.cudList("insert");
            Display();        }
    }
}