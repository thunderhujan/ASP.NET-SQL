<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="User_Records___Skill_Assessment._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  

    <table class="nav-justified">
        <tr>
            <td colspan="2" style="font-size: medium">
                <h1 class="text-center" style="text-decoration: underline"><strong>Register</strong></h1>
            </td>
        </tr>
        <tr>
            <td style="width: 457px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 457px"><strong>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#333333" Text="User Name:        " Width="118px"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 457px"><strong>
                <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="#333333" Text="User No  :" Width="102px"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 457px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 457px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Font-Size="Small" OnClick="Button1_Click" Text="Create" Width="79px" />
            </td>
        </tr>
        <tr>
            <td style="width: 457px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 457px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

  

</asp:Content>
