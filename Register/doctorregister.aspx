<%@ Page Title="" Language="C#" MasterPageFile="doctorRegister.master" AutoEventWireup="true" CodeFile="doctorregister.aspx.cs" Inherits="Register_doctorregister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        font-size: medium;
        color: #808080;
    }

    .btn-primary
    {
border-radius:10px;
border-color:lightgreen;
background-color:white;
color:lightgreen;
    }

    
</style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:TextBox ID="TextBox1" runat="server" Height="46px" Width="184px" placeholder="username"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox6" runat="server" Height="46px" Width="180px" placeholder="password" TextMode="Password"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
    &nbsp;
    <br />
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <asp:TextBox ID="TextBox2" runat="server" Height="46px" Width="386px" placeholder="email" TextMode="Email"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
</asp:Content>

<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder4">
    <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select
    Gender</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:radiobutton ID="rb1" runat="server" Text="Male" BorderColor="White"></asp:radiobutton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:radiobutton ID="rb2" runat="server" Text="Female"></asp:radiobutton>
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="35px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="138px">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="139px">
    </asp:DropDownList>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
<br />
     </asp:Content>

<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder5">
    <asp:TextBox ID="TextBox3" runat="server" Height="46px" Width="386px" placeholder="Clinic / Hospital address"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
    &nbsp;
    <br />
</asp:Content>

<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder6">
    <asp:TextBox ID="TextBox8" runat="server" Height="46px" Width="184px" placeholder="qualification"></asp:TextBox>
    &nbsp;&nbsp; <asp:TextBox ID="TextBox9" runat="server" Height="46px" Width="185px" placeholder="Speciality"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox9" ErrorMessage="Field Required!" ForeColor="Red"></asp:RequiredFieldValidator>
    </asp:Content>





<asp:Content ID="Content8" runat="server" contentplaceholderid="ContentPlaceHolder7">
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Height="41px" Text="next" Width="170px" OnClick="Button1_Click" CssClass="btn-primary" />
</asp:Content>






