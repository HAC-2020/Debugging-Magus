<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage2.master" AutoEventWireup="true" CodeFile="review.aspx.cs" Inherits="Admin_review" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">Doctor Reviews</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index1.aspx">Dashboard</a></li>
									<li class="breadcrumb-item active" style="margin-left:10px">Review</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					<div class="row">
						<div class="col-md-12">
						
							<!-- Recent Orders -->
							<div class="card">
								<div class="card-body">
									<div class="table-responsive">
										<table class="datatable table table-hover table-center mb-0">
											<thead>
                                                <tr><h3>Reviews</h3>
                                                    </tr>
											</thead>
											<tbody>
												<tr>
													<td>
                                                        <asp:Gridview ID="Gridview1" runat="server" AutoGenerateColumns="False" Width="813px" Height="336px">
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Patient name">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Patname") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Doctor name">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Docname") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Ratings">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Rating") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Review">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Date">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Rdate") %>'></asp:Label>
                                                                        <br />
                                                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Rtime") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                            <HeaderStyle BackColor="#CCCCCC" />
                                                        </asp:Gridview>
</asp:Content>

