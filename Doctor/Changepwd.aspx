<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/MasterPage.master" AutoEventWireup="true" CodeFile="Changepwd.aspx.cs" Inherits="Doctor_Changepwd" %>

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
									<li class="breadcrumb-item active" aria-current="page">Change Password</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Change Password</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->

    <!-- /Page content -->
    <div class="col-md-10 col-lg-12 col-xl-25">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-md-12 col-lg-6">
										
											<!-- Change Password Form -->
											<form>
												<div class="form-group">
                                                    <asp:HiddenField ID="HiddenField1" runat="server" />
													<label>Old Password</label>
                                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
												</div>
												<div class="form-group">
													<label>New Password</label>
												 <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
												</div>
												<div class="form-group">
													<label>Confirm Password</label>
													 <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
												</div>
												<div class="submit-section">
                                                    <asp:Button ID="Button1" runat="server" Text="Save Changes" CssClass="btn btn-primary submit-btn" OnClick="Button1_Click" />
												</div>
                                                <asp:Label ID="Label1" runat="server" ></asp:Label>
											</form>
											<!-- /Change Password Form -->
											
										</div>
									</div>
								</div>
							</div>
        </div>
        <!-- /Page content -->
</asp:Content>

