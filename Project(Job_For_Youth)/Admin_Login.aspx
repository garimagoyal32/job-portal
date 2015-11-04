<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true"
    CodeFile="Admin_Login.aspx.cs" Inherits="Admin_Login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 172px">
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Admin Login "></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 172px">
                <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            </td>
            <td>
                &nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 172px; height: 30px;">
            </td>
            <td style="height: 30px">
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 172px">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                &nbsp;
                <asp:TextBox ID="txtPass_a" runat="server"></asp:TextBox>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 172px">
                &nbsp;
            </td>
            <td>
                &nbsp; &nbsp;
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 172px">
                &nbsp;
            </td>
            <td>
                &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
