<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ALCreate.aspx.cs" Inherits="Employee_Management_System.ALCreate" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div style="width:1100px; margin:20px auto">
    <div class = "panel panel-info">
   <div class = "panel-heading">
      <h3 style="padding-left:380px" class = "panel-title"><b>PERSONAL DETAILS</b></h3>
   </div>
   
   <div class = "panel-body">
       <div style="padding-left:185px;margin-top:20px">

           <div class="form-inline">
               <div style="padding-left:37px">
      <div class = "form-group">
      <label  for = "employeeid" class = "col-sm-2 control-label">Employee No.</label>
	
      <div  class = "col-sm-10">
          <asp:TextBox ID="txtEmployeeNo" placeholder="Click Generate" Width="444px" CssClass="form-control" runat="server"></asp:TextBox>
     
           </div>
           
   </div>


                <div class = "form-group">
      
      <div class = "col-sm-10">
          <asp:Button ID="btnGenerate" runat="server" CssClass="btn btn-info btn-lg"  Text="Generate" OnClick="btnGenerate_Click" />
      </div>
   </div>


              </div>
               </div>
           
           <div style="padding-left:155px"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Employee Number Required" ControlToValidate="txtEmployeeNo" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
          </div>
          
               
           <div style="padding-top:10px"> </div>
 <div id="Form1" class = "form-horizontal" role = "form" runat="server">

  
        <div class = "form-group">
      <label  for = "title" class = "col-sm-2 control-label">Title</label>
		
      <div class = "col-sm-10">
          <asp:DropDownList CssClass="form-control" ID="ddlTitle" runat="server" Width="444px">
              <asp:ListItem Selected="True">Mr.</asp:ListItem>
              <asp:ListItem>Mrs.</asp:ListItem>
              <asp:ListItem>Miss.</asp:ListItem>
          </asp:DropDownList>
      </div>
   </div>

       

     
          
  
        <div style="padding-top:15px"></div>
   
  <div class = "form-group">
      <label for = "firstname" class = "col-sm-2 control-label">First Name</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtFirstName" CssClass="form-control" Width="444px" placeholder="Enter First Name" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
   </div>

  <div class = "form-group">
      <label for = "firstname" class = "col-sm-2 control-label">Last Name</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtLastName" CssClass="form-control" Width="444px" placeholder="Enter Last Name" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
   </div>

 


      <div style="margin-top:20px">
   
   <div class = "form-group">
      <label for = "gender" class = "col-sm-2 control-label">Gender</label>
		
      <div class = "col-sm-10">
          <asp:RadioButtonList ID="radGender" runat="server" RepeatDirection="Horizontal" Width="444px">
              <asp:ListItem Selected="True">Male</asp:ListItem>
              <asp:ListItem>Female</asp:ListItem>
          </asp:RadioButtonList>
      </div>
   </div>
         </div>
     
     <div style="margin-top:20px">
   
   <div class = "form-group">
      <label for = "firstname" class = "col-sm-2 control-label">Country</label>
		
      <div class = "col-sm-10">
          <asp:DropDownList CssClass="form-control" ID="ddlCountry"  Width="444px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged"></asp:DropDownList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlCountry" ErrorMessage="Select Country First" ForeColor="Red" ValidationGroup="a" InitialValue="Choose Country"></asp:RequiredFieldValidator>

      </div>
     

   </div>
         </div>
   
   <div class = "form-group">
      <label for = "lastname" class = "col-sm-2 control-label">City</label>
		
      <div class = "col-sm-10">
          <asp:DropDownList CssClass="form-control" ID="ddlCity"  Width="444px" runat="server"></asp:DropDownList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlCity" ErrorMessage="Select City First" ForeColor="Red" InitialValue="Choose City" ValidationGroup="a"></asp:RequiredFieldValidator>
