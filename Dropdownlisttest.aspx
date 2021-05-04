<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dropdownlisttest.aspx.cs" Inherits="Cricket_scores__Projects.Dropdownlisttest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
   
    <div>
    
        <table style="height: 58px; width: 645px">

          
        <asp:Label ID="Label1" runat="server"  Text-="Upcoming Matches"  TabIndex="1" BorderWidth="10px" ForeColor="#333300" Width="1156px" BackColor="#FF3300" BorderColor="#009900" Text="Add players" Font-Size="25px" Font-Bold="true"></asp:Label>
         
 <tr>
     <th>
         <asp:Label ID="lblstatus" runat="server" ></asp:Label>
     </th>
 </tr>
            

        <tr>
            <th colspan="3" style="text-align:center; background-color:aqua"> Add Players </th>
        </tr>
            
        <tr>
            <th width ="15%"> Select Team</th>
            <th width="2%">:</th>
            <td>
               <asp:DropDownList ID="ddlteam" runat="server" DataTextField="1"  Height="16px" Width="120px" AutoPostBack="true">
                   
                
               </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <th> Player Name</th>
            <th>:</th>
            <td>
                <asp:TextBox ID="txtplayer" runat="server"></asp:TextBox>
                `</td>
        </tr>
        <tr>
            <th> Players Total runs</th>
            <th>:</th>
            <td>
                <asp:TextBox ID="txttotal" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>Players Total Matches</th>
            <th>:</th>
            <td>
               <asp:TextBox ID="txtmatches" runat="server"></asp:TextBox>
            </td>
        </tr>
            <tr>
                <th></th>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="#009900" ForeColor="White" OnClick="btnSubmit_Click" />
                
             

            </tr>
      
      <tr>
          <td>
              <asp:HiddenField ID="hiddenfiled1" runat="server" />
          </td>
      </tr>

    </table>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px"  OnRowEditing="GridView1_RowEditing"  OnRowCancelingEdit="GridView1_RowCancelingEdit" 
            OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting"
             
            CellPadding="3"  GridLines="Vertical"   
            onrowdatabound="GridView1_RowDataBound" Height="361px" Width="983px">  
            <AlternatingRowStyle BackColor="#DCDCDC" />  
            <Columns>  
              <asp:CommandField ShowEditButton="true" ItemStyle-Width="3%" >
<ItemStyle Width="3%"></ItemStyle>
                </asp:CommandField>
                <asp:CommandField ShowDeleteButton="true" ItemStyle-Width="5%" >
<ItemStyle Width="5%"></ItemStyle>
                </asp:CommandField>
                <asp:TemplateField HeaderText="Team ID">  
                    <EditItemTemplate>  
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TeamId") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("TeamId") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Players Name">  
                    <EditItemTemplate>  
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PlayerName") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                    <ItemTemplate>  
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("PlayerName") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Selected Team">  
                    <EditItemTemplate>  
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>  
                    </EditItemTemplate>  
                    <ItemTemplate>  
                        <asp:DropDownList ID="DropDownList1" runat="server">  
                        </asp:DropDownList>  
                    </ItemTemplate>  
                    <ItemTemplate>  
                        <asp:Label ID="lblteam" runat="server" Text='<%# Bind("PlayerName") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Total Runs ">  
                    <EditItemTemplate>  
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("TotalRuns") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                    <ItemTemplate>  
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("TotalRuns") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                   <asp:TemplateField HeaderText="Total Matches ">  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txtmatch" runat="server" Text='<%# Bind("TotalMatches") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                    <ItemTemplate>  
                        <asp:Label ID="lblmatch" runat="server" Text='<%# Bind("TotalMatches") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
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

    </div>
    </form>
</body>
</html>
