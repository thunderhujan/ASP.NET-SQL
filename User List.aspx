<%@ Page Title="User List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User List.aspx.cs" Inherits="User_Records___Skill_Assessment.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <h1 class="text-center"><strong><span style="text-decoration: underline">USER RECORD LIST</span></strong></h1>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1"  runat="server" ShowFooter="true" AllowPaging="true" PageSize="10" AutoGenerateColumns="false"
                            DataKeyNames="UserID"
                            ShowHeaderWhenEmpty="True" 
                            OnRowEditing="GridView1_RowEditing" 
                            OnRowCancelingEdit="GridView1_RowCancelingEdit" 
                            OnRowUpdating="GridView1_RowUpdating" 
                            OnRowDeleting="GridView1_RowDeleting" AllowSorting="True" BackColor="White" Font-Overline="False" Font-Size="Large" HorizontalAlign="Center" Width="800px" >
                     <Columns>
                         <asp:BoundField DataField="UserID" HeaderText="User ID" ReadOnly="true" SortExpression="UserID" />
                                <asp:TemplateField HeaderText="User Name" SortExpression="UserName">
                                    <ItemTemplate>
                                        <asp:Label ID="lbluname" Text='<%# Eval("UserName") %>' runat="server"> </asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtuname" runat="server" Text='<%# Eval("UserName") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>                           
                                <asp:TemplateField HeaderText="User No" SortExpression="UserNo">
                                    <ItemTemplate>
                                        <asp:Label ID="lbluno" Text='<%# Eval("UserNo") %>' runat="server"> </asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtuno" runat="server" Text='<%# Eval("UserNo") %>' Width="50px"></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CreateDate" SortExpression="CreateDate">
                                    <ItemTemplate>
                                        <asp:Label ID="lbldate" Text='<%# Eval("CreateDate") %>' runat="server"> </asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtdate" runat="server" Text='<%# Eval("CreateDate") %>' Width="200px"></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                              <asp:CommandField ShowEditButton="True" ShowDeleteButton="true" />
                            </Columns>
                </asp:GridView>
                   <asp:Label ID="lblresult" runat="server"></asp:Label>

            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
