<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true"
    CodeFile="Admin_Applied_Jobs.aspx.cs" Inherits="Admin_Applied_Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Applied Jobs"></asp:Label>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Applied_id" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Applied_id" HeaderText="Applied_id" ReadOnly="True" 
                    SortExpression="Applied_id" />
                <asp:BoundField DataField="Candidate_id" HeaderText="Candidate_id" 
                    SortExpression="Candidate_id" />
                <asp:BoundField DataField="Jobpost_id" HeaderText="Jobpost_id" 
                    SortExpression="Jobpost_id" />
                <asp:BoundField DataField="Applied_date" HeaderText="Applied_date" 
                    SortExpression="Applied_date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ProjectdatabaseConnectionString %>" 
            DeleteCommand="DELETE FROM [Job_Appliad] WHERE [Applied_id] = @Applied_id" 
            InsertCommand="INSERT INTO [Job_Appliad] ([Applied_id], [Candidate_id], [Jobpost_id], [Applied_date]) VALUES (@Applied_id, @Candidate_id, @Jobpost_id, @Applied_date)" 
            SelectCommand="SELECT * FROM [Job_Appliad]" 
            UpdateCommand="UPDATE [Job_Appliad] SET [Candidate_id] = @Candidate_id, [Jobpost_id] = @Jobpost_id, [Applied_date] = @Applied_date WHERE [Applied_id] = @Applied_id">
            <DeleteParameters>
                <asp:Parameter Name="Applied_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Applied_id" Type="Int32" />
                <asp:Parameter Name="Candidate_id" Type="Int32" />
                <asp:Parameter Name="Jobpost_id" Type="Int32" />
                <asp:Parameter Name="Applied_date" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Candidate_id" Type="Int32" />
                <asp:Parameter Name="Jobpost_id" Type="Int32" />
                <asp:Parameter Name="Applied_date" Type="DateTime" />
                <asp:Parameter Name="Applied_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>
