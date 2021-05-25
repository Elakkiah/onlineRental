<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="online_rental1.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
  <h1 style="font-size: xx-large; text-align: center">&nbsp;</h1>
    <h1 style="font-size: xx-large; text-align: center"><b>&nbsp;Edit Profile </b></h1>
							
	
    <center>
    <div id="templatemo_content_panel_1" style="width: 593px; height: 617px">

     <div id="templatemo_section_1_2" style="text-align: center">
    	
        &nbsp;<br />
         <asp:Button ID="Button1" runat="server" Height="54px" OnClick="Button1_Click1" style="background-color: #FFFF00" Text="Show Details" Width="205px" />
         <br />
         <br />
         <br />
         <table style="width: 101%; height: 380px;">
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold"><b>CUSTOMER Name :</b></td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    <asp:TextBox ID="TextBox1" runat="server" Height="39px" Width="208px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold"><b>CUSTOMER Address:</b></td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    <asp:TextBox ID="TextBox2" runat="server" Height="39px" Width="208px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold"><b>CUSTOMER Mobile :</b></td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    <asp:TextBox ID="TextBox3" runat="server" Height="43px" Width="207px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold"><b>CUSTOMER City:</b></td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    <asp:TextBox ID="TextBox4" runat="server" Height="42px" Width="207px"></asp:TextBox>
                                                </td>
                                            </tr>
                                    
									
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold"><b>CUSTOMER Pincode:</b></td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    <asp:TextBox ID="TextBox5" runat="server" Height="49px" Width="204px"></asp:TextBox>
                                                </td>
                                            </tr>
                                    
									
									 </table><br />
								 <p>
                                     <asp:Button ID="Button2" runat="server" Height="61px" OnClick="Button2_Click" style="background-color: #009933" Text="Update Profile" />
                                     <asp:Button ID="Button3" runat="server" Height="60px" OnClick="Button3_Click" style="background-color: #FF3300" Text="Cancel" Width="126px" />
          </p>
					

        </div>
        </center>
        <br />
        <br />
								
					

</form>
</asp:Content>
