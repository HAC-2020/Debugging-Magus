<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Doctor_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style type="text/css">
        #container {
            width: 800px;
            overflow: hidden;
        }

        #slider {
            position: relative;
            width: 3200px;
            animation-name: slideranimation;
            animation-duration: 10s;
            animation-iteration-count: infinite;
        }

            #slider img {
                float: left;
            }

        @keyframes slideranimation {
            0% {
                left: 0px;
            }

            10% {
                left: 0px;
            }

            15% {
                left: -800px;
            }

            35% {
                left: -800px;
            }

            40% {
                left: -1600px;
            }
        }
    </style>

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
                    <h2 class="breadcrumb-title">Dashboard</h2>
                </div>
            </div>
        </div>
    </div>
    <!-- /Breadcrumb -->
    <div class="col-md-10 col-lg-12 col-xl-25">

        <div class="row">
            <div class="col-md-12">
                <div class="card dash-card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12 col-lg-4">
                                <div class="dash-widget dct-border-rht">
                                    <div class="circle-bar circle-bar1">
                                        <div class="circle-graph1" data-percent="75">
                                            <img src="assets/img/icon-01.png" class="img-fluid" alt="patient" />
                                        </div>
                                    </div>
                                    <div class="dash-widget-info">
                                        <h6>Total Patient</h6>
                                        <h3>
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h3>
                                        <p class="text-muted">Till Today</p>
                                    </div>
                                </div>
                            </div>



                            <div class="col-md-12 col-lg-4">
                                <div class="dash-widget">
                                    <div class="circle-bar circle-bar3">
                                        <div class="circle-graph3" data-percent="50">
                                            <img src="assets/img/icon-03.png" class="img-fluid" alt="Patient" />
                                        </div>
                                    </div>
                                    <div class="dash-widget-info">
                                        <h6>Appoinments</h6>
                                        <h3>
                                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h3>
                                        <p class="text-muted">Till Today</p>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <br />
                            <br />
                        </div>


                        <div class="row">
                            <table>
                                <tr>
                                    <td>
                                        <div style="width: 330px; text-align: center">
                                            <span style="font-size: 35px; color: inherit">
                                                <br />
                                                STAY HAPPY
                                                <br />
                                                AND SAFE
                                                <br />
                                                AT HOME. </span>
                                            <br />
                                            <br />
                                        </div>
                                    </td>
                                    <td>
                                        <div id="container" style="max-width: 595px;">
                                            <div id="slider">
                                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Doctor/Image/covid.png" Style="max-width: 600px; height: 600px" />
                                                <asp:Image ID="Image2" runat="server" ImageUrl="~/Doctor/Image/ANalyzing scans.PNG" />
                                                <asp:Image ID="Image3" runat="server" ImageUrl="~/Doctor/Image/xray digital.PNG" />

                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>


        </div>



    </div>

</asp:Content>

