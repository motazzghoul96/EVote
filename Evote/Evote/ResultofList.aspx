<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ResultofList.aspx.cs" Inherits="Evote.ResultofList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" >
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                       
                        
                        

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

                        <asp:TemplateField HeaderText="Number of Voting">
                           
                          
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Bind("number_Vote") %>'></asp:Label>
                            </ItemTemplate>

                        </asp:TemplateField>

                       <asp:TemplateField HeaderText="Percentage of Voting">
                           
                          
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text=""><%# Eval("expr1") %>%</asp:Label>
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
           
   
 <br />   
    <div class="text-center">
    <asp:Button ID="btnback" runat="server" Text="Back" class="btn  btn-sm btn-success" OnClick="btnback_Click" />
        </div>
    <br />
</asp:Content>
