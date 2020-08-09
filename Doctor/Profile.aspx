<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/MasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Doctor_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager runat="server" ID="sm">
    </asp:ScriptManager>

    <!-- Breadcrumb -->
    <div class="breadcrumb-bar">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-md-12 col-12">
                    <nav aria-label="breadcrumb" class="page-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Profile Settings</li>
                        </ol>
                    </nav>
                    <h2 class="breadcrumb-title">Profile Settings</h2>
                </div>
            </div>
        </div>
    </div>
    <!-- /Breadcrumb -->
    <!-- Basic Information -->
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Basic Information</h4>
            <div class="row form-row">
                <div class="col-md-12">
                    <div class="form-group">
                        <div class="change-avatar">
                            <div class="profile-img">
                            </div>
                            <div class="upload-img">
                                <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="#3333FF" />
                                <small class="form-text text-muted">Allowed JPG, GIF or PNG. Max size of 2MB</small>
                                <br />
                                <asp:TextBox runat="server" ID="txtfile" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Username <span class="text-danger">*</span></label>

                        <asp:TextBox ID="txtusername" runat="server" ReadOnly="true" CssClass="form-control" ForeColor="#CCCCCC"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Email <span class="text-danger">*</span></label>
                        <asp:TextBox ID="txtemail" runat="server" ReadOnly="true" CssClass="form-control" ForeColor="#CCCCCC"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Name <span class="text-danger">*</span></label>

                        <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label>Mobile Number</label>
                        <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Gender</label>
                        <asp:DropDownList ID="dropgender" runat="server" CssClass="form-control">
                            <asp:ListItem Text="--"></asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group mb-0">
                        <label>Date of Birth</label>
                        <asp:TextBox ID="txtdob" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /Basic Information -->

    <!-- About Me -->
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">About Me</h4>
            <div class="form-group mb-0">
                <label>Biography</label>
                <asp:TextBox ID="txtbio" runat="server" CssClass="form-control" Height="150px"></asp:TextBox>
            </div>
        </div>
    </div>
    <!-- /About Me -->

    <!-- Clinic Info -->
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Hospital/Clinic Info</h4>
            <div class="row form-row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Name</label>
                        <asp:TextBox ID="txthcname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Pricing</label>
                        <asp:TextBox ID="Txtpricing" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /Clinic Info -->

    <!-- Contact Details -->
    <div class="card contact-card">
        <div class="card-body">
            <h4 class="card-title">Contact Details</h4>
            <div class="row form-row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Address Line </label>
                        <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label">City</label>
                        <asp:DropDownList runat="server" CssClass="form-control" ID="dropcity"></asp:DropDownList>
                    </div>
                </div>



                <div class="col-md-6">
                    <div class="form-group">

                        <label class="control-label">State / Province</label>
                        <asp:DropDownList runat="server" CssClass="form-control" ID="dropstate" AutoPostBack="True" OnSelectedIndexChanged="dropstate_SelectedIndexChanged"></asp:DropDownList>


                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label">Postal Code</label>
                        <asp:TextBox ID="txtcode" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /Contact Details -->

    <!-- Services and Specialization -->
    <div class="card services-card">
        <div class="card-body">
            <h4 class="card-title">Specialization</h4>

            <div class="form-group mb-0">
                <label>Specialization </label>
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="dropspecial" runat="server" AutoPostBack="True" CssClass="form-control">
                        </asp:DropDownList>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
    <!-- /Services and Specialization -->


    <div class="submit-section submit-btn-bottom">
        <asp:Button ID="btnsave" runat="server" Text="Save Changes" type="submit" CssClass="btn btn-primary submit-btn" OnClick="Button1_Click" />
    </div>
    <asp:HiddenField runat="server" ID="HiddenField1"></asp:HiddenField>
    <asp:Label ID="Label1" runat="server"></asp:Label>

    <!-- /Page Content -->

    <%--<script>
        function showdv() {
            debugger
            $('.education-info').css('display', 'block');
            $('#dvdeg').css('display', 'none');
        }
        function showdve() {
            debugger
            $('.experience-info').css('display', 'block');
            $('#dvex').css('display', 'none');
        }
        function showaward() {
            debugger
            $('.awards-info').css('display', 'block');
            $('#awards').css('display', 'none');
        }
    </script>--%>
</asp:Content>

