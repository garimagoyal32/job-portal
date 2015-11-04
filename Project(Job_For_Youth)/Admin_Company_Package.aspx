<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Admin_Company_Package.aspx.cs" Inherits="Admin_Company_Package" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"  Font-Size="Large"  Text="Company Packages"></asp:Label>
        </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="Comp_Package_Id" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Comp_Package_Id" HeaderText="Comp_Package_Id" 
                    ReadOnly="True" SortExpression="Comp_Package_Id" />
                <asp:BoundField DataField="Company_Id" HeaderText="Company_Id" 
                    SortExpression="Company_Id" />
                <asp:BoundField DataField="Package_Id" HeaderText="Package_Id" 
                    SortExpression="Package_Id" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ProjectdatabaseConnectionString %>" 
            SelectCommand="SELECT * FROM [Company_Package]" 
            DeleteCommand="DELETE FROM [Company_Package] WHERE [Comp_Package_Id] = @Comp_Package_Id" 
            InsertCommand="INSERT INTO [Company_Package] ([Comp_Package_Id], [Company_Id], [Package_Id]) VALUES (@Comp_Package_Id, @Company_Id, @Package_Id)" 
            UpdateCommand="UPDATE [Company_Package] SET [Company_Id] = @Company_Id, [Package_Id] = @Package_Id WHERE [Comp_Package_Id] = @Comp_Package_Id">
            <DeleteParameters>
                <asp:Parameter Name="Comp_Package_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Comp_Package_Id" Type="Int32" />
                <asp:Parameter Name="Company_Id" Type="Int32" />
                <asp:Parameter Name="Package_Id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Company_Id" Type="Int32" />
                <asp:Parameter Name="Package_Id" Type="Int32" />
                <asp:Parameter Name="Comp_Package_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>


</asp:Content>

