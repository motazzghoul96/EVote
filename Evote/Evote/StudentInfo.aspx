<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="Evote.StudentInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 532px;
            margin-left: 350px;
            margin-top: 13px;
        }
        .auto-style2 {
            right: -432px;
            top: 0px;
            height: 290px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
        
   <div class="contact wthree all_pad" >
	<div class="container glyphicon-align-center" >
		<h1 class="title text-center" style="color:white" >معلومات الطالب<span></span></h1>
			<div class="auto-style1">
       <div class="col-sm-6 gallery-grids pro-top ">
					<div class="gallery-grid">
						<a  class="b-link-stripe b-animate-go  swipebox">
							<div class="port-7 effect-3">
								<div class="image-box">
									<asp:Image ID="Image1" runat="server" CssClass="auto-style2" />
								</div>
								<div class="gal-desc">
									<h2 >  <asp:Label ID="lblName" runat="server" Text=""  ForeColor="White"></asp:Label></h2>
                                    <br />
                                   <h2><asp:Label ID="lblID" runat="server" Text="" ForeColor="White"></asp:Label></h2>  
                                    <br />
									<asp:Button ID="btnnext" runat="server" Text="Next" OnClick="btnnext_Click" CssClass="btn btn-primary"  />
								</div>
							</div>
						</a>
					</div>
       </div>
                
                </div>
         
      
        </div>
       
      

    </div>

				 
	
		

</asp:Content>
