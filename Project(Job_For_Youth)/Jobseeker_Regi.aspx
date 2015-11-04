<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Jobseeker_Regi.aspx.cs" Inherits="Jobseeker_regi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Login Details"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <table frame="void" 
                    style="border-color: #000000; width: 100%; border-style: none; border-width: 1px; background-color:Gray;">
                    <tr>
                        <td align="right" style="width: 403px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 403px">
                            <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp; &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 403px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 403px">
                            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 403px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 403px">
                            <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp; &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 403px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 403px">
                            <asp:Label ID="Label5" runat="server" Text="Sequrity Question"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp; &nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 403px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 403px">
                            <asp:Label ID="Label6" runat="server" Text="Answer"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp; &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                    ID="Label7" runat="server" Text="Personal Details"></asp:Label>
&nbsp;<table style="width: 100%; background-color:Gray;">
                    <tr>
                        <td style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            <asp:Label ID="Label8" runat="server" Text="Firstname"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp; &nbsp;
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            <asp:Label ID="Label9" runat="server" Text="Lastname"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp; &nbsp;
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            <asp:Label ID="Label11" runat="server" Text="Gender"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
                            &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" 
                                Text="Female" />
                            &nbsp; &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            <asp:Label ID="Label12" runat="server" Text="Location"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;<asp:Label ID="Label13" runat="server" Text="Country"></asp:Label>
                            &nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                                AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:Label ID="Label14" runat="server" Text="State"></asp:Label>
                            <asp:DropDownList ID="DropDownList3" runat="server" 
                                onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
                                AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:Label ID="Label15" runat="server" Text="City"></asp:Label>
                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            <asp:Label ID="Label16" runat="server" Text="Full Address"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 
                            <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            <asp:Label ID="Label17" runat="server" Text="Contact no."></asp:Label>
                        </td>
                        <td style="margin-left: 40px">
                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            <asp:Label ID="Label18" runat="server" Text="email id "></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp; &nbsp;
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                            <asp:Label ID="Label21" runat="server" Text="@"></asp:Label>
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                            <asp:Label ID="Label22" runat="server" Text=".com"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 405px">
                            &nbsp;</td>
                        <td>
                            &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Next" 
                                onclick="Button1_Click" />
&nbsp;
                            </td>
                    </tr>
                </table>
                </asp:View>
                 <asp:View ID="View2" runat="server">
                <br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label20" runat="server" Text="Education Details"></asp:Label>
                <br />
                <table style="width: 100%; background-color:Gray; ">
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label23" runat="server" Text="S.S.C"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp; &nbsp; &nbsp;
                            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                            <asp:HyperLink ID="HyperLink1" runat="server">%</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label24" runat="server" Text="H.S.C"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp; &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                            <asp:HyperLink ID="HyperLink2" runat="server">%</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label25" runat="server" Text="Graduation"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp;<asp:DropDownList ID="DropDownList5" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label26" runat="server" Text="Institute"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp;
                            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label27" runat="server" Text="Percentage"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp; &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                            <asp:HyperLink ID="HyperLink3" runat="server">%</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label28" runat="server" Text="Post Graduation"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp;<asp:DropDownList ID="DropDownList6" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label29" runat="server" Text="Institute"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label30" runat="server" Text="Percentage"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp; &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                            <asp:HyperLink ID="HyperLink4" runat="server">%</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label31" runat="server" Text="Doctorate/PhD"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp;<asp:DropDownList ID="DropDownList7" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label32" runat="server" Text="Institute"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp;<asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
&nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label33" runat="server" Text="Percentage"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp; &nbsp;<asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink5" runat="server">HyperLink</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            <asp:Label ID="Label34" runat="server" Text="Certification Course"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox21" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 406px">
                            &nbsp;</td>
                        <td>
                            &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Next" 
                                onclick="Button2_Click" />
&nbsp;</td>
                    </tr>

                </table>
            </asp:View>
          <asp:View ID="View3" runat="server">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                    ID="Label35" runat="server" Text="Professional Details"></asp:Label>
