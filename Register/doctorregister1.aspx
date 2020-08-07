<%@ Page Title="" Language="C#" MasterPageFile="~/Register/Doctor.master" AutoEventWireup="true" CodeFile="doctorregister1.aspx.cs" Inherits="Register_doctorregister1"  EnableEventValidation="false"%>

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
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Height="46px" Width="183px" placeholder="experience"></asp:TextBox>
&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Height="46px" Width="183px" placeholder="age"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:TextBox ID="TextBox4" runat="server" Height="46px" Width="384px" placeholder="mobile number"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox4" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <span class="auto-style1">Upload your passport photo</span><br />
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <span class="auto-style1">Upload government registration certificate</span><br />
    <asp:FileUpload ID="FileUpload2" runat="server" />
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="FileUpload2" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Button ID="Button1" runat="server" Height="46px" Text="Start 7 day free trial" Width="391px" Font-Bold="False" Font-Size="Large" OnClick="Button1_Click" CssClass="btn-primary" />
</asp:Content>


