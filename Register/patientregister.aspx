<%@ Page Title="" Language="C#" MasterPageFile="patientregister.master" AutoEventWireup="true" CodeFile="patientregister.aspx.cs" Inherits="Register_patientregister" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    
    .btn-primary
    {
border-radius:30px;
border-color:lightgreen;
    }

</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server" Height="46px" Width="386px" placeholder="username" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Height="46px" Width="386px" placeholder="password" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
</asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <asp:TextBox ID="TextBox3" runat="server" Height="45px" Width="387px" placeholder="e-mail" TextMode="Email" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
</asp:Content>


<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder4">
    <asp:button runat="server" text="Sign Up" ForeColor="White" Height="46px"  Width="390px" OnClick="Unnamed1_Click" CssClass="btn btn-primary btn-block" />
    </asp:Content>


<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder5">
    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="46px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="150px">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server" Height="46px" Width="150px">
    </asp:DropDownList>
    <br />
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
</asp:Content>













