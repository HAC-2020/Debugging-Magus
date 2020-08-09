<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/MasterPage.master" AutoEventWireup="true" CodeFile="doctor-profile.aspx.cs" Inherits="Patient_doctor_profile" %>

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
									<li class="breadcrumb-item active">Home</li>
									<li class="breadcrumb-item active" aria-current="page">Doctor Profile</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Doctor Profile</h2>
						</div>
					</div>
				</div>
			</div>
    	<!-- Page Content -->
			<div class="content">
				<div class="container">

					<!-- Doctor Widget -->
					<div class="card">
						<div class="card-body">
							<div class="doctor-widget">
								<div class="doc-info-left">
									<div class="doctor-img">
                                        <asp:Image ID="Image1" runat="server" CssClass="img-fluid" AlternateText="User Image" />
									</div>
									<div class="doc-info-cont">
                                        <h4 class="doc-name">
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h4>
                                       <p class="doc-speciality"> <asp:Label ID="Label2" runat="server" Text=""></asp:Label></p>
										<p class="doc-department"><asp:Label ID="Label3" runat="server" Text=""></asp:Label></p>
										<div class="rating">
											<span class="d-inline-block average-rating">Rating : <asp:Label ID="Label4" runat="server" Text=""></asp:Label>/5</span>
										</div>
										<div class="clinic-details">
											<p class="doc-location"><i class="fas fa-map-marker-alt"></i> <asp:Label ID="Label5" runat="server" Text=""></asp:Label></p>
											
										</div>
										
									</div>
								</div>
								<div class="doc-info-right">
									<div class="clini-infos">
										<ul>
											<li><i class="far fa-money-bill-alt"></i>  <asp:Label ID="Label6" runat="server" Text=""></asp:Label></li>
										</ul>
									</div>
									<%--<div class="doctor-action">
										<a href="javascript:void(0)" class="btn btn-white fav-btn">
											<i class="far fa-bookmark"></i>
										</a>
										<a href="chat.html" class="btn btn-white msg-btn">
											<i class="far fa-comment-alt"></i>
										</a>
										<a href="javascript:void(0)" class="btn btn-white call-btn" data-toggle="modal" data-target="#voice_call">
											<i class="fas fa-phone"></i>
										</a>
										<a href="javascript:void(0)" class="btn btn-white call-btn" data-toggle="modal" data-target="#video_call">
											<i class="fas fa-video"></i>
										</a>
									</div>--%>
									<div class="clinic-booking">
                                        <asp:linkbutton runat="server" CssClass="apt-btn" PostBackUrl="~/Patient/booking.aspx">Book Appointment</asp:linkbutton>
										
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /Doctor Widget -->

                    <!-- Doctor Details Tab -->
					<div class="card">
						<div class="card-body pt-0">
						
							<!-- Tab Menu -->
							<!-- /Tab Menu -->
							
							<!-- Tab Content -->
							<div class="tab-content pt-0">
							
								<!-- Overview Content -->
								<div role="tabpanel" id="doc_overview" class="tab-pane fade show active">
									<div class="row">
										<div class="col-md-12 col-lg-9">
										
											<!-- About Details -->
											<div class="widget about-widget">
												<h4 class="widget-title">About Me</h4>
                        
												<p><asp:Label ID="Label7" runat="server" Text=""></asp:Label></p>
											</div>
											<!-- /About Details -->
										
											
									

                                            <!-- Education Details -->
											<div class="widget education-widget">
												<h4 class="widget-title">Education</h4>
												<div class="experience-box">
													
															
																	<asp:DataList ID="DataList1" runat="server">
                                                                        <ItemTemplate>
                                                                            <ul class="experience-list">
														<li>
                                                                            <div class="experience-user">
																<div class="before-circle"></div>
															</div>
															<div class="experience-content">
																<div class="timeline-content">
                                                                            <a href="#/" class="name"><asp:Label ID="Label8" runat="server" Text='<%# Eval("educlg") %>'></asp:Label></a>
                                                                            <br />
                                                                            <div><asp:Label ID="Label9" runat="server" Text='<%# Eval("edudegree") %>'></asp:Label></div>
                                                                            <span class="time"><asp:Label ID="Label10" runat="server" Text='<%# Eval("eduyear") %>'></asp:Label></span>
                                                                        <br /></div>
															</div></li>
														
													</ul>
                                                                    </ItemTemplate>
                                                                    </asp:DataList>
																
														
												</div>
											</div>
											<!-- /Education Details -->


                                            <!-- Experience Details -->
											<div class="widget experience-widget">
												<h4 class="widget-title">Work & Experience</h4>
												<div class="experience-box">
<asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
													<ul class="experience-list">
														<li>
															<div class="experience-user">
																<div class="before-circle"></div>
															</div>
															<div class="experience-content">
																<div class="timeline-content">
																	<a href="#/" class="name">
                                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("hospitalname") %>'></asp:Label></a>
                                                                    <div><asp:Label ID="Label2" runat="server" Text='<%# Eval("designation") %>'></asp:Label></div>
																	<span class="time">
                                                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("yearfrom") %>'></asp:Label>-
                                                                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("yearto") %>'></asp:Label>
																	</span>
																</div>
															</div>
														</li>
													</ul>
        </ItemTemplate>
    </asp:DataList>
												</div>
											</div>
											<!-- /Experience Details -->



								
											<!-- Awards Details -->
											<div class="widget awards-widget">
												<h4 class="widget-title">Awards</h4>
												<div class="experience-box">
                                                    <asp:DataList ID="DataList3" runat="server">
    <ItemTemplate>
													<ul class="experience-list">
														<li>
															<div class="experience-user">
																<div class="before-circle"></div>
															</div>
															<div class="experience-content">
																<div class="timeline-content">
																	<p class="exp-year"><asp:Label ID="Label11" runat="server" Text='<%# Eval("awardyear") %>'></asp:Label></p>
																	<h4 class="exp-title"><asp:Label ID="Label12" runat="server" Text='<%# Eval("Docaward") %>'></asp:Label></h4>
																	<p><asp:Label ID="Label15" runat="server" Text='<%# Eval("awarddesc") %>'></asp:Label></p>
																</div>
															</div>
														</li>
													</ul>
        </ItemTemplate></asp:DataList>
												</div>
											</div>
											<!-- /Awards Details -->

                                            			

											
											
											<!-- Specializations List -->
											<div class="service-list">
												<h4>Specializations</h4>
												<ul class="clearfix">
													<li>
                                                                        <asp:Label ID="Label16" runat="server" Text=""></asp:Label></li>
												</ul>
											</div>
											<!-- /Specializations List -->

										</div>
									</div>
								</div>
								<!-- /Overview Content -->
								
								<!-- Locations Content -->
						
								<!-- /Locations Content -->
								
								<!-- Reviews Content -->
								
								<!-- /Reviews Content -->
								
								<!-- Business Hours Content -->
								
								<!-- /Business Hours Content -->
								
							</div>
						</div>
					</div>
					<!-- /Doctor Details Tab -->
                    </div></div>
</asp:Content>

