<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage2.master" AutoEventWireup="true" CodeFile="Doctorlist.aspx.cs" Inherits="Admin_Doctorlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
        .image{
            border-radius:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">Doctors</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index1.aspx">Dashboard</a></li>
									<li class="breadcrumb-item active" style="margin-left:10px">Doctors</li>
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
                                                <tr><h3>Doctors List</h3>
                                                    </tr>
											</thead>
											<tbody>
												<tr>
													<td>
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" Height="185px" Width="919px" CssClass="auto-style1">
                        
                        <Columns>
                            <asp:TemplateField HeaderText="Doctor Name">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="39px" Text='<%# Eval("Docphoto") %>' Width="48px" CssClass="image" />
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Docname") %>'></asp:Label>
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Docid") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Speciality">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server"  Text='<%# Eval("Docspeciality") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Earned">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Docearned") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Rating">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Docreview") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="View">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl='<%# "viewdoctor.aspx?k="+ Eval("Docid") %>' CausesValidation="False">view</asp:LinkButton>
                                    &nbsp;
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle BackColor="#CCCCCC" />
                        </asp:GridView>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
						</div>
                        </div>
</asp:Content>

