<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="FInish.aspx.cs" Inherits="Evote.FInish" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
              <br />
       <br />
        <br />
          <div class="col-md-12 text-center">
   
    <div class="team-grids text-center">
			
				 <div class="team-grid text-center">
				<div class="team-img">	
	
	 <h3 class="title">  لقد تمت العملية بنجاح انقر هنا لحفظ التصويت</h3>
                    <br />
                    <br />
			<asp:Button ID="btnfinish" runat="server" Text="Finish" OnClick="btnfinish_Click" CssClass="btn btn-success"    />
     </div>
                     <div class="info">
                          
						  <div class="info-back">
                               
						  </div>
						</div>

                     </div>
        </div>
              </div>
       </div>
    <br />
    <br />
    <br />

</asp:Content>
