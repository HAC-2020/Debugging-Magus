<%@ Page Title="" Language="C#" MasterPageFile="~/Login/forgetpassword.master" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="Login_forgetpassword" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    .btn-primary{
        border-radius: 30px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Height="45px" Width="387px"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Height="45px" Visible="False" Width="387px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field Required" ForeColor="Red" Visible="False"></asp:RequiredFieldValidator>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Height="46px" Text="Reset password" Width="389px" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Height="44px" OnClick="Button2_Click" Text="Reset password" Visible="False" Width="389px" Style="margin-top:0px;" />
&nbsp;
</asp:Content>


