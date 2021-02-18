<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="Vote.aspx.cs" Inherits="Evote.Vote" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
	<div class="container">
		<h3 class="title">&nbsp;Vote<span></span></h3><br />
    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand1">
        <HeaderTemplate> </HeaderTemplate>
        <ItemTemplate >
            
          
		<div class="team-grids"   >
			<div class="col-md-3 team-grid text-center" style="margin-bottom:10px">
				<div class="team-img">
					 <!-- normal -->
					<div class="ih-item circle effect1"><a href="#">
						<div class="spinner">
                            <div class="img hvr-rectangle-out"> <asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/images/"+ Eval("Image")%>'  /></div>
					
						</div>
							<div class="info">
						  <div class="info-back">
						  </div>
						</div></a></div>
					<!-- end normal -->
					<h4>Name: <asp:Label ID="Label1" runat="server" Text='<%#Eval("stname") %>'></asp:Label></h4>
					<h4>List: <asp:Label ID="Label2" runat="server" Text='<%#Eval("List_Name") %>'></asp:Label> </h4>
                    <asp:HiddenField ID="HF1" runat="server" Value='<%#Eval("Elector_ID") %>' />
					
                    <div class="btn btn-default">
						<asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_OnCheckedChanged1" CssClass="circle"  />
                  
                      </div>
					<br />
				</div>
			</div>
           </div>
      
           
            
            
             
           
            
                      
           
     
             </ItemTemplate>
     
        
        <FooterTemplate></FooterTemplate>
                      
    </asp:Repeater>
         <br />
    </div>
        <br />

         <div class="container">
            
                 <div class="text-center">
                 <asp:Button ID="btnVote" runat="server" Text="Next" OnClick="btnVote_Click" CssClass="btn btn-success" Width="265px"  OnClientClick="return confirmation()" />
                     
                 </div> 
             <div class="text-center text-danger">
                <h3> <asp:Label ID="lblvote" runat="server" ForeColor="White"></asp:Label></h3>
             </div>
             </div>
            

      
              
        
  <br />
     <script class="alert-danger">
                
                function confirmation() {

                   
                    
                    if (confirm('are you sure you want to Finished ?')) {
                        return true;
                    } else {
                        return false;
                    }
                }

            </script>

    <script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
	
</asp:Content>
