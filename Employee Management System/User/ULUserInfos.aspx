<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="ULUserInfos.aspx.cs" Inherits="Employee_Management_System.ULUserInfos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="padding-left:200px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="328px" Width="1090px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:TemplateField HeaderText="SN">
                <ItemTemplate>
                    <div style="padding-left:10px">

                    <%#Container.DataItemIndex+1 %>
                        </div>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField  HeaderText="Photos">
                <ItemTemplate>
                    <div style="padding-left:40px">
                    <asp:ImageButton ID="ImageButton1" Height="120px" Width="120px" ImageUrl='<%#"../Gallery/"+Eval("Photo") %>' runat="server" />
                        </div>
                </ItemTemplate>
            </asp:TemplateField>
               

            <asp:TemplateField HeaderText="Username">
                <ItemTemplate>
                    <div style="padding-left:10px">
                    <%#Eval("Username") %>
                        </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>

        </div>
</asp:Content>
