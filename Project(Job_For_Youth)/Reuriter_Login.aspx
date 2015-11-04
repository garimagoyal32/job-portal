<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Reuriter_Login.aspx.cs" Inherits="Reuriter_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label1" runat="server" Text="Recruiter Login "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <table style="width: 100%">
            <tr>
                <td align="right" style="width: 386px">
                    <asp:Label ID="Label2" runat="server" Text="User_Name"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    &nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    <asp:Label ID="Label3" runat="server" Text="  Password  "></asp:Label>
                </td>
                <td>
                    &nbsp;
                    &nbsp;
                    <asp:TextBox ID="txtpass_r" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" />
                    &nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="~/Recruiter_ForgetPassword.aspx">Forgot password ?</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 386px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                        ID="Label5" runat="server" Text="New user ?"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink 
                        ID="HyperLink2" runat="server" NavigateUrl="~/Recruiter_Regi.aspx">Registration</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;
                    </td>
            </tr>
        </table>
        &nbsp;</p>
</asp:Content>
