<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/MasterPage.master" AutoEventWireup="true" CodeFile="MyPatients.aspx.cs" Inherits="Doctor_MyPatients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Breadcrumb -->
			<div class="breadcrumb-bar">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-md-12 col-12">
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">My Patients</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">My Patients</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->

    <!--Patients list-->
    <div class="col-md-10 col-lg-12 col-xl-25">
						
									<div class="card">
										<div class="card-body">
											<div class="pro-widget-content">
												<div class="profile-info-widget">
                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="860px" OnRowDataBound="GridView1_RowDataBound">
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="Image">
                                                                <ItemTemplate>
                                                                    <asp:Image ID="Image1" CssClass="rounded-circle" runat="server" Height="100px" Width="100px" ImageUrl='<%# Eval("Patphoto") %>' />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Name ">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Patname") %>'></asp:Label>
                                                                    <br />
                                                                    <br />
                                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Patemail") %>'></asp:Label>
                                                                    <br />
                                                                    
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Contact">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Patmobile") %>'></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                    
													
                                                        <EditRowStyle BackColor="#2461BF" />
                                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"/>
                                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                        <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                    
													
                                            </asp:GridView>
										</div>
									</div>
								</div>
						
							</div>

						</div>
             
			    <!--Patients list-->			
    
</asp:Content>

