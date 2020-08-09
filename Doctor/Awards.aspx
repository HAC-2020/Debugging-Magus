<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/MasterPage.master" AutoEventWireup="true" CodeFile="Awards.aspx.cs" Inherits="Doctor_Awards" %>

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
									<li class="breadcrumb-item active" aria-current="page">Awards</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Awards</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->


       <!-- Awards -->
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Awards</h4>
            <div class="awards-info">
                <div class="row form-row awards-cont">
                    <div class="col-12 col-md-5">
                        <div class="form-group">
                            <label>Name</label>
                            <asp:textbox id="txtname" runat="server" cssclass="form-control"></asp:textbox>
                         <asp:requiredfieldvalidator runat="server" errormessage="Required *" ControlToValidate="txtname" Font-Size="XX-Small" ForeColor="Red"></asp:requiredfieldvalidator> 
                             </div>
                       
                    </div>
                    <div class="col-12 col-md-5">
                        <div class="form-group">
                            <label>Year</label>
                            <asp:textbox id="txtyear" runat="server" cssclass="form-control"></asp:textbox>
                         <asp:requiredfieldvalidator runat="server" errormessage="Required *" ControlToValidate="txtyear" Font-Size="XX-Small" ForeColor="Red"></asp:requiredfieldvalidator> 
                        </div>
                        
                    </div>
                    <div class="col-12 col-md-5">
                        <div class="form-group">
                            <label>Description</label>
                            <asp:textbox id="txtdesc" runat="server" cssclass="form-control"></asp:textbox>
                          <asp:requiredfieldvalidator runat="server" errormessage="Required *" ControlToValidate="txtdesc" Font-Size="XX-Small" ForeColor="Red"></asp:requiredfieldvalidator> 
                        </div>
                       
                    </div>
                </div>
            </div>

             <div>
        <asp:button id="Btnaward" runat="server" text="Save Changes" type="submit" cssclass="btn btn-primary submit-btn" OnClick="Btnedu_Click"  />
    </div>

             <br/>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style1" ForeColor="#333333" GridLines="None" Width="897px" OnRowDataBound="GridView1_RowDataBound">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Award Name">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Docaward") %>'></asp:Label>
                            <br />
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("awardid") %>' />
                            <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("Docid") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Year">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("awardyear") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("awarddesc") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False" >Delete</asp:LinkButton>
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
    <!-- /Awards -->

</asp:Content>

