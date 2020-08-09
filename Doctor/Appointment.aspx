<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/MasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Appointment.aspx.cs" Inherits="Doctor_Appointment" %>

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
									<li class="breadcrumb-item active" aria-current="page">Appointments</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Appointments</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->

    <!--Page Content-->
     <asp:scriptmanager runat="server" id="sm">
                    </asp:scriptmanager>
      <div class="col-md-10 col-lg-12 col-xl-25">
							<div class="card">
								<div class="card-body">
    <h6><asp:GridView ID="GridView1" runat="server" Align="Center" AutoGenerateColumns="False" CellPadding="4" GridLines="None" CssClass="auto-style3" ForeColor="#333333" Width="838px" OnRowDataBound="GridView1_RowDataBound">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Patient">
                <ItemTemplate>
                    <br />
                    <asp:Image ID="Image2" runat="server" Height="150px" ImageUrl='<%# Eval("Patphoto") %>' Width="150px" />
              <asp:HiddenField runat="server" id="hiddenid" Value='<%# Eval("Aid") %>' ></asp:HiddenField>
                    <br />
                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Patid") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Details"> 
                <ItemTemplate>
                    &nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text='<%# Eval("Patname") %>'></asp:Label>
                    <br />
                   <i class="far fa-clock"></i>&nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("Adate") %>'></asp:Label><br />
                    <asp:Label ID="lblstarttime" runat="server" Text='<%# Eval("Astarttime") %>'></asp:Label>-
                    <asp:Label ID="lblendtime" runat="server" Text='<%# Eval("Aendtime") %>'></asp:Label>
                    <br />
                    <i class="fas fa-map-marker-alt"></i>&nbsp;<asp:Label ID="Label3" runat="server"  Text='<%# Eval("Pataddress") %>'></asp:Label>
                    <br />
                    <i class="fas fa-envelope"></i>&nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("Patemail") %>'></asp:Label>
                    <br />
                    <i class="fas fa-phone"></i>&nbsp;<asp:Label ID="Label5" runat="server" Text='<%# Eval("Patmobile") %>'></asp:Label>
                    <br />
                   
                </ItemTemplate>
                </asp:TemplateField>
            <asp:TemplateField HeaderText="Status">					
                <ItemTemplate>
                   <asp:Label runat="server" ID="lblstatus" Text='<%# Eval("Astatus") %>'></asp:Label> 
                </ItemTemplate> 				
            </asp:TemplateField>
     
            <asp:TemplateField>
                <ItemTemplate>
                  
                  <i class="fas fa-check"></i>  <asp:button runat="server" ID="btnconfirm" text="Confirm" BackColor="#EFF3FB" BorderColor="White" BorderWidth="0px" CssClass="fas fa-check" OnClick="btnconfirm_Click1"  />
                          
                </div>                          
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                   <i class="fas fa-times"> <asp:button runat="server" ID="btndelete" text="Cancel" BackColor="#EFF3FB" BorderColor="White" BorderWidth="0px" CssClass="fas fa-times" OnClick="btndelete_Click"  />
                </i>
                       </ItemTemplate>
            </asp:TemplateField>
        </Columns>
 
        <EditRowStyle BackColor="#2461BF" />
 
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"/>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center"/>
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
 
    </asp:GridView></h6>

  
    </div>
         </div>
          </div>

    <%--<script>
        function hideconfirm() {
            debugger
            $('#confirm').css('display', 'none');
        }
        </script>--%>

       <!--Page Content-->
    </asp:Content>

