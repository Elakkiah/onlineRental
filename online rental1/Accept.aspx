<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Accept.aspx.cs" Inherits="online_rental1.Accept" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align: center; font-size: xx-large">&nbsp;</h1>
            <h1 style="text-align: center; font-size: xx-large"><b>Booking Details</b></h1>
        </div>
        <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None" style="font-family: Arial; font-size: small">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="hid" HeaderText="HID" />
            
            <asp:BoundField DataField="houseno" HeaderText="HouseNo" />
           
            <asp:BoundField DataField="amount" HeaderText="Amount" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="mobile" HeaderText="Mobile" />
            <asp:BoundField DataField="city" HeaderText="City" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            <asp:ButtonField CommandName="accept" Text="Accept" ButtonType="Button" >
            <ControlStyle BackColor="#009900" />
            </asp:ButtonField>
            <asp:ButtonField CommandName="reject" Text="Reject" ButtonType="Button" >
            <ControlStyle BackColor="#FF3300" />
            </asp:ButtonField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

</form>
</asp:Content>
