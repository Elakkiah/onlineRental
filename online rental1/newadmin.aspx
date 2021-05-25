<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="newadmin.aspx.cs" Inherits="online_rental1.newadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server"> 
   
       
        
 <center>
    <div id="templatemo_content_panel_1" style="width: 632px; height: 711px">

        <div id="templatemo_section_1_2" style="text-align: center; width: 626px;">
    	
            <br />
         <span style="font-family: Arial; font-weight: bold; font-size: xx-large">ADMIN REGISTRATION<br />
            <br />
            <br />
            <br />
            </span>
         <br />
         <table style="width: 101%; height: 380px;">
                                            <tr>
                        <td class="auto-style2" style="font-family: Arial; font-weight: bold; font-size: large">
                            AdminID</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                            <asp:TextBox ID="TextBox1" runat="server" Height="38px" Width="310px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                        <td class="auto-style9" style="font-family: Arial; font-weight: bold; font-size: large">
                            NAME</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                            <asp:TextBox ID="FNAME" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="Black" Width="308px" Height="30px" CssClass="auto-style10"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                        <td class="auto-style9" style="font-family: Arial; font-weight: bold; font-size: large">
                            ADDRESS</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                            <asp:TextBox ID="ADDRESS" runat="server" BackColor="White" CssClass="auto-style6" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="Black" Rows="3" TextMode="MultiLine" Width="309px" Height="70px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                        <td class="auto-style9" style="font-family: Arial; font-weight: bold; font-size: large">
                            MOBILE</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                            <asp:TextBox ID="PHONENO" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="Black" Width="308px" Height="35px" CssClass="auto-style10"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                        <td class="auto-style9" style="font-family: Arial; font-weight: bold; font-size: large">
                            CITY</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                            <asp:TextBox ID="txtcity" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="Black" Width="308px" Height="34px" CssClass="auto-style10"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                        <td class="auto-style9" style="font-family: Arial; font-weight: bold; font-size: large">
                            PINCODE</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                            <asp:TextBox ID="Pin" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="Black" Width="308px" Height="28px" CssClass="auto-style10"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                        <td class="auto-style9" style="font-family: Arial; font-weight: bold; font-size: large">
                            EMAIL ID</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                            <asp:TextBox ID="MAIL" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="Black" Width="305px" Height="30px" CssClass="auto-style10"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                        <td class="auto-style9" style="font-family: Arial; font-weight: bold; font-size: large">
                            PASSWORD</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                            <asp:TextBox ID="PASSWORD" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="Black" TextMode="Password" Width="305px" Height="38px" CssClass="auto-style10"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                        <td class="auto-style9" style="font-family: Arial; font-weight: bold; font-size: large">
                            &nbsp;</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold" colspan="2">
                                                    <asp:Button ID="Button1" runat="server" Height="54px" style="background-color: #009933" Text="Insert" Width="164px" OnClick="Button1_Click" />
                                                    <asp:Button ID="Button2" runat="server" Height="53px" style="background-color: #FF3300" Text="Cancel" Width="145px" OnClick="Button2_Click" />
                                                </td>
                                            </tr>
                                    
									
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold">&nbsp;</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                                                    &nbsp;</td>
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
   
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="auto-style13">
                            <asp:Label ID="Label2" runat="server" ForeColor="Yellow" 
                                style="color: #000080; font-weight: 700"></asp:Label>
                        </td>
                    </tr>
               

</asp:Content>


