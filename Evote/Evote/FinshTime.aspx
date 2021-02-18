<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="FinshTime.aspx.cs" Inherits="Evote.FinshTime" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
  <h2 class="title" style="color:white">Not voting time</h2> <br />
   
        <br />
     <div class="text-center">
    <asp:Button ID="btnlogout" runat="server" Text="Logout" CssClass="btn btn-primary" OnClick="btnlogout_Click"/>
    </div>
    <br />
</asp:Content>
