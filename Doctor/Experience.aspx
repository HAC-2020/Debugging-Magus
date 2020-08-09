<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/MasterPage.master" AutoEventWireup="true" CodeFile="Experience.aspx.cs" Inherits="Doctor_Experience" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
									<li class="breadcrumb-item active" aria-current="page">Experience</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Experience</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->

     <!-- Experience -->
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Experience</h4>
            <div class="experience-info">
                <div class="row form-row experience-cont">
                    <div class="col-12 col-md-10 col-lg-11">
                        <div class="row form-row">
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="form-group">
                                    <label>Hospital Name</label>
                                    <asp:textbox id="txthospital" runat="server" cssclass="form-control"></asp:textbox>
                                 <asp:requiredfieldvalidator runat="server" errormessage="Required *" ControlToValidate="txthospital" Font-Size="XX-Small" ForeColor="Red"></asp:requiredfieldvalidator> 
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="form-group">
                                    <label>From</label>
                                    <asp:textbox id="txtfrom" runat="server" cssclass="form-control" textmode="Date"></asp:textbox>
                                     <asp:requiredfieldvalidator runat="server" errormessage="Required *" ControlToValidate="txtfrom" Font-Size="XX-Small" ForeColor="Red"></asp:requiredfieldvalidator> 
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="form-group">
                                    <label>To</label>
                                    <asp:textbox id="txtto" runat="server" cssclass="form-control" textmode="Date"></asp:textbox>
                                <asp:requiredfieldvalidator runat="server" errormessage="Required *" ControlToValidate="txtto" Font-Size="XX-Small" ForeColor="Red"></asp:requiredfieldvalidator> 
                                     </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="form-group">
                                    <label>Designation</label>
                                    <asp:textbox id="txtdesign" runat="server" cssclass="form-control"></asp:textbox>
                                     <asp:requiredfieldvalidator runat="server" errormessage="Required *" ControlToValidate="txtdesign" Font-Size="XX-Small" ForeColor="Red"></asp:requiredfieldvalidator> 
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
                    <asp:TemplateField HeaderText="Hospital">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("hospitalname") %>'></asp:Label>
                            <br />
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("expid") %>' />
                            <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("Docid") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Year From">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("yearfrom") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Year To">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("yearto") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Designation">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("designation") %>'></asp:Label>
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
    <!-- /Experience -->

</asp:Content>

