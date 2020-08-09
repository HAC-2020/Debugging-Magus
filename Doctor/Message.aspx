<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/MasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="Doctor_Message" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            -ms-flex-align: stretch;
            align-items: stretch;
            width: 100%;
            left: 0px;
            top: 0px;
        }

        .auto-style2 {
            margin-right: 449px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <!-- Breadcrumb -->
    <div class="breadcrumb-bar">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-md-12 col-12">
                    <nav aria-label="breadcrumb" class="page-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                    </nav>
                    <h2 class="breadcrumb-title">Message</h2>
                </div>
            </div>
        </div>
    </div>
    <!-- /Breadcrumb -->
    
    <!-- Page Content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-12">
                    <div class="chat-window">

                        <!-- Chat Left -->
                        <div class="chat-cont-left">
                            <div class="chat-header">
                                <span>Chats</span>

                            </div>

                            <div class="chat-users-list">
                                <div class="chat-scroll">

                                    <asp:GridView runat="server" ID="gridchat" AutoGenerateColumns="False" BorderWidth="0px" ShowHeader="False" Width="319px" GridLines="Horizontal" OnRowDataBound="gridchat_RowDataBound">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Name">
                                                <ItemTemplate>
                                                    <div class="media-img-wrap">
                                                        <div class="avatar avatar-away">
                                                            <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("Patphoto") %>' />
                                                        </div>
                                                        <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("msgid") %>' />
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Message">
                                                <ItemTemplate>
                                                    <div class="media-body">
                                                        <div>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Pmessage") %>'></asp:Label>
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" Autopostback="true">View</asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return false;" OnClick="LinkButton1_Click">Delete</asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                        <!-- /Chat Left -->

                        <!-- Chat Right -->
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <div class="chat-cont-right" style="display: none;">
                            <div class="chat-header">
                                <asp:DataList runat="server" ID="DataList1" OnItemDataBound="DataList1_ItemDataBound" CssClass="auto-style2">
                                    <ItemTemplate>
                                        <div class="media" style="padding-top: 390px; margin-bottom: 20px; width: 586px;">
                                            <div class="media-img-wrap">
                                                <div class="avatar avatar-online">
                                                    <asp:Image runat="server" CssClass="avatar-img rounded-circle" ImageUrl='<%# Eval("Patphoto") %>'></asp:Image>
                                                </div>
                                            </div>

                                            <div class="media-body">
                                                <div class="user-name">
                                                    <asp:Label runat="server" Text='<%# Eval("Patname") %>'></asp:Label>
                                                </div>
                                                <div class="user-status">online</div>
                                            </div>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                              <div class="chat-options">
                                                  <a href="javascript:void(0)" data-toggle="modal" data-target="#voice_call">
                                                      <i class="material-icons">local_phone</i>
                                                  </a>
                                                  <a href="javascript:void(0)" data-toggle="modal" data-target="#video_call">
                                                      <i class="material-icons">videocam</i>
                                                  </a>
                                                  <a href="javascript:void(0)">
                                                      <i class="material-icons">more_vert</i>
                                                  </a>
                                              </div>
                                        </div>

                                        <div class="chat-body" style="width: 587px;">
                                            <div class="chat-scroll">
                                                <ul class="list-unstyled">
                                                    <li class="media sent">
                                                        <div class="media-body">
                                                            <div class="msg-box">
                                                                <div>
                                                                    <p>
                                                                        <asp:Label runat="server" ID="Label1" Text='<%# Eval("Dmessage") %>'></asp:Label>
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="media received">
                                                        <div class="media-body">
                                                            <div class="msg-box">
                                                                <div>
                                                                    <p>
                                                                        <asp:Label runat="server" ID="lblrecieve" Text='<%# Eval("Pmessage") %>'></asp:Label>

                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>

                                                </ul>
                                            </div>
                                        </div>

                                        <div class="chat-footer" style="width: 587px;">
                                            <div class="col-md-12">
                                                <div class="row">
                                                    <div class="col-md-1" style="padding-left: 0px; padding-top: 9px;">
                                                        <div class="btn-file btn">
                                                            <i class="fa fa-paperclip"></i>
                                                            <asp:FileUpload runat="server" ID="FileUploadtxt"></asp:FileUpload>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <asp:TextBox runat="server" CssClass="input-msg-send form-control" placeholder="Type something" ID="txttype"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <asp:Button runat="server" Text="Send" CssClass="btn btn-primary form-control" ID="btnsend" OnClick="btnsend_Click"></asp:Button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:DataList>
                              <%--  <div class="chat-footer" style="width: 587px;">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-1" style="padding-left: 0px; padding-top: 9px;">
                                                <div class="btn-file btn">
                                                    <i class="fa fa-paperclip"></i>
                                                    <asp:FileUpload runat="server" ID="FileUploadtxt"></asp:FileUpload>
                                                </div>
                                            </div>
                                            <div class="col-md-9">
                                                <asp:TextBox runat="server" CssClass="input-msg-send form-control" placeholder="Type something" ID="txttype"></asp:TextBox>
                                            </div>
                                            <div class="col-md-2">
                                                <asp:Button runat="server" Text="Send" CssClass="btn btn-primary form-control" ID="btnsend" OnClick="btnsend_Click"></asp:Button>
                                            </div>
                                        </div>
                                    </div>
                                </div>--%>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script>
        $(document).ready(function () {
            $('#ContentPlaceHolder1_gridchat_LinkButton2_0').click(function () {
                $('.chat-cont-right').css('display', 'block');
                $('.chat-footer').css('display', 'block');
                return false;
            });
        });

    </script>


</asp:Content>

