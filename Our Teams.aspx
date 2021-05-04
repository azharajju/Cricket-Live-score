<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Our Teams.aspx.cs" Inherits="Cricket_scores__Projects.Our_Teams" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table>

    <asp:Label ID="Label1" runat="server"  Text-="Upcoming Matches"  TabIndex="1" BorderWidth="10px" ForeColor="#333300" Width="1156px" BackColor="#FF3300" BorderColor="#009900" Text="Our Teams" Font-Size="25px" Font-Bold="true"></asp:Label>


     <tr>

      <th></th>
          <th>
          <asp:Label runat="server" text-align ="center" Text="Teams"  ForeColor="#cc6600" BackColor="#99cc00"></asp:Label>
              </th>
     </tr>
     <tr>
                                                                                                                                                                                                                                                                                                                                                                                                                                           
         <td>
             <br />
         </td>
                                                                                                                                                                                                                                                                                                                                                                                                                                           
         <asp:GridView ID="Gridteam1" runat="server" HeaderStyle-BackColor="#ffff00" Font-Bold ="True" Font-Size="Medium" Height="252px"  DataKeyNames="TeamId" OnPageIndexChanging="Gridteam1_PageIndexChanging"
             OnSelectedIndexChanged="gridview1_SelectedIndexChanged" Width="100%" AutoGenerateColumns="False" EmptyDataText="No Data Available!!!"
              BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
             <AlternatingRowStyle BackColor="#CCCCCC" />
             <Columns>
                 <asp:BoundField HeaderText="S.No"  DataField="TeamId"/>
                 <asp:BoundField HeaderText="Selected Team" DataField="SelectedTeam" />
                 <asp:BoundField HeaderText="Team Name" DataField="TeamName" />
                 <asp:BoundField HeaderText="Team Short Name" DataField="ShortName" />
                 <asp:BoundField HeaderText="Total Matches" DataField="Totalmatches" />
             </Columns>
             <FooterStyle BackColor="#CCCCCC" />
<HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>
             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#808080" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#383838" />
         </asp:GridView>
     </tr>
 </table>
   
    </div>
    </form>
</body>
</html>
