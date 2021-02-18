<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="Evote.Result1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

	<div class="container">
                <h3 class="title text-center"> Result</h3>
        <br />
          <div class="col-md-12">
   
    <div class="team-grids text-center">
			<div class="col-md-6 team-grid text-center">
				<div class="team-img">
					 <!-- normal -->
					
                            <div class="img hvr-rectangle-out"> <asp:Image ID="Image1" runat="server" ImageUrl="~/icons/17241-200.png" Height="200px"/></div>
                                              <asp:LinkButton ID="lnkElector" runat="server" OnClick="lnkElector_Click">Result of Elector</asp:LinkButton>
						</div>


							<div class="info">
                              
						  <div class="info-back">
						  </div>
						</div>
					<!-- end normal -->
					<br />
					
						
				</div>
			</div>
        <div class="col-md-6 team-grid text-center">
				<div class="team-img">
					 <!-- normal -->
					
					
                            
                             <div class="img hvr-rectangle-out">   <asp:Image ID="Image2" runat="server" ImageUrl="~/icons/untitled.png" Height="200px"/></div>
                                 <asp:LinkButton ID="lnkList" runat="server" OnClick="lnkList_Click">Result of List</asp:LinkButton>
						</div>

							<div class="info">
                               
						  <div class="info-back">
						  </div>
						</div></div>
					<!-- end normal -->
					
					 
               <div class="col-md-12 team-grid text-center">
				<div class="team-img">
					 <!-- normal -->
					
					
                            
                             <div class="img hvr-rectangle-out">   <asp:Image ID="Image3" runat="server" ImageUrl="~/icons/total.jpg" Height="200px"/></div>
                               <h4> Percentage of total votes <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h4>
						</div>

							<div class="info">
                               
						  <div class="info-back">
						  </div>
						</div></div>
					<!-- end normal -->
					<br />
					 
						
				

        </div>
     </div>
      
      
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
