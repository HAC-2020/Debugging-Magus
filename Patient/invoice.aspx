<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/MasterPage.master" AutoEventWireup="true" CodeFile="invoice.aspx.cs" Inherits="Patient_invoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script> 
        function printDiv() { 
            var divContents = document.getElementById("GFG").innerHTML; 
            var a = window.open('', '', 'height=500, width=500'); 
            a.document.write('<html>'); 
            a.document.write('<body > '); 
            a.document.write(divContents); 
            a.document.write('</body></html>'); 
            a.document.close(); 
            a.print(); 
        } 
    </script> 
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .auto-style2 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style3 {
            text-align: right;
            height: 32px;
        }
        .auto-style4 {
            height: 32px;
            text-align: justify;
        }
         .auto-style5 {
            width: 308px;
            font-size: large;
            text-align: center;
        }
          .auto-style10 {
            font-size: large;
            text-align: center;
            margin-left: 160px;
        }
          .auto-style11 {
            width: 100%;
        }
         @media print{
            .priya{
                visibility: hidden;
            }
        }
        .auto-style12 {
            height: 99px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="GFG">
        <div class="invoice-logo" style="text-align: center">
                                       <%-- <img src="assets/nlogo.png" alt="logo" />--%>
            <img src="assets/img/nlogo.png" alt="logo" class="auto-style12"/>
                                    </div>
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                <h1><strong>INVOICE</strong></h1>
            </td>
            <td>&nbsp;</td>
            <td>Appointment Id: <asp:Label ID="Label5" runat="server"></asp:Label><br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Patient Name : </strong></td>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Doctor Name : </strong></td>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
          <tr>
            <td class="auto-style3"><strong>Date of Appointment : </strong></td>
            <td class="auto-style4">
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
          <tr>
            <td class="auto-style3"><strong>Time of Appointment : </strong></td>
            <td class="auto-style4">
                <asp:Label ID="Label8" runat="server"></asp:Label>-
                 <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Address of Appointment : </strong></td>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Payment Status : </strong></td>
            <td class="auto-style4">
                Paid
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Payment Mode : </strong></td>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr></table></div>
    <table cellpadding="10" cellspacing="10" class="auto-style11">
    <tr>
                <td class="auto-style5">&nbsp;</td><td class="auto-style5"</td>
                <td class="auto-style5" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <div class="btn-search">
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button1" runat="server" Text="Download" Width="195px" CssClass="btn btn-block" OnClientClick="printDiv()"/>
			</div>	
                    </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
         </table>
</asp:Content>

