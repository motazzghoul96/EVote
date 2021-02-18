<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="message_result.aspx.cs" Inherits="Evote.message_result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   <div class="container ">
                <h3 class="title text-center"> Result</h3>
        <br />
          
   
   
					 <!-- normal -->
					
                            <div class="img hvr-rectangle-out text-center"> <asp:Image ID="Image1" runat="server" ImageUrl="~/icons/time.png" Height="200px"/></div>
                         </div>
             

          
							<div class="info">
                               
						  <div class="info-back">
                              <br />
                            
						  </div>
						</div>
					<!-- end normal -->
					<br />
					
						
			<h3 class="text-center">The voting has not yet ended</h3>	
	
              <br />
    <div class="text-center">
      <asp:LinkButton ID="btnback" runat="server" CssClass="btn btn-success" OnClick="btnback_Click">Back</asp:LinkButton>      
               </div>  
					
  

</asp:Content>
