<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="edithouse.aspx.cs" Inherits="online_rental1.edithouse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div><h1 style="font-size: xx-large; text-align: center">&nbsp;</h1>
            <h1 style="font-size: xx-large; text-align: center"><b>Edit House Details</b></h1></div><br /><br />
    <asp:GridView ID="GridView1" runat="server" DataKeyNames="hid" Height="200px" OnRowEditing="GridView1_RowEditing" OnRowUpdated="GridView1_RowUpdated" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="738px" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None" style="font-family: Arial; font-size: small">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="hid" HeaderText="House ID" />
                    <asp:BoundField DataField="category" HeaderText="Category" />
<asp:BoundField DataField="type" HeaderText="type"></asp:BoundField>
                    <asp:BoundField DataField="houseno" HeaderText="HouseNO" />
                    <asp:BoundField DataField="address" HeaderText="address" />
                    <asp:BoundField DataField="amount" HeaderText="Amount" />
                    <asp:CommandField ShowEditButton="True" CancelText="cancel" HeaderText="Action" UpdateText="update" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <EmptyDataTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
                </EmptyDataTemplate>
                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView></form>
</asp:Content>
