<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Admin_Jobs.aspx.cs" Inherits="Admin_Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <p>
        &nbsp;</p>
    <asp:Panel ID="Panel1" runat="server" Height="256px" style="margin-left: 40px" 
        Width="225px">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/Admin_Posted_Jobs.aspx">Posted Jobs</asp:HyperLink>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/Admin_Applied_Jobs.aspx">Applied Jobs</asp:HyperLink>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="~/Admin_Saved_Jobs.aspx">Saved Jobs</asp:HyperLink>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server" 
            NavigateUrl="~/Admin_Selected_Cands.aspx">Selected Candidates</asp:HyperLink>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink5" runat="server" 
            NavigateUrl="~/Admin_Saved_Cands.aspx">Saved Candidates</asp:HyperLink>
    </asp:Panel>
    <p>
    </p>

</asp:Content>

