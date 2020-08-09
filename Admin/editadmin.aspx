<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage2.master" AutoEventWireup="true" CodeFile="editadmin.aspx.cs" Inherits="Admin_editadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
						<div class="col-md-12">
							<div class="profile-header">

    <div class="row align-items-center">
									<div class="col ml-md-n2 profile-user-info">
                                        Username:&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="179px"></asp:TextBox>
                                        <br />
                                        <br />
                                        &nbsp;Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="179px"></asp:TextBox>
                                        <br />
                                        <br />
                                        &nbsp; Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="36px" Width="180px"></asp:TextBox>
                                        <br />
                                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button1" runat="server" BackColor="#33CCCC" BorderColor="#336699" Font-Size="X-Large" ForeColor="White" Height="40px" OnClick="Button1_Click" Text="Edit" Width="135px" />
                                        <asp:Label ID="Label1" runat="server"></asp:Label>
                                        </div>
        </div>
                                </div>
                            </div>
        </div>
</asp:Content>

