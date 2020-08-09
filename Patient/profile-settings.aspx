<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/MasterPage.master" AutoEventWireup="true" CodeFile="profile-settings.aspx.cs" Inherits="Patient_profile_settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
							<h2 class="breadcrumb-title">Profile Setting</h2>
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
											<li>
												<a href="patient-dashboard.aspx">
													<i class="fas fa-columns"></i>
													<span>Appointment</span>
												</a>
											</li>
											
											<li>
												<a href="Docmsg.aspx">
													<i class="fas fa-comments"></i>
													<span>Message</span>
													<small class="unread-msg">23</small>
												</a>
											</li>
											<li class="active">
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
						<!-- / Profile Sidebar -->


                        <div class="col-md-7 col-lg-8 col-xl-9">
							<div class="card">
								<div class="card-body">
									
									<!-- Profile Settings Form -->
									
										<div class="row form-row">
											<div class="col-12 col-md-12">
												<div class="form-group">
													<div class="change-avatar">
														<div class="profile-img">
                          Upload Photo :
														</div>
														<div class="upload-img">
															<div class="change-photo-btn">
																
                                                                <asp:FileUpload ID="FileUpload1" runat="server" />
																
															</div>
															<small class="form-text text-muted">Allowed JPG, GIF or PNG. Max size of 2MB</small>
														</div>
													</div>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Name</label>
                                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
													
												</div>
											</div>
											
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Date of Birth</label>
													<div class="cal-icon">
														<asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
													</div>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Blood Group</label>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="true" CssClass="form-control select">
                                                         <asp:ListItem Text="A-" />
                                                         <asp:ListItem Text="A+"  />
                                                         <asp:ListItem Text="B-" />
                                                        <asp:ListItem Text="B+"  />
                                                         <asp:ListItem Text="AB-" />
                                                         <asp:ListItem Text="AB+" />
                                                        <asp:ListItem Text="O-" />
                                                         <asp:ListItem Text="O+" />
                                                       
                                                    </asp:DropDownList>
													
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Email ID</label>
													<asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Mobile</label>
													<asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
												<label>Address</label>
													<asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>City</label>
                                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control select"></asp:DropDownList>
													
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>State</label>
                                                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control select"></asp:DropDownList>
													
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Zip Code</label>
													<asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
												</div>
											</div>
										
										</div>
										<div class="submit-section">
                            
                                            <asp:Button ID="Button1" runat="server" Text="Save Changes" CssClass="btn btn-primary submit-btn" OnClick="Button1_Click" />
											
										    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
											
										    <br />
                                            <br />
											
										</div>
								
									<!-- /Profile Settings Form -->
									
								</div>
							</div>
						</div>



                        </div>
                    </div>
                </div>
</asp:Content>

