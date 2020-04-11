<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="LeaveAL.aspx.cs" Inherits="Employee_Management_System.LeaveAL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width:1100px; margin:20px auto">
    <div class = "panel panel-primary">
   <div class = "panel-heading">
      <h3 style="padding-left:400px" class = "panel-title">&nbsp; LEAVE REQUESTS</h3>
   </div>
   
   <div class = "panel-body">
       <div style="padding-left:185px;margin-top:20px">


           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="723px" DataKeyNames="EmployeeNo">
               <Columns>
                   <asp:CommandField ShowSelectButton="True" ButtonType="Image" InsertImageUrl="~/Admin/redlogo.jpg" ControlStyle-Width="40px" ControlStyle-Height="40px" SelectImageUrl="~/Admin/redlogo.jpg" />
                   <asp:TemplateField HeaderText="SN">
                       <ItemTemplate>
                           <%#Container.DataItemIndex+1 %>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="Employee No">
                       <ItemTemplate>
                           <%#Eval("EmployeeNo") %>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="Username">
                       <ItemTemplate>
                           <%#Eval("Username") %>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="Post">
                       <ItemTemplate>
                           <%#Eval("Post") %>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="No of Days">
                       <ItemTemplate>
                           <%#Eval("NoOfDays") %>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="Description">
                       <ItemTemplate>
                           <asp:TextBox ID="TextBox1" Height="20px" Text='<%#Eval("Description") %>' runat="server"></asp:TextBox>
                       </ItemTemplate>
                   </asp:TemplateField>
                  
               </Columns>
               <FooterStyle BackColor="#CCCCCC" />
               <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
               <RowStyle BackColor="White" />
               <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
               <SortedAscendingCellStyle BackColor="#F1F1F1" />
               <SortedAscendingHeaderStyle BackColor="#808080" />
               <SortedDescendingCellStyle BackColor="#CAC9C9" />
               <SortedDescendingHeaderStyle BackColor="#383838" />
           </asp:GridView>

          
           





           </div>
   </div>


        
</div>



         <div style="padding-top:80px"></div>

           <div style="width:1100px">
              <div class = "panel panel-info">
   <div class = "panel-heading">
      <h3 style="margin-left:400px" class = "panel-title"><b>EMPLOYEE'S REQUEST</b></h3>
   </div>
   
   <div class = "panel-body">
       <div style="padding-left:160px;padding-top:20px">
       <div class = "form-horizontal" role = "form">
   
   <div class = "form-group">
      <label  for = "firstname" class = "col-sm-2 control-label">Employee No.</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtEmployeeNo" CssClass="form-control" Width="450px"  runat="server"></asp:TextBox>
     
     
            </div>
   </div>
   

       <div class = "form-group">
      <label for = "firstname" class = "col-sm-2 control-label">Username</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtUsername" CssClass="form-control" Width="450px" runat="server"></asp:TextBox>
      </div>
   </div>



       <div class = "form-group">
      <label for = "firstname" class = "col-sm-2 control-label">Post</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtPost" CssClass="form-control" Width="450px"  runat="server"></asp:TextBox>
      </div>
   </div>

       <div class = "form-group">
      <label for = "firstname" class = "col-sm-2 control-label">No of Days</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtNoOfDays" CssClass="form-control" Width="450px" runat="server"></asp:TextBox>
      </div>
   </div>

       <div class = "form-group">
      <label for = "firstname" class = "col-sm-2 control-label">Description</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtDescription" CssClass="form-control" Width="450px" Height="250px" runat="server" TextMode="MultiLine"></asp:TextBox>
      </div>
   </div>




    </div>
           </div>
       </div>
                  </div>
                  
    
           </div>

        </div>


     <div style="padding-top:80px"></div>

           <div style="width:1280px;padding-left:180px">
              <div class = "panel panel-info">
   <div class = "panel-heading">
      <h3 style="margin-left:400px" class = "panel-title"><b>RESPOND TO EMPLOYEE</b></h3>
   </div>
   
   <div class = "panel-body">
       <div style="padding-left:160px;padding-top:20px">



             <div class = "form-group">
      <label for = "firstname" class = "col-sm-2 control-label">Ur Response</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtDesc" CssClass="form-control" Width="450px" Height="250px" runat="server" TextMode="MultiLine"></asp:TextBox>
      </div>
   </div>


           </div>
       <div style="padding-top:20px">
       <div style="padding-left:460px">
       <asp:Button ID="btnAccept" runat="server" CssClass="btn btn-info btn-lg"  Text="Accept" />
       <asp:Button ID="btnReject" runat="server" CssClass="btn btn-danger btn-lg" Text="Reject" />
           </div>
       </div>
                  </div>
                  </div>
               </div>

</asp:Content>
