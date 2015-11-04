<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true"
    CodeFile="Admin_Posted_Jobs.aspx.cs" Inherits="Admin_Posted_Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Posted Jobs"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="Jobpost_Id" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Jobpost_Id" HeaderText="Jobpost_Id" ReadOnly="True" 
                    SortExpression="Jobpost_Id" />
                <asp:BoundField DataField="Company_Id" HeaderText="Company_Id" 
                    SortExpression="Company_Id" />
                <asp:BoundField DataField="Job_Title" HeaderText="Job_Title" 
                    SortExpression="Job_Title" />
                <asp:BoundField DataField="Area_Id" HeaderText="Area_Id" 
                    SortExpression="Area_Id" />
                <asp:BoundField DataField="City_Id" HeaderText="City_Id" 
                    SortExpression="City_Id" />
                <asp:BoundField DataField="Post" HeaderText="Post" SortExpression="Post" />
                <asp:BoundField DataField="No_Vacancy" HeaderText="No_Vacancy" 
                    SortExpression="No_Vacancy" />
                <asp:BoundField DataField="Start_Date" HeaderText="Start_Date" 
                    SortExpression="Start_Date" />
                <asp:BoundField DataField="End_Date" HeaderText="End_Date" 
                    SortExpression="End_Date" />
                <asp:BoundField DataField="Expr_Req" HeaderText="Expr_Req" 
                    SortExpression="Expr_Req" />
                <asp:BoundField DataField="Skills_Req" HeaderText="Skills_Req" 
                    SortExpression="Skills_Req" />
                <asp:BoundField DataField="Edu_Req" HeaderText="Edu_Req" 
                    SortExpression="Edu_Req" />
                <asp:BoundField DataField="Basic_Req" HeaderText="Basic_Req" 
                    SortExpression="Basic_Req" />
                <asp:BoundField DataField="Salary_Min" HeaderText="Salary_Min" 
                    SortExpression="Salary_Min" />
                <asp:BoundField DataField="Salary_max" HeaderText="Salary_max" 
                    SortExpression="Salary_max" />
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
            SelectCommand="SELECT * FROM [Job_Post]"></asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>
