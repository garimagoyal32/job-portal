<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Post_Job.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="White" Text="Post Job" Font-Underline="True"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<table style="width: 100%">
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Job Title"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Post"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label4" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Category"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label5" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Area"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px; height: 26px;">
                    </td>
                <td style="height: 26px">
                    </td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label6" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Location"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp; &nbsp;<asp:DropDownList ID="DropDownList3" runat="server" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label7" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Minimum Experience"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    &nbsp;<asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList7" runat="server" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    &nbsp;
                    &nbsp;
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label8" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Salary"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    &nbsp; 
                    <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    &nbsp;&nbsp;<asp:DropDownList ID="DropDownList9" runat="server" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    &nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label9" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Education"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    &nbsp;<asp:DropDownList ID="DropDownList10" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    </td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label10" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Skills"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label11" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Basic Requirement"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label12" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="No. of Vacancy"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    &nbsp;<asp:DropDownList ID="DropDownList11" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    </td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    <asp:Label ID="Label13" runat="server" Font-Size="Small" ForeColor="White" 
                        Text="Date"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    &nbsp; 
                    &nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Post" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 400px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;</p>


</asp:Content>

