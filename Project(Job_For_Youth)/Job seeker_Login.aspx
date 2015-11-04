<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Job seeker_Login.aspx.cs" Inherits="Job_seeker_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label1" runat="server" Text="Jobseeker Login "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        &nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
&nbsp;<table style="width: 100%">
            <tr>
                <td style="width: 386px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    <asp:Label ID="Label2" runat="server" Text="User_Name"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    &nbsp;<asp:TextBox ID="txtpass_js" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    &nbsp;</td>
                <td>
                    &nbsp;
                    &nbsp;<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    &nbsp;</td>
                <td>
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" Height="24px" onclick="Button1_Click" 
                        Text="Login" Width="59px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="~/jobseeker_ForgetPassword.aspx">Forgot password ?</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;<asp:Label ID="Label5" runat="server" Text="New User?"></asp:Label>
                    &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" 
                        NavigateUrl="~/Jobseeker_regi.aspx">Registration</asp:HyperLink>
                    &nbsp;
                    </td>
            </tr>
        </table>
        &nbsp;</p>

    </asp:Content>
