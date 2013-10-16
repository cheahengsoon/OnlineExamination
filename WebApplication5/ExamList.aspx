<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ExamList.aspx.cs" Inherits="WebApplication5.ExamList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <link href="CSS/stylesheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Maincontent" runat="server">
 <div >
  <asp:Panel ID="Panelgrid" runat="server" Height="175px" Width="760px">
    <p>
       
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" 
            DataFile="~/XML Files/QuestionswithOptions.xml"></asp:XmlDataSource>
           
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
        <asp:Label ID="Label3" runat="server"></asp:Label>
           
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="2" DataSourceID="XmlDataSource1" ForeColor="Black" 
            GridLines="None" Height="137px" Width="754px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:TemplateField HeaderText="ID" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Question" SortExpression="Question">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Question") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Question") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OptionA" SortExpression="OptionA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("OptionA") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:RadioButton ID="RadioButton1" runat="server"
                            Text='<%# Eval("OptionA") %>'  GroupName="R1"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OptionB" SortExpression="OptionB">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("OptionB") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:RadioButton ID="RadioButton2" runat="server" 
                            Text='<%# Eval("OptionB") %>'  GroupName="R1" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OptionC" SortExpression="OptionC">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("OptionC") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:RadioButton ID="RadioButton3" runat="server"  GroupName="R1"
                            Text='<%# Eval("OptionC") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
      
    </p>
     </asp:Panel>
     </div>
</asp:Content>
