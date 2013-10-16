<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="WebApplication5.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Maincontent" runat="server">
    <p></p>
<asp:Panel ID="pnlLogin" runat="server">
<div id="login">
<table>
<tr>
<td><asp:Label runat="server" ID="label1" Text="Username"></asp:Label></td>
<td><asp:TextBox  runat="server"  ID="lblUserid"></asp:TextBox></td>
</tr>
<tr>
<td><asp:Label runat="server"  ID="label2" Text="Password"></asp:Label></td>
<td><asp:TextBox  runat="server"  ID="lblPassword"></asp:TextBox></td>

</tr>
<tr>
<td><asp:Button  runat="server"  ID="btnlogin" Text="Login" 
        onclick="btnlogin_Click"  /></td>
<td> <asp:Button runat="server" ID="btnSignUP" Text="SignUP" 
        onclick="btnSignUP_Click" /></td>
</tr>
<tr>
<td><asp:Label runat="server"  ID="label3" Text=""></asp:Label></td>


</tr>

</table>
</div>
</asp:Panel>
<div id="login">
<asp:Panel runat="server" ID="pnlsignup">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
        oncreateduser="CreateUserWizard1_CreatedUser" 
        oncreatinguser="CreateUserWizard1_CreatingUser" >
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" />
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>

  
</asp:Panel>
  </div>
</asp:Content>
