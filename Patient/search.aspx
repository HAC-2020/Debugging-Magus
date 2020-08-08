<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="Patient_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
				<div class="container-fluid">

					<div class="row">
						<div class="col-md-12 col-lg-4 col-xl-3 theiaStickySidebar">
						
							 Search Filter 
							<div class="card search-filter">
								<div class="card-header">
									<h4 class="card-title mb-0">Search Filter</h4>
								</div>
								<div class="card-body">
								<div class="filter-widget">
									<h4>Gender</h4>
									
									<div>
										<asp:CheckBoxList ID="CheckboxList1" runat="server" AutoPostBack="false" Width="450px"  BorderStyle="None" CellPadding="0" CellSpacing="0">   
                                    </asp:CheckBoxList> 
									</div>
                                    
								</div>
								<div class="filter-widget">
									<h4>Select Specialist</h4>
								<asp:CheckBoxList ID="CheckboxList2" runat="server" AutoPostBack="false" Width="450px"  BorderStyle="None" CellPadding="0" CellSpacing="0">   
                                    </asp:CheckBoxList> 
								</div>
									<div class="btn-search">
                                        <asp:Button ID="Button1" runat="server" Text="Search" CssClass="btn btn-block" OnClick="Button1_Click" />
									</div>	
								</div>
							</div>
							<!-- /Search Filter -->
							
						</div>
						
						<div class="col-md-12 col-lg-8 col-xl-9">

						
							<!-- /Doctor Widget -->
                          
										<asp:DataList ID="DataList1" runat="server" CellPadding="100"  RepeatColumns="2" RepeatDirection="Horizontal">
                                           <%--  <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="White" ForeColor="#333333" />--%>
                                             <ItemTemplate>
                                                  <div class="card">
								<div class="card-body">
									<div class="doctor-widget">
                                                <div class="doc-info-left">
											        <div class="doctor-img">
												        <a href="doctor-profile.html">
                                                <asp:Image ID="Image1" runat="server" Height="175px" Width="203px" CssClass="img-fluid" AlternateText="User Image" ImageUrl='<%# Eval("Docphoto") %>'/>
                                                </div>
                                                 &nbsp;&nbsp;&nbsp;
                                                <h4 class="doc-name"><asp:Label ID="Label1" runat="server" Text='<%# Eval("Docname") %>'></asp:Label></h4>
												<p class="doc-speciality">
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Doceducationdegree") %>'></asp:Label></p>
                                                    <h5 class="doc-department"><asp:Label ID="Label3" runat="server" Text='<%# Eval("Docspeciality") %>'></asp:Label></h5>
                                                    <div class="rating">
													<span class="d-inline-block average-rating">Rating : <asp:Label ID="Label4" runat="server" Text='<%# Eval("Docreview") %>'></asp:Label>/5</span>
												</div>
                                                    <div class="clinic-details">
													<p class="doc-location"><i class="fas fa-map-marker-alt"></i> <asp:Label ID="Label5" runat="server" Text='<%# Eval("Daddress") %>'></asp:Label></p>
												
												</div>
                                                    </div>
										</div>
                                                	<div class="doc-info-right">
											<div class="clini-infos">
												<ul>
												
													<li><i class="far fa-money-bill-alt"></i>  <asp:Label ID="Label6" runat="server" Text='<%# Eval("Docpricing") %>'></asp:Label>Rs </li>
												</ul>
											</div>
											<div class="btn-search">
                                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-block" PostBackUrl='<%#"doctor-profile.aspx?k="+Eval("Docid")%>'>View Profile</asp:LinkButton>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-block" PostBackUrl='<%#"booking.aspx?k="+Eval("Docid")%>'>Book Appointment</asp:LinkButton>
                                                
                                            </div>
									
											</div>
										</div>
                                    </div>
							<!-- Doctor Widget -->
							
							<!-- /Doctor Widget -->

							
						</div>
					</div>
                                            </ItemTemplate>
                                            <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />

										</asp:DataList>
									</div>
								</div>
							

				</div>

			</div>		
</asp:Content>

