<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="online_rental1.Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <form id="form1" runat="server">
  <h1 style="font-size: xx-large; text-align: center">&nbsp;</h1>
    <h1 style="font-size: xx-large; text-align: center"><b>&nbsp;Booking Details</b></h1>
							
	
    
    <div id="templatemo_content_panel_1">

	<div id="templatemo_news_section">
    	 <h1>
    	
         <asp:Image ID="Image1" runat="server" Height="305px" Width="259px" />
                                        </h1>
     </div>
     <div id="templatemo_section_1_2">
    	
        &nbsp;<table style="width: 100%; height: 380px;">
                                            <tr>
                                                <td style="font-size: large; color: #FFFFFF"><b>House ID :</b></td>
                                                <td style="font-size: large; color: #000000"><b>
                                                    <asp:Label ID="Label1" runat="server" Text="Label" style="color: #FFFFFF"></asp:Label>
                                                    </b></td>
                                            </tr>
                                            <tr>
                                                <td style="font-size: large; color: #FFFFFF"><b>Type of house </b></td>
                                                <td style="font-size: large; color: #000000"><b>
                                                    <asp:Label ID="Label2" runat="server" Text="Label" style="color: #FFFFFF"></asp:Label>
                                                    </b></td>
                                            </tr>
                                            <tr>
                                                <td style="font-size: large; color: #FFFFFF"><b>HouseNO :</b></td>
                                                <td style="font-size: large; color: #000000"><b>
                                                    <asp:Label ID="Label3" runat="server" Text="Label" style="color: #FFFFFF"></asp:Label>
                                                    </b></td>
                                            </tr>
                                            <tr>
                                                <td style="font-size: large; color: #FFFFFF"><b>Address : </b></td>
                                                <td style="font-size: large; color: #000000"><b>
                                                    <asp:Label ID="Label4" runat="server" Text="Label" style="color: #FFFFFF"></asp:Label>
                                                    </b></td>
                                            </tr>
                                            <tr>
                                                <td style="height: 34px; font-size: large; color: #FFFFFF"><b>Amount : </b></td>
                                                <td style="height: 34px; font-size: large; color: #000000"><b>
                                                    <asp:Label ID="Label5" runat="server" Text="Label" style="color: #FFFFFF"></asp:Label>
                                                    </b></td>
                                            </tr>
                                            <tr>
                                                <td style="height: 34px; font-size: large; color: #FFFFFF"><b>SellerEmail Id: </b></td>
                                                <td style="height: 34px; font-size: large; ">
                                                    <b>
                                                    <asp:Label ID="Label11" runat="server" style="font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; " Text="Label"></asp:Label>
                                                    </b>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold"><b>CUSTOMER ID :</b></td>
                                                <td style="height: 35px; font-size: large; color: #000000"><b>
                                                    <asp:Label ID="Label6" runat="server" Text="Label" style="color: #FFFFFF"></asp:Label>
                                                    </b></td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold"><b>CUSTOMER Name:</b></td>
                                                <td style="height: 35px; font-size: large; color: #000000"><b>
                                                    <asp:Label ID="Label7" runat="server" Text="Label" style="color: #FFFFFF"></asp:Label>
                                                    </b></td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold"><b>CUSTOMER Mobile :</b></td>
                                                <td style="height: 35px; font-size: large; color: #000000"><b>
                                                    <asp:Label ID="Label8" runat="server" Text="Label" style="color: #FFFFFF"></asp:Label>
                                                    </b></td>
                                            </tr>
                                            <tr>
                                                <td style="height: 35px; font-size: medium; color: #FFFFFF; font-weight: bold"><b>CUSTOMER City:</b></td>
                                                <td style="height: 35px; font-size: large; color: #000000"><b>
                                                    <asp:Label ID="Label9" runat="server" Text="Label" style="color: #FFFFFF"></asp:Label>
                                                    </b></td>
                                            </tr>
                                    
									
									 </table><br />
								 <p>
             <asp:Button ID="Button2" runat="server" Height="53px" OnClick="Button2_Click" style="background-color: #FF0000" Text="Cancel" Width="140px" />
         </p>
					

        </div>
        <br />
        <br />
								
					

</form>
</asp:Content>
