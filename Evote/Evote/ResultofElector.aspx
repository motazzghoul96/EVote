<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ResultofElector.aspx.cs" Inherits="Evote.Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Width="100%">
         <Columns>               
                       
              <asp:TemplateField HeaderText="Image">
                           
                            <ItemTemplate>
                                <asp:Image ID="Image1" ImageUrl='<%# "~/images/"+ Eval("Image")   %>' runat="server" /> 
                            </ItemTemplate>
                            <ControlStyle Height="70px" Width="70px" />
                        </asp:TemplateField> 
              <asp:TemplateField HeaderText="student Name">
                            
                            <ItemTemplate>
                                <asp:Label ID="lblname" runat="server" Text='<%# Bind("stname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                       
             
                         <asp:TemplateField HeaderText="list name">
                           
                          
                            <ItemTemplate>
                                <asp:Label ID="lbllistname" runat="server" Text='<%# Bind("List_Name") %>'></asp:Label>
                            </ItemTemplate>

                        </asp:TemplateField>


                       
                        <asp:TemplateField HeaderText="Vote number">
                            
                            <ItemTemplate>
                                <asp:Label ID="lblname" runat="server" Text='<%# Bind("Expr1") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
              <asp:TemplateField HeaderText="Percentage of votes">
                            
                            <ItemTemplate>
                                <asp:Label ID="lblname" runat="server" Text= ""><%# Eval("Expr2") %>%</asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
            
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
   
   <br /> <div class="text-center">
    <asp:Button ID="btnback" runat="server" Text="Back" class="btn  btn-sm btn-success" OnClick="btnback_Click" />
        </div>
    <br />
</asp:Content>
