<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="newuser.aspx.cs" Inherits="online_rental1.newuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
   
        
       
       <form id="form1" runat="server"> 
   
       
        
 <center>
    <div id="templatemo_content_panel_1" style="width: 632px; height: 711px">

        <div id="templatemo_section_1_2" style="text-align: center; width: 626px;">
    	
            <br />
            <span style="font-family: Arial; font-weight: bold; font-size: xx-large">USER REGISTRATION<br />
            <br />
            <br />
            <br />
            </span>
         <br />
         <table style="width: 97%; height: 762px;" align="left">
                                            <tr>
                        <td class="auto-style2" style="font-family: Arial; font-weight: bold; font-size: large; width: 212px;">
                            CUSTOMER ID</td>
                                                <td style="height: 35px; font-size: large; color: #000000; text-align: left; width: 418px;">
                            <asp:TextBox ID="TextBox1" runat="server" Height="38px" Width="310px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                        <td class="auto-style9" style="font-family: Arial; font-weight: bold; font-size: large; width: 212px;">
                            &nbsp;NAME</td>
                                                <td style="height: 35px; font-size: large; color: #000000; text-align: left; width: 418px;">
                            <asp:TextBox ID="FNAME" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="Black" Width="308px" Height="30px" CssClass="auto-style10"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                        <td class="auto-style9" style="font-family: Arial; font-weight: bold; font-size: large; width: 212px;">
                            DATE</td>
                                                <td style="height: 35px; font-size: large; color: #000000; width: 418px;">
                                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" style="margin-left: 0px" Width="200px">
                                                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                                        <NextPrevStyle VerticalAlign="Bottom" />
                                                        <OtherMonthDayStyle ForeColor="#808080" />
                                                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                                        <SelectorStyle BackColor="#CCCCCC" />
                                                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                                        <WeekendDayStyle BackColor="#FFFFCC" />
                                                    </asp:Calendar>
                                                </td>
                                            </tr>
                                            <tr>
                        <td class="auto-style9" style="font-family: Arial; font-weight: bold; font-size: large; width: 212px;">
                            ADDRESS</td>
                                                <td style="height: 35px; font-size: large; color: #000000; text-align: left; width: 418px;">
                            <asp:TextBox ID="ADDRESS" runat="server" BackColor="White" CssClass="auto-style6" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="Black" Rows="3" TextMode="MultiLine" Width="309px" Height="70px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                        <td class="auto-style9" style="font-family: Arial; font-weight: bold; font-size: large; width: 212px;">
                            MOBILE</td>
                                                <td style="height: 35px; font-size: large; color: #000000; text-align: left; width: 418px;">
                            <asp:TextBox ID="PHONENO" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="Black" Width="308px" Height="35px" CssClass="auto-style10"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                        <td class="auto-style9" style="font-family: Arial; font-weight: bold; font-size: large; width: 212px;">
                            CITY</td>
                                                <td style="height: 35px; font-size: large; color: #000000; text-align: left; width: 418px;">
                            <asp:TextBox ID="txtcity" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="Black" Width="308px" Height="34px" CssClass="auto-style10"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                        <td class="auto-style9" style="font-family: Arial; font-weight: bold; font-size: large; width: 212px;">
                            PINCODE</td>
                                                <td style="height: 35px; font-size: large; color: #000000; text-align: left; width: 418px;">
                            <asp:TextBox ID="Pin" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="Black" Width="308px" Height="28px" CssClass="auto-style10"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                        <td class="auto-style9" style="font-family: Arial; font-weight: bold; font-size: large; width: 212px;">
                            EMAIL ID</td>
                                                <td style="height: 35px; font-size: large; color: #000000; text-align: left; width: 418px;">
                            <asp:TextBox ID="MAIL" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="Black" Width="305px" Height="30px" CssClass="auto-style10"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                        <td class="auto-style9" style="font-family: Arial; font-weight: bold; font-size: large; width: 212px;">
                            PASSWORD</td>
                                                <td style="height: 35px; font-size: large; color: #000000; text-align: left; width: 418px;">
                            <asp:TextBox ID="PASSWORD" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="Black" TextMode="Password" Width="305px" Height="38px" CssClass="auto-style10"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                        <td class="auto-style9" style="font-family: Arial; font-weight: bold; font-size: large; width: 212px;">
                            &nbsp;</td>
                                                <td style="height: 35px; font-size: large; color: #000000; width: 418px;">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold" colspan="2">
                                                    <asp:Button ID="Button1" runat="server" Height="54px" style="background-color: #009933" Text="Insert" Width="164px" OnClick="Button1_Click" />
                                                    <asp:Button ID="Button2" runat="server" Height="53px" style="background-color: #FF3300" Text="Cancel" Width="145px" OnClick="Button2_Click" />
                                                </td>
                                            </tr>
                                    
									
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold" colspan="2">
                                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                    
									
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold; width: 212px;">&nbsp;</td>
                                                <td style="height: 35px; font-size: large; color: #000000; width: 418px;">
                                                    <asp:Label ID="Label1" runat="server" style="color: #FFFFFF"></asp:Label>
                                                &nbsp;&nbsp;
                                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Back To Login</asp:LinkButton>
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


