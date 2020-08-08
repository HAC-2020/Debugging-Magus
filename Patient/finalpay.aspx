<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/MasterPage.master" AutoEventWireup="true" CodeFile="finalpay.aspx.cs" Inherits="Patient_finalpay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 520px;
        }
        .auto-style2 {
            margin-left: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <div>
       <br/><br/> <h1 class="auto-style1"><span class="newStyle5">Payment Gateway</span></h1>
        <br/><br/>
		<%--<h1><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><strong><span>Payment Gateway</span></strong></h1>--%>

		<div class="content">
			
			<script src="js2/easyResponsiveTabs.js" type="text/javascript"></script>
					<script type="text/javascript">
						$(document).ready(function () {
							$('#horizontalTab').easyResponsiveTabs({
								type: 'default', //Types: default, vertical, accordion           
								width: 'auto', //auto or any width like 600px
								fit: true   // 100% fit in a container
							});
						});
						
					</script>
						<div class="sap_tabs" style="z-index:1">
							<div id="horizontalTab" style="display: block; margin-left: 0px; margin-right: 0px; margin-top: 0px;" class="auto-style3">
								
								<div class="auto-style4">
								
								
								
									
								    <table cellpadding="10" cellspacing="10" class="auto-style1">
                                        <tr>
                                            <td colspan="2">
                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="395px" AutoPostBack="True">
                                                    <asp:ListItem Selected="True">Credit Card</asp:ListItem>
                                                    <asp:ListItem>Debit Card</asp:ListItem>
                                                     
                                                </asp:RadioButtonList>
                                            </td>
                                            <td></td>
                                        </tr>
                                        </table>
                                        <table cellpadding="10" cellspacing="10" class="auto-style1" id="t1">
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>Card Name</td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"  Height="40px" Width="230px" >
                                                    <asp:ListItem Selected="True">Visa</asp:ListItem>
                                                    <asp:ListItem>Master</asp:ListItem>
                                                    <asp:ListItem>Rupay</asp:ListItem>
                                                    <asp:ListItem>Maestro</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>Card Number</td>
                                            <td>
                                                <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="230px" TextMode="Number"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid card number" ForeColor="#FF3300" ValidationExpression="^(?:4[0-9]{12}(?:[0-9]{3})?|[25][1-7][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Expiry Date</td>
                                            <td>
                                                <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="230px" TextMode="Date" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                                                 </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>Security Code</td>
                                            <td>
                                                <asp:TextBox ID="TextBox4" runat="server" Height="40px" Width="230px" TextMode="Number"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>ZipCode</td>
                                            <td>
                                                <asp:TextBox ID="TextBox5" runat="server" Height="40px" Width="230px" TextMode="Number"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6"></td>
                                            <td class="auto-style6">
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter a valid zipcode" ForeColor="#FF3300" ValidationExpression="^[1-9][0-9]{5}$"></asp:RegularExpressionValidator>
                                        
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:HiddenField ID="HiddenField1" runat="server" />
                                            </td>
                                            <td>
                                                 <div class="btn-search">
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button1" runat="server" Text="Submit" Width="195px" CssClass="btn btn-block" OnClick="Button1_Click"/>
			</div>
                                                
                                                <br />
                                                <br />
                                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"></td>
                                            <td class="auto-style8"></td>
                                        </tr>
                                    </table>
                                    <table cellpadding="10" cellspacing="10" class="auto-style1">
                                        <tr><td></td>
                                            <td class="auto-style2">
                                                <br />
                                                <asp:Label ID="Label2" runat="server"></asp:Label>
                                            </td><td></td>
                                                </tr>
                                        </table>
								</div>	
							</div>
						</div>	

		</div>
		
	</div>
    </div>
</asp:Content>

