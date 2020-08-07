<%@ Page Title="" Language="C#" MasterPageFile="~/Register/patientregister.master" AutoEventWireup="true" CodeFile="patientregister.aspx.cs" Inherits="Register_patientregister" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        margin-right: 4;
    }

   
    .btn-primary
    {
border-radius:30px;
border-color:lightgreen;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server" Height="46px" Width="386px" placeholder="username"></asp:TextBox>
</asp:Content>










<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <br />
<asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1" Height="46px" Width="386px" placeholder="password" TextMode="Password"></asp:TextBox>
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <br />
<asp:TextBox ID="TextBox3" runat="server" Height="45px" Width="387px" placeholder="e-mail" TextMode="Email"></asp:TextBox>

</asp:Content>





<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder4">
    <asp:button runat="server" text="Sign Up" ForeColor="White" Height="46px"  Width="390px" OnClick="Unnamed1_Click" CssClass="btn-primary" />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    </asp:Content>












<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder5">
    &nbsp;<br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="46px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="150px">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server" Height="46px" Width="150px">
    </asp:DropDownList>
<br />
</asp:Content>













