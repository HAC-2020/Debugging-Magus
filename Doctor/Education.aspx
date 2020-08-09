<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/MasterPage.master" AutoEventWireup="true" CodeFile="Education.aspx.cs" Inherits="Doctor_Education" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:scriptmanager runat="server" id="sm">
                    </asp:scriptmanager>

     <!-- Breadcrumb -->
			<div class="breadcrumb-bar">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-md-12 col-12">
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Education</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Education</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->

     <!-- Education -->
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Education</h4>
            <div class="education-info">
                <div class="row form-row education-cont">
                    <div class="col-12 col-md-10 col-lg-11">
                        <div class="row form-row">
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="form-group">
                                    <label>Degree</label>
                                    <asp:textbox id="Txtdegree" runat="server" cssclass="form-control"></asp:textbox>
                                 <asp:requiredfieldvalidator runat="server" errormessage="Required *" ControlToValidate="txtdegree" Font-Size="XX-Small" ForeColor="Red"></asp:requiredfieldvalidator> 
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="form-group">
                                    <label>College/Institute</label>
                                    <asp:textbox id="txtclg" runat="server" cssclass="form-control"></asp:textbox>
                                     <asp:requiredfieldvalidator runat="server" errormessage="Required *" ControlToValidate="txtclg" Font-Size="XX-Small" ForeColor="Red"></asp:requiredfieldvalidator> 
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="form-group">
                                    <label>Year of Completion</label>
                                    <asp:textbox id="txtyear" runat="server" cssclass="form-control"></asp:textbox>
                                     <asp:requiredfieldvalidator runat="server" errormessage="Required *" ControlToValidate="txtyear" Font-Size="XX-Small" ForeColor="Red"></asp:requiredfieldvalidator> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           
            <div>
        <asp:button id="Btnedu" runat="server" text="Save Changes" type="submit" cssclass="btn btn-primary submit-btn" OnClick="Btnedu_Click"  />
    </div>
            <br/>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style1" ForeColor="#333333" GridLines="None" Width="630px" OnRowDataBound="GridView1_RowDataBound">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Degree">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("edudegree") %>'></asp:Label>
                            <br />
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("eduid") %>' />
                            <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("Docid") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="College/Institue">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("educlg") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Completion Year">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("eduyear") %>'></asp:Label>
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
                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />

            </asp:GridView> 
        </div>
    </div>
    <!-- /Education -->
</asp:Content>

