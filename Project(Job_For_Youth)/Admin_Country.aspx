<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true"
    CodeFile="Admin_Country.aspx.cs" Inherits="Admin_Country" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Add Country"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<table
            style="width: 100%">
            <tr>
                <td style="width: 136px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    <asp:Label ID="Label2" runat="server" Text="Country"></asp:Label>
                </td>
                <td>
                    &nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;
                </td>
                <td>
                    &nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="Add" 
                        onclick="Button1_Click" />
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="Country_Id" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Country_Id" HeaderText="Country_Id" ReadOnly="True" 
                    SortExpression="Country_Id" />
                <asp:BoundField DataField="Country_Name" HeaderText="Country_Name" 
                    SortExpression="Country_Name" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ProjectdatabaseConnectionString %>" 
            SelectCommand="SELECT * FROM [Country]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3"
            runat="server" Text="Add State"></asp:Label>
        &nbsp;&nbsp;<table style="width: 100%">
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    <asp:Label ID="Label4" runat="server" Text="Country"></asp:Label>
                </td>
                <td>
                    &nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
                </td>
                <td>
                    &nbsp; &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;
                </td>
                <td>
                    &nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Text="Add" 
                        onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="State_Id" DataSourceID="SqlDataSource2" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="State_Id" HeaderText="State_Id" ReadOnly="True" 
                    SortExpression="State_Id" />
                <asp:BoundField DataField="Country_Id" HeaderText="Country_Id" 
                    SortExpression="Country_Id" />
                <asp:BoundField DataField="State_Name" HeaderText="State_Name" 
                    SortExpression="State_Name" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ProjectdatabaseConnectionString %>" 
            SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:Label ID="Label6" runat="server" Text="Add City"></asp:Label>
        <table style="width: 100%">
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    <asp:Label ID="Label7" runat="server" Text="State"></asp:Label>
                </td>
                <td>
                    &nbsp; &nbsp;<asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    <asp:Label ID="Label8" runat="server" Text="City"></asp:Label>
                </td>
                <td>
                    &nbsp; &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 136px">
                    &nbsp;
                </td>
                <td>
                    &nbsp; &nbsp;<asp:Button ID="Button3" runat="server" Text="Add" 
                        onclick="Button3_Click" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="city_id" DataSourceID="SqlDataSource3" 
            ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="city_id" HeaderText="city_id" ReadOnly="True" 
                    SortExpression="city_id" />
                <asp:BoundField DataField="state_id" HeaderText="state_id" 
                    SortExpression="state_id" />
                <asp:BoundField DataField="city_name" HeaderText="city_name" 
                    SortExpression="city_name" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ProjectdatabaseConnectionString %>" 
            SelectCommand="SELECT * FROM [City]"></asp:SqlDataSource>
        &nbsp;</p>
</asp:Content>
