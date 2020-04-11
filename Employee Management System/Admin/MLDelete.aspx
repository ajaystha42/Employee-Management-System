<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="MLDelete.aspx.cs" Inherits="Employee_Management_System.MLDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Form1" runat="server">
        <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:GridView  ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="256px" Width="1018px" DataKeyNames="EmployeeId" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" AutoGenerateColumns="False">
        <Columns>
            <asp:CommandField ButtonType="Image" ControlStyle-Width="40px" ControlStyle-Height="40px" ShowSelectButton="True" SelectImageUrl="~/Images/redlogo.jpg" >
<ControlStyle Height="32px" Width="32px"></ControlStyle>
            </asp:CommandField>
            <asp:TemplateField HeaderText="Title">
                <ItemTemplate>
                    <%#Eval("Title") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Employee No">
                <ItemTemplate>
                    <%#Eval("EmployeeNo") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="First Name">
                <ItemTemplate>
                    <%#Eval("FirstName") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Laste Name">
                <ItemTemplate>
                <%#Eval("LastName") %>
                    </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender">
                <ItemTemplate>
                    <%#Eval("Gender") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Country">
                <ItemTemplate>
                    <%#Eval("Country") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City">
                <ItemTemplate>
                    <%#Eval("City") %>
                </ItemTemplate>
            </asp:TemplateField>
               <asp:TemplateField HeaderText="Post">
                   <ItemTemplate>
                       <%#Eval("Post") %>
                   </ItemTemplate>
               </asp:TemplateField>
            <asp:TemplateField HeaderText="Temporary Address">
                <ItemTemplate>
                    <%#Eval("TemporaryAdd") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Permanent Address">
                <ItemTemplate>
                    <%#Eval("PermanentAdd") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date of Joining">
                <ItemTemplate>
                    <%#Eval("DateOfJoining") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date of Birth">
                <ItemTemplate>
                    <%#Eval("DateOfBirth") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Telephone No.">
                <ItemTemplate>
                    <%#Eval("TelephoneNo") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mobile No.">
                <ItemTemplate>
                    <%#Eval("MobileNo") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email Address">
                <ItemTemplate>
                    <%#Eval("EmailAdd") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Basic Salary">
                <ItemTemplate>
                    <%#Eval("BasicSalary") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contract Period">
                <ItemTemplate>
                    <%#Eval("ContractPeriod") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contract Type">
                <ItemTemplate>
                    <%#Eval("ContractType") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Allow Bonus">
                <ItemTemplate>
                    <%#Eval("AllowBonus") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Overtime">
                <ItemTemplate>
                    <%#Eval("Ot") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Photo">
                <ItemTemplate>

                    <asp:Image ID="Image1" Width="32px" Height="32px" ImageUrl='<%#"../Gallery/"+Eval("Photo") %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Is Active">
                <ItemTemplate>
                    <%#Eval("IsActive") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Username">
                <ItemTemplate>
                    <%#Eval("Username") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Usertype">
                <ItemTemplate>
                    <%#Eval("Usertype") %>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle ForeColor="#330099" BackColor="White" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>

        <div style="width:1000px;margin:20px auto">
    <div class = "panel panel-danger">
   <div class = "panel-heading">
      <h3 style="margin-left:390px" class = "panel-title"><b>DELETE USER</b></h3>
   </div>
   
   <div class = "panel-body">
    
       <div style="padding-left:140px">
           <div id="Div1" class = "form-horizontal" role = "form" runat="server">


                    <div class = "form-group">
      <label for = "employeeno" class = "col-sm-2 control-label">Employee No.</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtEmployeeNo" Width="405px" CssClass="form-control"  runat="server"></asp:TextBox>
      </div>
                 </div>

        <div class = "form-group">
      <label for = "username" class = "col-sm-2 control-label">Username</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtUsername" Width="405px" CssClass="form-control"  runat="server"></asp:TextBox>
      </div>
   </div>


                <div style="padding-left:360px;margin-top:25px" class = "form-group">
      
		
      <div class = "col-sm-10">
         
          <asp:Button ID="btnDelete" CssClass=" btn btn-danger btn-lg"  runat="server" Text="Delete" OnClick="btnDelete_Click" />
          <asp:Button ID="btnCancel" CssClass=" btn btn-default btn-lg"  runat="server" Text="Cancel" OnClick="btnCancel_Click" />

      </div>
   </div>

        
               </div>
           </div>





   </div>
</div>
        </div>
        </div>
</asp:Content>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            