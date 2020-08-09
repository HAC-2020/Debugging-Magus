<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/MasterPage.master" AutoEventWireup="true" CodeFile="SendMsg.aspx.cs" Inherits="Patient_SendMsg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   <%-- <div id="preloder">
		<div class="loader"></div>--%>
	    <asp:HiddenField ID="HiddenField1" runat="server" />
    <!-- Breadcrumb -->
			<div class="breadcrumb-bar">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-md-12 col-12">
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Message</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->

    <!-- Page Content -->
			<div class="content">
				<div class="container-fluid">

					<div class="row">
						
						<!-- Profile Sidebar -->
						<div class="col-md-5 col-lg-4 col-xl-3 theiaStickySidebar">
							<div class="profile-sidebar">
								<div class="widget-profile pro-widget-content">
									
                                    <div class="profile-info-widget">
										<a href="#" class="booking-doc-img">
                                            <asp:Image ID="Image1" runat="server" AlternateText="User Image" />
											
										</a>
										<div class="profile-det-info">
											<h3>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h3>
											<div class="patient-details">
												<h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> <asp:Label ID="Label2" runat="server" Text=""></asp:Label></h5>
											</div>
										</div>
									</div>
								</div>
								<div class="dashboard-widget">
									<nav class="dashboard-menu">
										<ul>
											<li class="active">
												<a href="patient-dashboard.aspx">
													<i class="fas fa-columns"></i>
													<span>Appointment</span>
												</a>
											</li>
											
											<li>
												<a href="SendMsg.aspx.aspx" class="active">
													<i class="fas fa-comments"></i>
													<span>Message</span>
													<small class="unread-msg">23</small>
												</a>
											</li>
											<li>
												<a href="profile-settings.aspx">
													<i class="fas fa-user-cog"></i>
													<span>Profile Settings</span>
												</a>
											</li>
											<li>
												<a href="change-password.aspx">
													<i class="fas fa-lock"></i>
													<span>Change Password</span>
												</a>
											</li>
											
										</ul>
									</nav>
								</div>

							</div>
						</div>
                       
                        	
							

                            <!-- MY-->
                        
                           
                <div class="col-xl-5">
                    <div class="card flex-fill">
                     <div class="card-body">
									
									<div class="form-group">
												<label>From</label>
												
                                                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox>
											</div>
                                        <div class="form-group">
												<label>To</label>
												
                                                <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox>
											</div>
											<div class="form-group">
												<label>Explain your problem and write symptoms : </label>
												
                                                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
											</div>
											<div class="form-group">
												<label>Upload your reports</label>
                                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
											
												<small class="text-secondary">Recommended size is <b>150px x 150px</b></small>
											</div>
											<div class="form-group mb-0">
												<asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
												<small class="text-secondary">Recommended size is <b>150px x 150px</b></small><br>
												
											</div>
                                            <div class="form-group mb-0">
												<asp:FileUpload ID="FileUpload3" runat="server" CssClass="form-control" />
												<small class="text-secondary">Recommended size is <b>150px x 150px</b></small><br>
												
											</div>
											<div class="form-group mb-0">
												<asp:Button ID="Button1" runat="server" Text="Send Message" CssClass="btn btn-primary btn-lg" OnClick="Button1_Click" />
												
											    <br />
                                                <br />
                                                <asp:Label ID="Label5" runat="server"></asp:Label>
												
											</div>
									
									</div>
                    </div>
                </div>
                <div class="col-xl-4 d-flex">
                    <div class="card flex-fill">
                    <div class="card-body">
                                        <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333">
                                            <AlternatingItemStyle BackColor="White" />
                        <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#E3EAEB" />
                        <ItemTemplate>
                            <br />
                            <table cellpadding="5" cellspacing="5" class="w-100">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Patname") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Pmessage") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Image ID="Image1" runat="server" Height="90px" ImageUrl='<%# Eval("pic1") %>' Width="90px" />
                                    </td>
                                    <td>
                                        <asp:Image ID="Image2" runat="server" Height="90px" ImageUrl='<%# Eval("pic2") %>' Width="90px" />
                                    </td>
                                    <td>
                                        <asp:Image ID="Image3" runat="server" Height="90px" ImageUrl='<%# Eval("pic3") %>' Width="90px" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Docname") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Dmessage") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataList></div>
                    </div>
                </div>
            
                          
<!-- MY-->
                    
                      
                        

                       
                        </div></div></div>
</asp:Content>