&nbsp;
      </div>
   </div>

     <div class = "form-group">
      <label for = "post" class = "col-sm-2 control-label">Post</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtPost" CssClass="form-control" Width="444px" placeholder="Enter Post" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtPost" ErrorMessage="Post of Employee Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
   </div>

      
   <div class = "form-group">
      <label for = "address" class = "col-sm-2 control-label"><b>ADDRESS INFO</b></label>
		
      
   </div>

     <div class = "form-group">
      <label for = "temporaryaddress" class = "col-sm-2 control-label">Temporary</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtTemporary" CssClass="form-control" Width="444px" placeholder="Enter Temporary Address" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtTemporary" ErrorMessage="Temporary Address Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
   </div>

     <div class = "form-group">
      <label for = "permanentaddress" class = "col-sm-2 control-label">Permanent</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtPermanent" CssClass="form-control" Width="444px" placeholder="Enter Permanent Address" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txtPermanent" ErrorMessage="Permanent Address Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
   </div>

 


     <div style="margin-top:20px">

      <div class = "form-group">
      <label for = "dateofjoining" class = "col-sm-2 control-label">Date of Joining</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtDateOfJoining" CssClass="form-control" Width="444px" placeholder="Enter Date of Joining" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDateOfJoining" ErrorMessage="Date of Joining Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
          <ajaxToolkit:CalendarExtender ID="txtDateOfJoining_CalendarExtender" runat="server" TargetControlID="txtDateOfJoining" />
      </div>
   </div>
         </div>

    <div class = "form-group">
      <label for = "dateofbirth" class = "col-sm-2 control-label">Date of Birth</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtDateOfBirth" CssClass="form-control" Width="444px" placeholder="Enter Date of Birth" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDateOfBirth" ErrorMessage="Date of Birth Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
          <ajaxToolkit:CalendarExtender ID="txtDateOfBirth_CalendarExtender" runat="server" TargetControlID="txtDateOfBirth" />
      </div>
   </div>

     <div class = "form-group">
      <label for = "contact" class = "col-sm-2 control-label"><b>CONTACT INFO</b></label>
		
     
   </div>


      <div class = "form-group">
      <label for = "telephone" class = "col-sm-2 control-label">Telephone No:</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtTelephone" CssClass="form-control" Width="444px" placeholder="Enter Telephone No." runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtTelephone" ErrorMessage="Telephone No. Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
   </div>

      <div class = "form-group">
      <label for = "mobile" class = "col-sm-2 control-label">Mobile No:</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtMobile" CssClass="form-control" Width="444px" placeholder="Enter Mobile No." runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtMobile" ErrorMessage="Mobile No.Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
   </div>


      <div class = "form-group">
      <label for = "email" class = "col-sm-2 control-label">Email Address</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtEmail" CssClass="form-control" Width="444px" placeholder="Enter Email Address" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Address Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Not Valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="a"></asp:RegularExpressionValidator>
      </div>
   </div>

      <div class = "form-group">
      <label for = "basicsalary" class = "col-sm-2 control-label">Basic Salary</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtBasicSalary" CssClass="form-control" Width="444px" placeholder="Enter Basic Salary" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtBasicSalary" ErrorMessage="Enter Basic Salary" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
   </div>

       <div class = "form-group">
      <label for = "contractperiod" class = "col-sm-2 control-label">Contract Period</label>
           
		
     <div class = "col-sm-10">
          <asp:DropDownList CssClass="form-control" ID="ddlContractPeriod" runat="server" Width="444px">
              <asp:ListItem Selected="True">Choose Period</asp:ListItem>
              <asp:ListItem>One Year</asp:ListItem>
              <asp:ListItem>Two Years</asp:ListItem>
                  <asp:ListItem>Four Years</asp:ListItem>
                  <asp:ListItem>Five Years</asp:ListItem>
              
          </asp:DropDownList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlContractPeriod" ErrorMessage="Contract Period Required" ForeColor="Red" InitialValue="Choose Period" ValidationGroup="a"></asp:RequiredFieldValidator>
   </div>
        </div>
          
         <div class = "form-group">
      <label for = "contracttype" class = "col-sm-2 control-label">Contract Type</label>
		
      <div class = "col-sm-10">
          <asp:DropDownList CssClass="form-control" ID="ddlContractType" runat="server" Width="444px">
              <asp:ListItem Selected="True">Choose Type</asp:ListItem>
              <asp:ListItem>Full Time</asp:ListItem>
              <asp:ListItem>Part Time</asp:ListItem>
              
             
          </asp:DropDownList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="ddlContractType" ErrorMessage="Contract Type Required" ForeColor="Red" InitialValue="Choose Type" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
             
   </div>


     <div class = "form-group">
      <label for = "allowbonus" class = "col-sm-2 control-label">Allow Bonus</label>
		
      <div class = "col-sm-10">
          <asp:CheckBox ID="chkAllpwBonus" runat="server" />
      </div>
   </div>


     <div class = "form-group">
      <label for = "OT" class = "col-sm-2 control-label">OT</label>
		
      <div class = "col-sm-10">
          <asp:CheckBox ID="chkOt" runat="server" />
      </div>
   </div>

     <div class = "form-group">
      <label for = "allowbonus" class = "col-sm-2 control-label">Photo</label>
         
      <div class = "col-sm-10">
    <asp:FileUpload ID="FileUpload1" runat="server" />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Employee's Photo Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
   </div>

     <div class = "form-group">
      <label for = "OT" class = "col-sm-2 control-label">Is Active</label>
		
      <div class = "col-sm-10">
          <asp:CheckBox ID="chkIsActive" runat="server" />
         

      </div>
   </div>


     





        


    
    


    </div>
           </div>
   </div>
