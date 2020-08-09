<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/MasterPage.master" AutoEventWireup="true" CodeFile="Pricing.aspx.cs" Inherits="Doctor_SocialMedia" EnableEventValidation="false" %>

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
									<li class="breadcrumb-item active" aria-current="page">Pricing</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Pricing</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->
			
    <!--Social Form list-->
    <div class="col-md-10 col-lg-12 col-xl-25">
							<div class="card">
								<div class="card-body">
								
									<!-- Social Form -->
									<form>                                                                                           
										<div class="row">
											<div class="col-md-12 col-lg-8">
												<div class="form-group">
													<label>Service</label> 
                                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass ="form-control">
                                                         <asp:ListItem Text="--"></asp:ListItem>
                                                        <asp:ListItem>General Prescription</asp:ListItem>
                                                        <asp:ListItem>Voice Call</asp:ListItem>
                                                        <asp:ListItem>Video Call</asp:ListItem>

                                                    </asp:DropDownList>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12 col-lg-8">
												<div class="form-group">
													<label>Value</label>
													
                                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass ="form-control">
                                                        <asp:ListItem Text="--"></asp:ListItem>
                                                        <asp:ListItem>Free</asp:ListItem>
                                                        <asp:ListItem>100</asp:ListItem>
                                                        <asp:ListItem>200</asp:ListItem>
                                                        <asp:ListItem>300</asp:ListItem>
                                                        <asp:ListItem>400</asp:ListItem>
                                                        <asp:ListItem>500</asp:ListItem>

                                                    </asp:DropDownList>
												</div>
											</div>
										</div>
										
										<div class="submit-section">
											
                                            <asp:Button ID="Button1" runat="server" Text="Save Changes" CssClass="btn btn-primary submit-btn" OnClick="Button1_Click" />
										</div>
									</form>
                                    <asp:HiddenField ID="HiddenField1" runat="server" />
                                    <asp:Label ID="Label1" runat="server" ></asp:Label>
									<!-- /Social Form -->
									
                                    <br />

                                     <!--Showing data-->
                                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="608px" CellPadding="4" ForeColor="#333333" GridLines="None">
                                         <AlternatingRowStyle BackColor="White" />
                                         <Columns>
                                             <asp:TemplateField HeaderText="Service">
                                                 <ItemTemplate>
                                                     <asp:Label ID="Label2" runat="server" Text='<%# Eval("Servicename") %>'></asp:Label>
                                                 </ItemTemplate>
                                             </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Value">
                                                 <ItemTemplate>
                                                     <asp:Label ID="Label3" runat="server" Text='<%# Eval("Servicerupees") %>'></asp:Label>
                                                 </ItemTemplate>
                                             </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Edit">
                                                 <ItemTemplate>
                                                     <asp:LinkButton ID="LinkButton1" runat="server">Edit</asp:LinkButton>
                                                 </ItemTemplate>
                                             </asp:TemplateField>
                                             <asp:TemplateField HeaderText="Delete">
                                                 <ItemTemplate>
                                                     <asp:LinkButton ID="LinkButton2" runat="server">Delete</asp:LinkButton>
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
                                     <!--Showing data-->
								</div>
							</div>
						</div>
					
    <!--Social Form list-->

   
</asp:Content>

