<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/MasterPage.master" AutoEventWireup="true" CodeFile="change-password.aspx.cs" Inherits="Patient_change_password" %>

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
							<h2 class="breadcrumb-title">Change Password</h2>
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
											<li>
												<a href="profile-settings.aspx">
													<i class="fas fa-user-cog"></i>
													<span>Profile Settings</span>
												</a>
											</li>
											<li class="active">
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
									<div class="row">
										<div class="col-md-12 col-lg-6">
										
											<!-- Change Password Form -->
											
												<div class="form-group">
													<label>Old Password</label>
                                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
												
												</div>
												<div class="form-group">
													<label>New Password</label>
                                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
													
												</div>
												<div class="form-group">
													<label>Confirm Password</label>
                                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
												
												</div>
												<div class="submit-section">
                                                    <asp:Button ID="Button1" runat="server" Text="Save Changes" CssClass="btn btn-primary submit-btn" OnClick="Button1_Click" />
													
												    <br />
													<div class="form-group">
                                                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
													
												</div>
												</div>
											
											<!-- /Change Password Form -->
											
										</div>
									</div>
								</div>
							</div>
						</div>
                        </div></div></div>
</asp:Content>

