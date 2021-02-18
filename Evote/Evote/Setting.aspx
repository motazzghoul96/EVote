<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Setting.aspx.cs" Inherits="Evote.Setting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
       <br />
       <div class="title">
       <h3 class="title text-center">Control panel<span></span></h3>
           </div>
       <br />
       <br />

               <div class="col-md-12 ser-first-grid  wow fadeInUp animated" data-wow-delay=".5s">
               
    
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnRowCancelingEdit="GridView1_RowCancelingEdit"  OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="col-md-12 col-xs-12" Height="16px" style="margin-left: 8px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                       
                        
                         <asp:TemplateField HeaderText="Date">
                           
                           <EditItemTemplate>
                                <asp:TextBox ID="txtdate" runat="server" CssClass="form-control" Text='<%# Bind("date") %>' TextMode="Date" required=""></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                               <br />
                                <asp:Label ID="lbldate" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                            </ItemTemplate>
                              <ControlStyle Height="50px" Width="150px" />
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="start time" ControlStyle-Width="200px">
                            <EditItemTemplate>
                                 <br />
                                <asp:TextBox ID="txtstart" runat="server" CssClass="form-control input-group clockpicker" data-placement="bottom" data-alignment="left" data-donetext="Done" Text='<%# Bind("election_start_time") %>' ></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <br />
                                <asp:Label ID="lblstart" runat="server" Text='<%# Bind("election_start_time") %>'></asp:Label>
                           
                                 </ItemTemplate>
                             <ControlStyle Height="50px" Width="150px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="finish time" ControlStyle-Width="200px">
                            <EditItemTemplate>
                                 <br />
                                <asp:TextBox ID="txtfinish" runat="server" Text='<%# Bind("election_finish_time") %>' CssClass="form-control input-group clockpicker" data-placement="bottom" data-alignment="left" data-donetext="Done"></asp:TextBox>
                                
                            </EditItemTemplate>
                            <ItemTemplate>
                                <br />
                                <asp:Label ID="lblfinish" Text='<%#Eval("election_finish_time")   %>' runat="server" /> 
                            </ItemTemplate>

                            <ControlStyle Height="50px" Width="150px" />
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Vote number">
                            <EditItemTemplate>
                               
                                <asp:TextBox ID="txtnumVote" runat="server" Text='<%# Bind("no_of_voting") %>' CssClass="form-control" TextMode="Number" ></asp:TextBox>
                                
                            </EditItemTemplate>
                            <ItemTemplate>
                                <br />
                                <asp:Label ID="lblnumvote" Text='<%#Eval("no_of_voting")   %>' runat="server"  /> 
                            </ItemTemplate>

                            <ControlStyle Height="50px" Width="150px" />
                        </asp:TemplateField>
                       
                      
                       
                         <asp:CommandField ButtonType="Image" CancelImageUrl="~/icons/if_cancel_32387.png"  EditImageUrl="~/icons/if_editprofile_101844.png" ShowEditButton="True" UpdateImageUrl="~/icons/if_Save_70652.png">
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
    <br />
    <br />

    <script type="text/javascript">$('.clockpicker').clockpicker();

    </script>

</asp:Content>
