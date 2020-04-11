<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="IntoUserInfoAl.aspx.cs" Inherits="Employee_Management_System.IntoUserInfoAl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:1100px; margin:20px auto">

    <div class = "panel panel-info">
   <div class = "panel-heading">
      <h3 style="padding-left:380px" class = "panel-title"><b>EMPLOYEE INFO</b></h3>
   </div>
   
   <div class = "panel-body">
        <div style="padding-left:185px;margin-top:20px">
         <div id="Div1" class = "form-horizontal" role = "form" runat="server">

        <div class = "form-group">
      <label for = "username" class = "col-sm-2 control-label">Username</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtUsername" Width="444px" CssClass="form-control"  runat="server" OnTextChanged="txtUsername_TextChanged"></asp:TextBox>
      </div>
   </div>






             </div>
             </div>
       </div>
    </div>
        </div>





</asp:Content>
