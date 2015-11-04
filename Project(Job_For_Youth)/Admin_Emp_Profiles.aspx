<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Admin_Emp_Profiles.aspx.cs" Inherits="Admin_Emp_Profiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Employes Profiles"></asp:Label>
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="Company_Id" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="Vertical" Height="163px" Width="511px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Company_Id" HeaderText="Company_Id" ReadOnly="True" 
                    SortExpression="Company_Id" />
                <asp:BoundField DataField="Company_Name" HeaderText="Company_Name" 
                    SortExpression="Company_Name" />
                <asp:BoundField DataField="User_Name" HeaderText="User_Name" 
                    SortExpression="User_Name" />
                <asp:BoundField DataField="Que_Id" HeaderText="Que_Id" 
                    SortExpression="Que_Id" />
                <asp:BoundField DataField="Ans" HeaderText="Ans" SortExpression="Ans" />
                <asp:BoundField DataField="Contact_Person" HeaderText="Contact_Person" 
                    SortExpression="Contact_Person" />
                <asp:BoundField DataField="Company_Contact" HeaderText="Company_Contact" 
                    SortExpression="Company_Contact" />
                <asp:BoundField DataField="Company_Addres" HeaderText="Company_Addres" 
                    SortExpression="Company_Addres" />
                <asp:BoundField DataField="Company_Email" HeaderText="Company_Email" 
                    SortExpression="Company_Email" />
                <asp:BoundField DataField="Company_Details" HeaderText="Company_Details" 
                    SortExpression="Company_Details" />
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
            SelectCommand="SELECT * FROM [Company]"></asp:SqlDataSource>
        &nbsp;</p>
    <p>
    </p>

</asp:Content>

