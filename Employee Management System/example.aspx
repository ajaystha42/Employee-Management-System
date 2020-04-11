<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="example.aspx.cs" Inherits="Employee_Management_System.example" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.css" rel="stylesheet" />
</head>
<body>
    
    <form runat="server">
    <asp:GridView  ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="256px" Width="1018px">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>

        <div style="width:1000px;margin:20px auto">
    <div class = "panel panel-danger">
   <div class = "panel-heading">
      <h3 style="margin-left:300px" class = "panel-title">DELETE USER</h3>
   </div>
   
   <div class = "panel-body">
    
           <div id="Div1" class = "form-horizontal" role = "form" runat="server">


                    <div class = "form-group">
      <label for = "employeeno" class = "col-sm-2 control-label">Employee No.</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtPassword" Width="280px" CssClass="form-control"  runat="server"></asp:TextBox>
      </div>
                 </div>

        <div class = "form-group">
      <label for = "username" class = "col-sm-2 control-label">Username</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtUsername" Width="280px" CssClass="form-control"  runat="server"></asp:TextBox>
      </div>
   </div>


                <div style="padding-left:260px;margin-top:25px" class = "form-group">
      
		
      <div class = "col-sm-10">
         
          <asp:Button ID="btnDelete" CssClass=" btn btn-danger btn-lg"  runat="server" Text="Delete" />
          <asp:Button ID="btnCancel" CssClass=" btn btn-default btn-lg"  runat="server" Text="Cancel" />

      </div>
   </div>

        
               </div>





   </div>
</div>
        </div>
        </form>

</body>
</html>
