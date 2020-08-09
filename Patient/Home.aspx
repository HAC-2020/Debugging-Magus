<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Patient_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 525px;
        }
        .auto-style2 {
            
            width: 960px;
        }
        .auto-style3 {
            width: 100%;
            height: 242px;
        }
        .auto-style4 {
            font-size: large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Home Banner -->  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
			<section class="section section-search">
				<div class="container-fluid">
					<div class="banner-wrapper">
						<div class="banner-header text-center">
							<h1>Search Doctor, Make an Appointment</h1>
							<p>Discover the best doctors, clinic & hospital the city nearest to you.</p>
						</div>
                         
						<!-- Search -->
						<div class="search-box">
							<table><tr><td>
                                
								<div class="form-group search-location">
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" ></asp:DropDownList>
									<span class="form-text">Based on your State</span>
								</div> 
                                   </td><td>
                                       
                                <div class="form-group search-location">
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"></asp:DropDownList>
									<span class="form-text">Based on your City</span>
								</div></td>
                                <td class="auto-style1">
								<div class="form-group search-info">
									<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList><span class="form-text">Ex : Dental or Sugar Check up etc</span>
								</div></td></tr></table>
								
						</div>
						<!-- /Search -->
						
					</div>
				</div>
			</section>

    <!-- /Home Banner -->

			<br />
    <br />
    <br />

    <div class="col-md-12 col-lg-8 col-xl-9">

						
							<!-- /Doctor Widget -->
                          
										<asp:DataList ID="DataList1" runat="server" CellPadding="100"  RepeatColumns="3" RepeatDirection="Horizontal">
                                           <%--  <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="White" ForeColor="#333333" />--%>
                                             <ItemTemplate>
                                                  <div class="card">
								<div class="card-body">
									<div class="doctor-widget">
                                                <div class="doc-info-left">
											        <div class="doctor-img">
												        <a href="doctor-profile.html">
                                                <asp:Image ID="Image1" runat="server" Height="175px" Width="203px" CssClass="img-fluid" AlternateText="User Image" ImageUrl='<%# Eval("Docphoto") %>'/>
                                                </div>
                                                 &nbsp;&nbsp;&nbsp;
                                                <h4 class="doc-name"><asp:Label ID="Label1" runat="server" Text='<%# Eval("Docname") %>'></asp:Label></h4>
												<p class="doc-speciality">
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Doceducationdegree") %>'></asp:Label></p>
                                                    <h5 class="doc-department"><asp:Label ID="Label3" runat="server" Text='<%# Eval("SP_Name") %>'></asp:Label></h5>
                                                    <div class="rating">
													<span class="d-inline-block average-rating">Rating : <asp:Label ID="Label4" runat="server" Text='<%# Eval("Docreview") %>'></asp:Label>/5</span>
												</div>
                                                    <div class="clinic-details">
													<p class="doc-location"><i class="fas fa-map-marker-alt"></i> <asp:Label ID="Label5" runat="server" Text='<%# Eval("Daddress") %>'></asp:Label></p>
												
												</div>
                                                    </div>
										</div>
                                                	<div class="doc-info-right">
											<div class="clini-infos">
												<ul>
												
													<li><i class="far fa-money-bill-alt"></i>  <asp:Label ID="Label6" runat="server" Text='<%# Eval("Docpricing") %>'></asp:Label>Rs </li>
												</ul>
											</div>
											<div class="btn-search">
                                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-block" PostBackUrl='<%#"doctor-profile.aspx?k="+Eval("Docid")%>'>View Profile</asp:LinkButton>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-block" PostBackUrl='<%#"booking.aspx?k="+Eval("Docid")%>'>Book Appointment</asp:LinkButton>
                                                
                                            </div>
									
											</div>
										</div>
                                    </div>
							<!-- Doctor Widget -->
							
							<!-- /Doctor Widget -->

							
						</div>
					</div>
                                            </ItemTemplate>
                                            <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />

										</asp:DataList>
									</div>

			

    <table class="auto-style3" >
        <tr>
            <td cellpadding="5" class="auto-style2">
                <table>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td></tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                 <td class="auto-style4">
                     <h2>
                <span style="color: rgb(36, 41, 46); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style4">In this times of Covid everything has changed and people have adapted sudden changes such as maintaining social distancing and keeping safety measures with them and also prefers having their work to be done online. So in this going to hospital or clinic has its own risks. So here we propose<span>&nbsp;</span></span><b style="box-sizing: border-box; font-weight: 600; color: rgb(36, 41, 46); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;"><span class="auto-style4">Meditaxx</span></b><span style="color: rgb(36, 41, 46); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="auto-style4">&nbsp;</span></span><span style="color: rgb(36, 41, 46); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style4">a 
                Doctor-Patient communication portal where patients can search doctors and book appointments and can virtually connect in this pandemic situation and doctors can prescribe meds to patients. Patient can have conversation with doctor and can also share their reports with doctors.</span>
                      </h2>
                      </td>     </tr>
                </table></td>
            <td>
                <img src="assets/img/HomeImg.PNG" width="400" height="300" /></td>
        </tr>
    </table>
    <br />
    <br />



			

</asp:Content>

