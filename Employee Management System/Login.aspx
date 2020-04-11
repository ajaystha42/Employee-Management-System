k<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Employee_Management_System.Login" %>

<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>

  </title>
    <link href="bootstrap.css" rel="stylesheet" />
    <script src="js/jquery-2.1.3.min.js"></script>
    <script src="js/sweetalert-dev.js"></script>
    <link href="css/sweetalert.css" rel="stylesheet" />
    <script type="text/javascript">
        function Alert(type, title, msg) {
            switch (type) {
                case "basic":
                    swal(msg);
                    break;
                case "success":
                    swal(title, msg, "success");
                    break;
                case "error":
                    swal(title, msg, "error");
                    break;
                case "warning":
                    swal(title, msg, "warning");
                    break;
            }

        }
        </script>
    <link href="Style.css" rel="stylesheet" />
   </head>
    <body>
        <form id="form1" runat="server">
            <div class="background">
    <div>
    
        <div style="margin:150px auto 0px auto; width:600px">
        <div style="width:600px">
        <div  class = "panel panel-primary">
   <div class = "panel-heading">
       <div style="padding-left:250px">
      <h3  class = "panel-title">Login</h3>
           </div>
    
       </div>
        

   
   <div width:"60px" class = "panel-body" >
 

       <div class="form-horizontal">
  <div class="form-group">
    <label class="col-sm-2 control-label">Username</label>
    <div class="col-sm-10">
       <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" placeholder="Enter Username" Width="424px"></asp:TextBox>
                 
    </div>
  </div>

           
  <div class="form-horizontal">
       <div class="form-group">
            <label class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
       <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" placeholder="Enter Password" Width="424px"></asp:TextBox>
                     
    </div>
  </div>


             <div class="form-horizontal">
             <div class="form-group">
  
    <label class="col-sm-2 control-label">Usertype</label>
    <div class="col-sm-10">
         <asp:DropDownList CssClass="form-control" ID="ddlUsertype" runat="server" Width="424px">
                            <asp:ListItem>Choose Roles</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>User</asp:ListItem>
                        </asp:DropDownList>          
    </div>
  </div>
                 </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-info btn-lg" OnClick="btnLogin_Click" Text="Login" />
                        <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-danger btn-lg" Text="Cancel" OnClick="btnCancel_Click" />
    </div>
  </div>
</div>
  
            
        </div>
</div>
            </div>
              </div>





    </div>
                </div>
    </form>
</body>
</html>
