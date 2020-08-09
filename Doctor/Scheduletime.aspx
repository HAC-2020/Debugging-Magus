<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/MasterPage.master" AutoEventWireup="true" CodeFile="Scheduletime.aspx.cs" Inherits="Doctor_Scheduletime" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:scriptmanager runat="server" id="sm">
                    </asp:scriptmanager>
 
    <div class="breadcrumb-bar">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-md-12 col-12">
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Schedule Timings</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Schedule Timings</h2>
						</div>
					</div>
				</div>
			</div>
   
     <div class="col-md-10 col-lg-12 col-xl-25">
						 
							<div class="row">
								<div class="col-sm-12">
									<div class="card">
										<div class="card-body">
											<h4 class="card-title">Schedule Timings</h4>
											<div class="profile-box">
												<div class="row">

													<div class="col-lg-4">
														<div class="form-group">               
															
                                                            <br />
                                                            	<label>Date</label>
                                                            <br />
                                                            <asp:textbox runat="server" Id="txtdate" TextMode="Date" CssClass="form-control"></asp:textbox>
                                                             <asp:requiredfieldvalidator runat="server" errormessage="Required *" ControlToValidate="txtdate" Font-Size="XX-Small" ForeColor="Red"></asp:requiredfieldvalidator> 
                                                              <br />
                                                            <br />
                                                            	<label>Start time</label>
                                                            <br />
                                                            <asp:textbox runat="server" ID="txtstarttime" CssClass="form-control" TextMode="Time"></asp:textbox>
                                                            <asp:requiredfieldvalidator runat="server" errormessage="Required *" ControlToValidate="txtstarttime" Font-Size="XX-Small" ForeColor="Red"></asp:requiredfieldvalidator>
                                                            <br />
                                                            <br />
                                                            	<label>End time</label>
                                                            <br />
                                                            <asp:textbox runat="server" ID="txtendtime" CssClass="form-control" TextMode="Time"></asp:textbox>
                                                            <asp:requiredfieldvalidator runat="server" errormessage="Required *" ControlToValidate="txtendtime" Font-Size="XX-Small" ForeColor="Red"></asp:requiredfieldvalidator> 
                                                             <br />
                                                            <br />
                                                            <asp:updatepanel runat="server">
                                                                <contenttemplate>
                                                                    <asp:button runat="server" id="btntime" CssClass="btn btn-primary submit-btn" text="Save Changes" OnClick="btntime_Click" />
                                                                   
                                                                </contenttemplate>
                                                            </asp:updatepanel>
                                                            <br />
                                                             <asp:button runat="server" id="Button1" CssClass="btn btn-primary submit-btn" text="View Time Slots" OnClick="Button1_Click1" CausesValidation="False" />
														</div>
													</div>

												</div>     
												<div class="row">
													<div class="col-md-12">
														<div class="card schedule-widget mb-0">
														
															<!-- Schedule Header -->
															<div class="schedule-header">
															
																<!-- Schedule Nav -->
																<div class="schedule-nav">
																	<%--<ul class="nav nav-tabs nav-justified">
																		<li class="nav-item">
                                                                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sunday</asp:LinkButton>
																		</li>
																		<li class="nav-item">
                                                                            <asp:LinkButton ID="LinkButton2" runat="server">Monday</asp:LinkButton>
																		</li>
																		<li class="nav-item">
																		<asp:LinkButton ID="LinkButton3" runat="server">Tuesday</asp:LinkButton>
																		</li>
																		<li class="nav-item">
																			<asp:LinkButton ID="LinkButton4" runat="server">Wednesday</asp:LinkButton>
																		</li>
																		<li class="nav-item">
																			<asp:LinkButton ID="LinkButton5" runat="server">Thursday</asp:LinkButton>
																		</li>
																		<li class="nav-item">
																			<asp:LinkButton ID="LinkButton6" runat="server">Friday</asp:LinkButton>
																		</li>
																		<li class="nav-item">
																			<asp:LinkButton ID="LinkButton7" runat="server">Saturday</asp:LinkButton>
																		</li>
																	</ul>--%>
                                                                     <br />
                                                            
                                                                    <br />
                                                                    <asp:gridview runat="server" id="Gridtime" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="875px" OnRowDataBound="Gridtime_RowDataBound">
                                                                        <AlternatingRowStyle BackColor="White" />
                                                                        <Columns>
                                                                            <asp:TemplateField HeaderText="Name">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Docname") %>'></asp:Label>
                                                                                   
                                                                                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Docid") %>' />
                                                                                    
                                                                                  
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            
                                                                            <asp:TemplateField HeaderText="Date">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Adate") %>'></asp:Label>
                                                                                    <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("Aid") %>' />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Start Time">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Astarttime") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="End Time">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Aendtime") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                      
                                                                            <asp:TemplateField HeaderText="Status">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Astatus") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Delete">
                                                                                <ItemTemplate>
                                                                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Delete</asp:LinkButton>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <EditRowStyle BackColor="#2461BF" />
                                                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                                        <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center"/>
                                                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                                    </asp:gridview>

																</div>
																<!-- /Schedule Nav -->
																
															</div>
															<!-- /Schedule Header -->
															
														
									
															
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
								
						</div>
					</div>

				</div>

			</div>		
</asp:Content>

