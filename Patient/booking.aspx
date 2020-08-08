<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/MasterPage.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="Patient_booking" %>

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
									<li class="breadcrumb-item active" aria-current="page">Booking</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Available Slots</h2>
						</div>
					</div>
				</div>
			</div>



    	<!-- Page Content -->
    	<!-- Page Content -->
			<div class="content">
				<div class="container">
				
					<div class="row">
						<div class="col-12">
						
							<div class="card">
								<div class="card-body">
									<div class="booking-doc-info">
										<a href="" class="booking-doc-img">
                                            <asp:Image ID="Image1" runat="server" AlternateText="User Image" />
										
										</a>
										<div class="booking-info">
											<h4>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h4>
											<div class="rating">
												
												<span class="d-inline-block average-rating">Rating: <asp:Label ID="Label2" runat="server" Text=""></asp:Label>/5</span>
											</div>
											<p class="text-muted mb-0"><i class="fas fa-map-marker-alt"></i> <asp:Label ID="Label3" runat="server" Text=""></asp:Label></p>
										</div>
									</div>
								</div>
							</div>
                          
                            
                            	<div class="card booking-schedule schedule-widget">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="815px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black" OnRowCommand="GridView1_RowCommand">
                                        <Columns>
                            <asp:TemplateField HeaderText="APPOINTMENT DATE">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Adate") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="APPOINTMENT TIME">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Astarttime") %>'></asp:Label>-
                                     <asp:Label ID="Label6" runat="server" Text='<%# Eval("Aendtime") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="FEES">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Aamount") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                                             <asp:TemplateField HeaderText="BOOK APPOINTMENT">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" cssclass="far fa-calendar-check fa-2x" CommandName="priya" CommandArgument='<%#Eval("Aid") %>' Height="2" Width="2"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                                            </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>
                                </div>



                              </div>
									</div>
								</div>
							</div>
</asp:Content>

