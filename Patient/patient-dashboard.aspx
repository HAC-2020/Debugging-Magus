<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/MasterPage.master" AutoEventWireup="true" CodeFile="patient-dashboard.aspx.cs" Inherits="Patient_patient_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .newStyle1 {
            font-size: large;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
    </style>
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
							<h2 class="breadcrumb-title">Appointments</h2>
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
								<div class="card-body pt-0">
                                    <table class="w-100">
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td><span class="newStyle1">Pending Appointments<br />
                                                </span></td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>
                 <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" AutoGenerateColumns="False" GridLines="None">
                           <Columns>
                            <asp:TemplateField HeaderText="DOCTOR NAME">
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("Docname") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DOCTOR ADDRESS">
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("Daddress") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Appointment Date">
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("Adate") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Appointment Time">
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("Astarttime") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Appointment Status">
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("Astatus") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                                <asp:TemplateField HeaderText="Appointment Type">
                                <ItemTemplate>
                                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("Atype") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CANCEL APPOINTMENT">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" cssclass="fa fa-close fa-2x" CommandName="priya" CommandArgument='<%#Eval("Aid") %>'>CANCEL</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="PAY">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="fa fa-money fa-2x" PostBackUrl='<%#"finalpay.aspx?k="+Eval("Aid") %>'>PAY
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>                                                <AlternatingRowStyle BackColor="White" />
                                                <EditRowStyle BackColor="#2461BF" />
                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#EFF3FB" />
                                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                             </asp:GridView>

                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1"></td>
                                            <td class="auto-style1"></td>
                                            <td class="auto-style1"></td>
                                        </tr>
                                    </table>
                                    <table>
                                    <tr>
                                            <td class="auto-style1"></td>
                                            <td class="auto-style1">
                                                <br />
                                                <span class="newStyle1">Successfully Booked Appointments<br />
                                                </span></td>
                                            <td class="auto-style1"></td>
                                     </tr>
                                         <tr>
                                            <td class="auto-style1"></td>
                        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" AutoGenerateColumns="False" GridLines="None">
                            <Columns>
                            <asp:TemplateField HeaderText="DOCTOR NAME">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Docname") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DOCTOR ADDRESS">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Daddress") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="APPOINTMENT DATE">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Adate") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="APPOINTMENT NAME">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Astarttime") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="APPOINTMENT STATUS">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Astatus") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DOWNLOAD INVOICE">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="fa fa-download fa-2x" PostBackUrl='<%#"invoice.aspx?k=" + Eval("Aid") %>'></asp:LinkButton>
                                  
                                </ItemTemplate>
                            </asp:TemplateField>
                                                 </Columns>
                                                <AlternatingRowStyle BackColor="White" />
                                                <EditRowStyle BackColor="#2461BF" />
                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#EFF3FB" />
                                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                             </asp:GridView>
                                            <td class="auto-style1"></td>
                                     </tr>
                                         <tr>
                                            <td class="auto-style1"></td>
                                            <td class="auto-style1"></td>
                                            <td class="auto-style1"></td>
                                     </tr>
                                    </table>
&nbsp;</div>
                            </div>

                        </div>
                        </div>
                    </div>
                </div>
</asp:Content>

