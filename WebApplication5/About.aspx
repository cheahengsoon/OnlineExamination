<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication5.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Maincontent" runat="server">
    <p>
About us
The International Air Transport Association (IATA) is the trade association for the world’s airlines, representing some 240 airlines or 84% of total air traffic. We support many areas of aviation activity and help formulate industry policy on critical aviation issues.

IATA Members
Fact Sheet: IATA Facts & Figures
IATA Annual Review 2013 
</p>
<asp:Panel ID="pnlLogin" runat="server">
<%--<div id="login">
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
          /></td>
<td> <asp:Button runat="server" ID="btnSignUP" Text="SignUP" 
      /></td>
</tr>
<tr>
<td><asp:Label runat="server"  ID="label3" Text=""></asp:Label></td>


</tr>

</table>
</div>--%>
</asp:Panel>
<div id="login">
<asp:Panel runat="server" ID="pnlsignup">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
        oncreateduser="CreateUserWizard1_CreatedUser" 
        oncreatinguser="CreateUserWizard1_CreatingUser" >
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>

  
</asp:Panel>
  </div>
</asp:Content>
