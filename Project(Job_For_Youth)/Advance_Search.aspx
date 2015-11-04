<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true"
    CodeFile="Advance_Search.aspx.cs" Inherits="Advance_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label1" runat="server" Text="Advance Search"></asp:Label>
        <br />
        <table style="width: 100%">
            <tr>
                <td align="right" style="width: 160px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    &nbsp;&nbsp; &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    <asp:Label ID="Label3" runat="server" Text="Area"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    <asp:Label ID="Label4" runat="server" Text="Post"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    <asp:Label ID="Label5" runat="server" Text="Expected Salary"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server">
                    </asp:DropDownList>
                    <asp:Label ID="Label6" runat="server" Text="To"></asp:Label>
                    &nbsp;
                    &nbsp;<asp:DropDownList ID="DropDownList5" runat="server">
                    </asp:DropDownList>
                    &nbsp;<asp:Label ID="Label7" runat="server" Text=" Rs. per month"></asp:Label>
&nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 160px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 160px" align="right">
                    <asp:Label ID="Label8" runat="server" Text="Location"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp; 
                    <asp:Label ID="Label9" runat="server" Text="Country"></asp:Label>
                    <asp:DropDownList ID="DropDownList6" runat="server">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;
                    <asp:Label ID="Label10" runat="server" Text="State"></asp:Label>
                    <asp:DropDownList ID="DropDownList7" runat="server">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;<asp:Label ID="Label11" runat="server" Text="City"></asp:Label>
                    <asp:DropDownList ID="DropDownList8" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 160px" align="right">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 160px" align="right">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
            ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="Button2" runat="server" Text="Apply For Selected Jobs" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;</p>
</asp:Content>
