<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ALUsersInfo.aspx.cs" Inherits="Employee_Management_System.ALUsersInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="padding-left:200px">
        <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="412px" Width="1026px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="EmployeeID" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField HeaderText="SN">
                <ItemTemplate>
                    <div style="padding-left:10px">
                    <%#Container.DataItemIndex+1 %>
                        </div>
                </ItemTemplate>


            </asp:TemplateField>
            <asp:TemplateField HeaderText="Photos">
             <ItemTemplate>
                 <div style="padding-left:200px;">
                 <asp:ImageButton  Width="120px" Height="120px" CommandName="ajay" ImageUrl='<%# "../Gallery/"+Eval("Photo") %>' ID="ibtnPhoto" runat="server" />
            </div>

                      </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Username">
                <ItemTemplate>
                    <div style="padding-left:20px">
                        <b>
                    <%#Eval("Username") %>
                            </b>
                        </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
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

        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="1025px">
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
        <br />
        <br />
        <br />

        </div>
</asp:Content>

