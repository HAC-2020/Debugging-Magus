<%@ Page Title="" Language="C#" MasterPageFile="Doctor.master" AutoEventWireup="true" CodeFile="doctorregister1.aspx.cs" Inherits="Register_doctorregister1"  EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #808080;
        }

        .btn-primary
        {
            border-radius:20px;
            background-color: white;
            border-color: lightgreen;
            color:lightgreen;
        }

        .textbox{
            border-bottom-color:lightgray;
            border-top-color:lightgray;
        }
        .auto-style2 {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Height="46px" Width="183px" placeholder="experience" CssClass="textbox"></asp:TextBox>
&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Height="46px" Width="183px" placeholder="age" CssClass="textbox" TextMode="Date"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:TextBox ID="TextBox4" runat="server" Height="46px" Width="384px" placeholder="mobile number" CssClass="textbox"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox4" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <span class="auto-style2">file size should not exceed 10MB(please upload image only)</span><br />
    <span class="auto-style1">Upload your passport photo</span><asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <span class="auto-style1">Upload government registration certificate<asp:Label ID="Label2" runat="server"></asp:Label>
    </span><br />
    <asp:FileUpload ID="FileUpload2" runat="server" />
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="FileUpload2" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Button ID="Button1" runat="server" Height="46px" Text="Start 7 day free trial" Width="391px" Font-Bold="False" Font-Size="Large" OnClick="Button1_Click" CssClass="btn-primary" />
</asp:Content>


