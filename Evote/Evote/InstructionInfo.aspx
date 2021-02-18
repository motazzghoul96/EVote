<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="InstructionInfo.aspx.cs" Inherits="Evote.InstructionInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

     <h2 class="title">التعليمات<span></span></h2>
   <div class="container">
               
        <br />
          <div class="col-md-12">
   
    <div class="team-grids text-center">
			
				
    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
         <HeaderTemplate>
                                           
	
                    </HeaderTemplate>
    
                    <ItemTemplate>
 
                        <div class="col-md-4 team-grid ">
				<div class="team-img">	        <img src="icons/3dlat.net_10_17_338e_bfd07eec757a1.jpg" alt=" " width="150" height="100"/>
	
                          <p><%#Eval("inst_desc") %></p> 

     </div>           
                </div>
                   
                    
       
                    </ItemTemplate>

                    <FooterTemplate>
                      
                    </FooterTemplate>
    </asp:Repeater>
       <div class="col-md-12">
           <br />
           <br />
                  <asp:Button ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click" CssClass="btn btn-success" />
             </div> 
        </div>
    </div>
             </div>
       
                   
    
</asp:Content>
