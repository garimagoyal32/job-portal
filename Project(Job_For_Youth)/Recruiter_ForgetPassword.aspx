<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true"
    CodeFile="Recruiter_ForgetPassword.aspx.cs" Inherits="Recruiter_Newpw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label
            ID="Label1" runat="server" Text="Forgot Password "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table>
            <tr>
                <td style="width: 317px">
                    &nbsp;
                </td>
                <td style="width: 183px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 317px">
                    <asp:Label ID="Label2" runat="server" Text="Sequrity Question"></asp:Label>
                </td>
                <td style="width: 183px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    &nbsp; &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 317px">
                    &nbsp;
                </td>
                <td style="width: 183px">
                    &nbsp;&nbsp; &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 317px">
                    <asp:Label ID="Label3" runat="server" Text="Answer"></asp:Label>
                </td>
                <td style="width: 183px">
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 317px">
                    &nbsp;
                </td>
                <td style="width: 183px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 317px">
                    &nbsp;
                </td>
                <td style="width: 183px">
                    <asp:Button ID="Button1" runat="server" Text="OK" OnClick="Button1_Click" />
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 317px">
                    &nbsp;
                </td>
                <td style="width: 183px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 317px">
                    &nbsp;
                </td>
                <td style="width: 183px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 317px">
                    <asp:Label ID="Label4" runat="server" Text="Your username is :"></asp:Label>
                </td>
                <td style="width: 183px">
                    &nbsp; &nbsp;<asp:Label ID="Label5" runat="server" Text="xyz"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 317px">
                    &nbsp;
                </td>
                <td style="width: 183px">
                    &nbsp; &nbsp;<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 317px">
                    <asp:Label ID="Label7" runat="server" Text="Enter new Password"></asp:Label>
                </td>
                <td style="width: 183px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp; &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 317px">
                    &nbsp;
                </td>
                <td style="width: 183px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 317px">
                    <asp:Label ID="Label8" runat="server" Text="Retype Password"></asp:Label>
                </td>
                <td style="width: 183px">
                    &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 317px">
                    &nbsp;
                </td>
                <td style="width: 183px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 317px">
                    &nbsp;
                </td>
                <td style="width: 183px">
                    &nbsp;<asp:Button ID="Button2" runat="server" Text="Set" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
