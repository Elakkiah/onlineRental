<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminview.aspx.cs" Inherits="online_rental1.adminview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div><h1 style="font-size: xx-large; text-align: center">&nbsp;</h1>
            <h1 style="font-size: xx-large; text-align: center"><b>View House Details</b></h1></div><br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="820px" style="font-family: Arial; font-size: small">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:TemplateField HeaderText="image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                         <asp:Image ID="Image1"  runat="server"  ImageUrl='<%# "disp.aspx?hid="+Eval("hid") %>' Height="192px" 
           Width="189px" />
           </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="hid" HeaderText="HouseID" />
                <asp:BoundField DataField="category" HeaderText="Category" />
                <asp:BoundField DataField="type" HeaderText="Type Of House" />
                <asp:BoundField DataField="houseno" HeaderText="House No" />
                <asp:BoundField DataField="address" HeaderText="Adddress" />
                <asp:BoundField DataField="amount" HeaderText="Amount" />
                <asp:BoundField DataField="status" HeaderText="Status" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle ForeColor="#4A3C8C" HorizontalAlign="Right" BackColor="#E7E7FF" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
      </form>

</asp:Content>
