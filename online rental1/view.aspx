<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="online_rental1.view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
  <h1 style="font-size: xx-large; text-align: center">&nbsp;</h1>
    <h1 style="font-size: xx-large; text-align: center"><b>View House Details</b></h1>
							
	
    
    <div id="templatemo_content_panel_1">

	<div id="templatemo_news_section">
    	 <h1>
    	
         <asp:Image ID="Image1" runat="server" Height="305px" Width="259px" />
                                        </h1>
     </div>
     <div id="templatemo_section_1_2">
    	
        &nbsp;<table style="width: 100%; height: 380px;">
             <tr style="font-family: Arial; font-size: large">
                 <td>
                     <br />
                     House ID</td>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                        </td></tr><tr>
                                        <td style="text-align: left; height: 38px; font-family: Arial; font-size: large;">
                                            <br style="font-family: 'Segoe UI Semibold'" />
                                            <span style="font-family: 'Segoe UI Semibold'">category<br />
                                            </span></td>
                                        <td style="text-align: left; height: 38px">
                                            <asp:Label ID="Label2" runat="server" Text="Label" style="font-family: 'Segoe UI Semibold'; font-size: large"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Arial; font-size: large">
                                        <td style="text-align: left; height: 38px"><b>Type of house<br />
                                            </b></td>
                                        <td style="text-align: left; height: 38px">
                                            <b>
                                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Arial">
                                        <td style="text-align: left; height: 38px"><b><span style="font-size: large">House</span></b><span style="font-size: large; font-weight: bold;">NO</span><span style="font-size: large"><b>
                                            <br />
                                            </b> </td>
                                        <td style="text-align: left; height: 38px; font-size: large;">
                                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Arial; font-size: large">
                                        <td style="text-align: left; height: 38px"><b>Address 
                                            <br />
                                            </b> </td>
                                        <td style="text-align: left; height: 38px">
                                            <b>
                                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Arial; font-size: large">
                                        <td style="text-align: left; height: 38px"><b>Amount 
                                            <br />
                                            </b> </td>
                                        <td style="text-align: left; height: 38px">
                                            <b>
                                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Arial; font-size: large">
                                        <td style="text-align: left; height: 38px"><b>House Status 
                                            <br />
                                            </b> </td>
                                        <td style="margin-left: 80px; text-align: left; height: 38px;">
                                            <b>
                                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Arial; font-size: large">
                                        <td style="text-align: left; height: 38px"><b>Seller Email<br />
                                            </b></td>
                                        <td style="margin-left: 80px; text-align: left; height: 38px;">
                                            <b>
                                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Arial; font-size: large">
                                        <td style="text-align: left; height: 38px"><b>Seller Name<br />
                                            </b></td>
                                        <td style="margin-left: 80px; text-align: left; height: 38px;">
                                            <b>
                                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Arial; font-size: large">
                                        <td style="text-align: left; height: 38px"><b>Seller Address<br />
                                            </b></td>
                                        <td style="margin-left: 160px; text-align: left; height: 38px;">
                                            <b>
                                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                    <tr style="font-family: Arial; font-size: large">
                                        <td style="text-align: left; height: 38px"><b>Seller mobile<br />
                                            </b></td>
                                        <td style="margin-left: 160px; text-align: left; height: 38px;">
                                            <b>
                                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                            </b>
                                        </td>
                                    </tr>
                                </table>
                                <p>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </p>
					
					
         </table>
         <p>
             <asp:Button ID="Button1" runat="server" Height="55px" OnClick="Button1_Click" style="background-color: #009900" Text="Booknow" Width="146px" />
             <asp:Button ID="Button2" runat="server" Height="53px" OnClick="Button2_Click" style="background-color: #FF0000" Text="Cancel" Width="140px" />
         </p>
        <p>&nbsp;</p>
    </div><!-- end of section 1 -->
    <div class="cleaner_with_height">&nbsp;</div>
</div>

    </form>

</asp:Content>
