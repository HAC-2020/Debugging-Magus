<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/MasterPage.master" AutoEventWireup="true" CodeFile="Docmsg.aspx.cs" Inherits="Patient_Docmsg" %>

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
											<li>
												<a href="patient-dashboard.aspx">
													<i class="fas fa-columns"></i>
													<span>Appointment</span>
												</a>
											</li>
											
											<li>
												<a href="Docmsg.aspx" class="active">
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

							</div></div>
                            <div class="col-md-7 col-lg-8 col-xl-9">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-md-12 col-lg-6">
										
											<!-- Change Password Form -->
											
												<asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" RepeatDirection="Horizontal" Height="490px"  RepeatColumns="4">
                    <ItemTemplate>
                    <table cellpadding="10" cellspacing="10" class="w-100">
                        <tr>
                            <td class="auto-style1">
                             <h4>  <asp:Label ID="Label1" runat="server" Text='<%# Eval("Docname") %>' style="text-align: center"></asp:Label></h4>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("Docphoto") %>' Width="200px" />
                                <br />
                                <br />
                               <div class="pi-links">
                                   <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info fa fa-envelope fa-2x"  PostBackUrl='<%#"SendMsg.aspx?k="+Eval("Docid") %>'> Message</asp:LinkButton>
<%--              <asp:LinkButton ID="LinkButton1" runat="server" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></asp:LinkButton>
                  --%>              <br />
                                 </div>   
                                    </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
                
                </asp:DataList>
											
											<!-- /Change Password Form -->
											
										</div>
									</div>
								</div>
							</div>
						</div>
						</div></div></div>
</asp:Content>

