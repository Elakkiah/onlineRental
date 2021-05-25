<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addhome.aspx.cs" Inherits="online_rental1.addhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
      
        <form id="form1" runat="server">
 <center>
    <div id="templatemo_content_panel_1" style="width: 593px; height: 617px">

     <div id="templatemo_section_1_2" style="text-align: center">
    	
        &nbsp;<br />
         <span style="font-family: Arial; font-weight: bold; font-size: xx-large">ADD HOME</span><br />
         <br />
         <br />
         <table style="width: 101%; height: 380px;">
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold">House ID</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                            <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged" 
                                Width="304px" Height="37px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; font-weight: bold">Category</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                            <asp:DropDownList ID="drpcate1" runat="server" CssClass="txt" 
                                ForeColor="#006600" onselectedindexchanged="drpcate_SelectedIndexChanged" 
                                Height="16px" Width="313px">
                                <asp:ListItem>Select Category</asp:ListItem>
                                <asp:ListItem>Separate House</asp:ListItem>
                                <asp:ListItem>Apartment</asp:ListItem>
                               
                            </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold">Type Of House</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="308px">
                                <asp:ListItem>Select House Type</asp:ListItem>
                                <asp:ListItem>bhk</asp:ListItem>
                                <asp:ListItem>2bhk</asp:ListItem>
                                <asp:ListItem>3bhk</asp:ListItem>
                                <asp:ListItem>4bhk</asp:ListItem>
                            </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold">House No</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                            <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged" 
                                Width="298px" Height="29px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold">House Address</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                            <asp:TextBox ID="TextBox3" runat="server" Height="116px" TextMode="MultiLine" 
                                Width="308px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold">Amount</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                            <asp:TextBox ID="TextBox4" runat="server" Width="313px" Height="31px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold">Image</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txt" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold">Status</td>
                                                <td style="height: 35px; font-size: large; color: #000000">
                            <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="327px">
                                <asp:ListItem>Select House status</asp:ListItem>
                                <asp:ListItem>Not Booked</asp:ListItem>
                                
                               
                            </asp:DropDownList>
                                                </td>
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
                            H</td><td class="auto-style13"></td></tr><tr><td class="auto-style8">&nbsp;</td>
                        <td class="auto-style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            &nbsp;</td>
                        <td class="auto-style13">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            &nbsp;</td>
                        <td class="auto-style13">
                            <asp:Label ID="lblmsg" runat="server" ForeColor="Yellow" 
                                style="color: #000080; font-weight: 700"></asp:Label>
                       
</asp:Content>