&nbsp;<table style="width:100%; background-color:Gray;">
                    <tr>
                        <td style="width: 412px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            <asp:Label ID="Label36" runat="server" Text="Category"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp;<asp:DropDownList ID="DropDownList8" runat="server" 
                                onselectedindexchanged="DropDownList8_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            <asp:Label ID="Label37" runat="server" Text="Area"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp;<asp:DropDownList ID="DropDownList9" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            <asp:Label ID="Label38" runat="server" Text="Company"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp;
                            <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            <asp:Label ID="Label39" runat="server" Text="Role"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp;
                            <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            <asp:Label ID="Label40" runat="server" Text="Experience"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList10" runat="server">
                            </asp:DropDownList>
                            &nbsp;&nbsp; &nbsp;
                            <asp:Label ID="Label44" runat="server" Text="Years and"></asp:Label>
                            <asp:DropDownList ID="DropDownList11" runat="server">
                            </asp:DropDownList>
                            <asp:Label ID="Label45" runat="server" Text="Months"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            <asp:Label ID="Label41" runat="server" Text="Annual Salary"></asp:Label>
                        </td>
                        <td>
                            &nbsp;<asp:DropDownList ID="DropDownList12" runat="server" Height="16px" 
                                Width="32px" onselectedindexchanged="DropDownList12_SelectedIndexChanged">
                            </asp:DropDownList>
                            &nbsp;&nbsp;<asp:Label ID="Label46" runat="server" Text="Lacs"></asp:Label>
                            &nbsp;&nbsp; &nbsp;<asp:DropDownList ID="DropDownList13" runat="server" Height="16px" 
                                Width="28px">
                            </asp:DropDownList>
&nbsp;<asp:Label ID="Label47" runat="server" Text="Thousands"></asp:Label>
                            <asp:RadioButton ID="RadioButton3" runat="server" Text="Rupees" />
                            <asp:RadioButton ID="RadioButton4" runat="server" Text="US Dollars" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            <asp:Label ID="Label42" runat="server" Text="Skills"></asp:Label>
                        </td>
                        <td>
                            &nbsp; &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox24" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 412px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label43" runat="server" Text="Resume"></asp:Label>
                <br />
                <table style="width: 100%;  background-color:Gray;">
                    <tr>
                        <td style="width: 418px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 418px">
                            <asp:Label ID="Label48" runat="server" Text="Uplaod Resume "></asp:Label>
                        </td>
                        <td>
                            <div ID="cvhlptxt" 
                                style="PADDING-RIGHT: 0px; MARGIN-TOP: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 10px; clear: both; font-style: normal; font-variant: normal; font-weight: normal; font-size: 11px; line-height: normal; font-family: verdana, arial; color: #6e6e6e; height: 20px;">
                                &nbsp; <font size="1">Upd MS ord (doc/rtf) file only. Max size limit 300 Kb</font></div>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 418px">
                            <asp:Label ID="Label50" runat="server" Text="Attach Resume "></asp:Label>
                        </td>
                        <td>
                            <div ID="errordisp_browsecv" class="error" 
                                style="PADDING-RIGHT: 0px; DISPLAY: none; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px">
                                <font size="1"><span ID="errormsg_browsecv" class="ol2"></span></font>
                            </div>

                                                       &nbsp;&nbsp; &nbsp;

                            <asp:FileUpload ID="FileUpload1" runat="server" />

                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 418px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 418px">
                            <asp:Label ID="Label51" runat="server" Text="Attach Resume "></asp:Label>
                        </td>
                        <td>
                            &nbsp; <b style="color: #877361">&nbsp;(If you do not have a resume right now, you may 
                            still create your account. Please remember to upload your resume as soon as 
                            possible)
                            </b></td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Create my profile" 
                    onclick="Button3_Click" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:View>
    </asp:MultiView> 

</asp:Content>

