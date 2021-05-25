<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="online_rental1.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
 <center>
    <div id="templatemo_content_panel_1" style="width: 593px; height: 617px">

     <div id="templatemo_section_1_2" style="text-align: center">
    	
        &nbsp;<br />
         <span style="font-family: Arial; font-weight: bold; font-size: xx-large">ADMIN LOGIN HERE</span><br />
         <br />
         <br />
         <table style="width: 101%; height: 380px;">
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold">EMAIL ID</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    <asp:TextBox ID="TextBox1" runat="server" Height="39px" Width="208px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold">PASSWORD</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    <asp:TextBox ID="TextBox2" runat="server" Height="39px" Width="208px" TextMode="Password"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold">&nbsp;</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold" colspan="2">
                                                    <asp:Button ID="Button1" runat="server" Height="54px" style="background-color: #009933" Text="Login" Width="164px" OnClick="Button1_Click" />
                                                    <asp:Button ID="Button2" runat="server" Height="53px" style="background-color: #FF3300" Text="Cancel" Width="145px" OnClick="Button2_Click" />
                                                </td>
                                            </tr>
                                    
									
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold">&nbsp;</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Register Here</asp:LinkButton>
                                                </td>
                                            </tr>
                                    
									
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold">&nbsp;</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    <asp:Label ID="Label1" runat="server" style="color: #FFFFFF"></asp:Label>
                                                </td>
                                            </tr>
                                    
									
									 </table>
					

        </div>
        </center>
								
					

</form>
    
</asp:Content>


