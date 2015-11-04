<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Admin_Package.aspx.cs" Inherits="Admin_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label1" runat="server" Text="Add Package"></asp:Label>
&nbsp;<table style="width: 100%">
            <tr>
                <td style="width: 142px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 142px">
                    <asp:Label ID="Label2" runat="server" Text="Cost"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                &nbsp;&nbsp; Rs.</td>
            </tr>
            <tr>
                <td align="right" style="width: 142px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 142px">
                    <asp:Label ID="Label3" runat="server" Text="No. of Job-postings"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td align="right" style="width: 142px">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Button" />
                </td>
            </tr>

        </table>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Package_Id" 
            DataSourceID="SqlDataSource1" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Package_Id" HeaderText="Package_Id" ReadOnly="True" 
                    SortExpression="Package_Id" InsertVisible="False" />
                <asp:BoundField DataField="Package_Cost" HeaderText="Package_Cost" 
                    SortExpression="Package_Cost" />
                <asp:BoundField DataField="No_Jobs" HeaderText="No_Jobs" 
                    SortExpression="No_Jobs" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ProjectdatabaseConnectionString %>" 
            SelectCommand="SELECT * FROM [Package]" 
            DeleteCommand="DELETE FROM [Package] WHERE [Package_Id] = @Package_Id" 
            InsertCommand="INSERT INTO [Package] ([Package_Cost], [No_Jobs]) VALUES (@Package_Cost, @No_Jobs)" 
            UpdateCommand="UPDATE [Package] SET [Package_Cost] = @Package_Cost, [No_Jobs] = @No_Jobs WHERE [Package_Id] = @Package_Id">
            <DeleteParameters>
                <asp:Parameter Name="Package_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Package_Cost" Type="String" />
                <asp:Parameter Name="No_Jobs" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Package_Cost" Type="String" />
                <asp:Parameter Name="No_Jobs" Type="Decimal" />
                <asp:Parameter Name="Package_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp; &nbsp;</p>

</asp:Content>

