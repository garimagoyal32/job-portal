<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Saved_Jobs.aspx.cs" Inherits="Saved_Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="My Saved Jobs"></asp:Label>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="Saved_Job_Id" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CheckBoxField DataField="hr" HeaderText="Apply_Jobs" SortExpression="hr" />
                <asp:BoundField DataField="Saved_Job_Id" HeaderText="Saved_Job_Id" 
                    ReadOnly="True" SortExpression="Saved_Job_Id" />
                <asp:BoundField DataField="Candidate_Id" HeaderText="Candidate_Id" 
                    SortExpression="Candidate_Id" />
                <asp:BoundField DataField="Jobpost_Id" HeaderText="Jobpost_Id" 
                    SortExpression="Jobpost_Id" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ProjectdatabaseConnectionString %>" 
            DeleteCommand="DELETE FROM [Saved_Job] WHERE [Saved_Job_Id] = @Saved_Job_Id" 
            InsertCommand="INSERT INTO [Saved_Job] ([Saved_Job_Id], [Candidate_Id], [Jobpost_Id]) VALUES (@Saved_Job_Id, @Candidate_Id, @Jobpost_Id)" 
            SelectCommand="SELECT * FROM [Saved_Job]" 
            UpdateCommand="UPDATE [Saved_Job] SET [Candidate_Id] = @Candidate_Id, [Jobpost_Id] = @Jobpost_Id WHERE [Saved_Job_Id] = @Saved_Job_Id">
            <DeleteParameters>
                <asp:Parameter Name="Saved_Job_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Saved_Job_Id" Type="Int32" />
                <asp:Parameter Name="Candidate_Id" Type="Int32" />
                <asp:Parameter Name="Jobpost_Id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Candidate_Id" Type="Int32" />
                <asp:Parameter Name="Jobpost_Id" Type="Int32" />
                <asp:Parameter Name="Saved_Job_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="Button1" runat="server" Text="Button" />
        &nbsp;
        &nbsp;</p>
</asp:Content>
