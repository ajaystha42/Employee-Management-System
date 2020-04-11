<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AlCalendar.aspx.cs" Inherits="Employee_Management_System.AlCalendar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


  
    <div style="padding-left:400px">
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="513px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="798px" OnDayRender="Calendar1_DayRender1" OnSelectionChanged="Calendar1_SelectionChanged1">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
            <DayStyle Width="14%" />
            <NextPrevStyle Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
            <TodayDayStyle BackColor="#CCCC99" />
        </asp:Calendar>
    </div>
        <div style="padding-top:20px;padding-left:460px">
   
    <div class = "form-horizontal" runat="server">

        <div class = "form-group">
      <label for = "username" class = "col-sm-2 control-label">Event Name</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtEventName" Width="420px" CssClass="form-control" runat="server"></asp:TextBox>

      </div>
   </div>

         <div class = "form-group">
      <label for = "username" class = "col-sm-2 control-label">Event Date</label>
		
      <div class = "col-sm-10">
          <asp:TextBox ID="txtEventDate" Width="420px" CssClass="form-control" runat="server"></asp:TextBox>

      </div>
   </div>

        </div>

 </div>
    <div style="padding-left:860px">
         <div class = "form-group">
   
		
      <div class = "col-sm-10">
          <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success btn-lg"  Text="Save" OnClick="btnSave_Click" />
          <asp:Button ID="btnCancel" runat="server"  CssClass="btn btn-danger btn-lg"  Text="Cancel" OnClick="btnCancel_Click" />
      </div>
   </div>
            </div>
       
</asp:Content>
