<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="LeaveRequestUL.aspx.cs" Inherits="Employee_Management_System.LeaveRequestUL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:1200px;padding-left:280px">
    <div class = "panel panel-primary">
   <div class = "panel-heading">
      <h3 style="padding-left:340px" class = "panel-title">Apply For Leave</h3>
   </div>
   
   <div class = "panel-body">
    <div style="padding-left:130px;margin-top:10px">

<div class = "form-horizontal" role = "form">
   
   <div class = "form-group">
      <label  for = "firstname" class = "col-sm-2 control-label">Employee No.</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtEmployeeNo" CssClass="form-control" Width="450px" placeholder="Enter ur Employee No." runat="server"></asp:TextBox>
     
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmployeeNo" ErrorMessage="Employee No Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
     
            </div>
   </div>
   

       <div class = "form-group">
      <label for = "firstname" class = "col-sm-2 control-label">Username</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtUsername" CssClass="form-control" Width="450px" placeholder="Enter ur Username" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
   </div>



       <div class = "form-group">
      <label for = "firstname" class = "col-sm-2 control-label">Post</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtPost" CssClass="form-control" Width="450px" placeholder="Enter ur Post" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPost" ErrorMessage="Employee's Post Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
   </div>

       <div class = "form-group">
      <label for = "firstname" class = "col-sm-2 control-label">No of Days</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtNoOfDays" CssClass="form-control" Width="450px" placeholder="Enter No of Days" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNoOfDays" ErrorMessage="No of Days Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
   </div>

       <div class = "form-group">
      <label for = "firstname" class = "col-sm-2 control-label">Description</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtDescription" CssClass="form-control" Width="450px" placeholder="Give Valid Reasons" Height="250px" runat="server" TextMode="MultiLine"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDescription" ErrorMessage="Description Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
   </div>




    </div>

       <div style="padding-left:400px">
          
       <asp:Button  ID="btnRequest" runat="server" CssClass="btn btn-info btn-lg"   Text="Apply" OnClick="btnRequest_Click" ValidationGroup="a" />
      
       
       <asp:Button ID="btnCancel" runat="server"  CssClass="btn btn-danger btn-lg"  Text="Cancel" OnClick="btnCancel_Click" />

            </div>
        </div>

       </div>



   </div>
</div>
    </div>

</asp:Content>
