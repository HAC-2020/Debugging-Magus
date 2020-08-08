<%@ Page Title="" Language="C#" MasterPageFile="~/Login/login.master" AutoEventWireup="true" CodeFile="loginpage.aspx.cs" Inherits="Login_loginpage" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>    
        .btn-primary
    {
        border-radius:30px;
    }
       </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server" Height="46px" Width="380px" placeholder="username" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:TextBox ID="TextBox2" runat="server" Height="45px" Width="381px" placeholder="password" TextMode="Password" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
</asp:Content>


<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    &nbsp;<asp:Button ID="Button1" runat="server"  Height="46px" Text="Login" Width="389px" OnClick="Button1_Click" CssClass="btn btn-primary btn-block" />
</asp:Content>