</div>

      <div class = "panel panel-success">
   <div class = "panel-heading">
      <h3 style="padding-left:380px" class = "panel-title"><b>CREDENTIAL DETAILS</b></h3>
   </div>
   
   <div class = "panel-body">

       <div style="padding-left:185px;margin-top:20px">
       <div id="Div1" class = "form-horizontal" role = "form" runat="server">

        <div class = "form-group">
      <label for = "username" class = "col-sm-2 control-label">Username</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtUsername" Width="444px" CssClass="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
   </div>

             <div class = "form-group">
      <label for = "password" class = "col-sm-2 control-label">Password</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtPassword" Width="444px" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
   </div>

               <div class = "form-group">
      <label for = "repassword" class = "col-sm-2 control-label">Re-Enter Password</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtRePassword" Width="444px" CssClass="form-control" placeholder="Re-Enter Password" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtRePassword" ErrorMessage="Re-Enter ur Password" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
   </div>

                <div class = "form-group">
      <label for = "usertype" class = "col-sm-2 control-label">User Type</label>
		
      <div style="margin-bottom:25px" class = "col-sm-10">
          <asp:DropDownList CssClass="form-control" ID="ddlUsertype" Width="444px" runat="server" >
              <asp:ListItem Selected="True">Choose Roles</asp:ListItem>
              <asp:ListItem>Admin</asp:ListItem>
              <asp:ListItem>User</asp:ListItem>
          </asp:DropDownList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="ddlUsertype" ErrorMessage="User Type Required" ForeColor="Red" InitialValue="Choose Roles" ValidationGroup="a"></asp:RequiredFieldValidator>
      </div>
   </div>


            <div style="margin-left:402px" class = "form-group">
    
		
      <div class = "col-sm-10">
          <asp:Button ID="btnSave" CssClass="btn btn-success btn-lg"  runat="server" Text="Save" OnClick="btnSave_Click" ValidationGroup="a" />

          <asp:Button ID="btnCancel" CssClass="btn btn-danger btn-lg" runat="server" Text="Cancel" OnClick="btnCancel_Click" />


      </div>
   </div>




           </div>
      </div>



   </div>
</div>
    </div>

   

</asp:Content>
