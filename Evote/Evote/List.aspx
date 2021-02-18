<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Evote.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    			
    <div class="contact wthree all_pad">
	<div class="container">
		<h2 class="title" style="color:white">List<span></span></h2>
             <div class="ser-page">
				<div class="col-md-4 ser-first-grid  wow fadeInRight animated" data-wow-delay=".5s" style="left: 0px; top: -95px; height: 318px">   
                     <div class="banner-info" style="margin-left:100px 0 0">
                         
		                 <div class="container">
			                <div class="profile-left wow flipInY" data-wow-duration="1.5s" data-wow-delay="0s">
                                 <h3 class="header" style="text-align:center">Add List</h3>
                     <p >&nbsp;</p>
					<div class="login">
                         <asp:TextBox ID="txtinsert" runat="server" placeholder="name" class="form-control"></asp:TextBox>
              
                <label style="color:white">Image</label>
                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
              
                 <br />
           <asp:Button ID="btninsert" runat="server" Text="ADD" OnClick="btninsert_Click"  class="btn btn-primary" />
                 </div></div></div>
                         </div>
				
                    </div>
                 <div class="container">
               <div class="col-md-6 ser-first-grid  wow fadeInUp animated" data-wow-delay=".5s">
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="col-md-12 col-xs-12" Height="16px" style="margin-left: 32px; left: 0px; top: 0px; ">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                       
                        
                         <asp:TemplateField HeaderText="List ID">
                           
                          
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Bind("ListID") %>'></asp:Label>
                            </ItemTemplate>

                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="List Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtname" runat="server" CssClass="form-control" Text='<%# Bind("List_Name") %>' ></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblname" runat="server" Text='<%# Bind("List_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Image">
                            <EditItemTemplate>
                                <asp:FileUpload ID="Fp1" runat="server" />
                                <asp:HiddenField ID="HF1" value='<%# Bind("Image") %>' runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" ImageUrl='<%# "~/images/"+ Eval("Image")   %>' runat="server" /> 
                            </ItemTemplate>
                            <ControlStyle Height="70px" Width="70px" />
                        </asp:TemplateField>

                       
                      
                       
                         <asp:CommandField ButtonType="Image" CancelImageUrl="~/icons/if_cancel_32387.png" DeleteImageUrl="~/icons/if_f-cross_256_282471.png" EditImageUrl="~/icons/if_editprofile_101844.png" ShowEditButton="True" UpdateImageUrl="~/icons/if_Save_70652.png">
                         <ControlStyle Height="25px" Width="25px" />
                         </asp:CommandField>
                         <asp:CommandField ButtonType="Image" DeleteImageUrl="~/icons/if_f-cross_256_282471.png" ShowDeleteButton="True">
                         <ControlStyle Height="25px" Width="25px" />
                         </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
         
                </asp:GridView>
            </div>
               </div>
            </div>
                
        </div>
    </div>
</asp:Content>
