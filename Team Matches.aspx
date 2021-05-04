<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Team Matches.aspx.cs" Inherits="Cricket_scores__Projects.Team_Matches" %>

<!DOCTYPE html>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
      
       </head>
  <body>
  
  
    <form id="form1" runat="server">
      
        <div style="background-repeat:inherit; height:780px; width:auto;  background-image: url('/images/cricketbackground.jpg');" aria-atomic="False">



  <!-- Navbar content -->
    <nav class="navbar navbar-inverse"  style="background-color:crimson";>
  <div class="container-fluid">
    <a class="my-xl-0" href="#">Cricket Scores </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      
     
    </div>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="lnkbtnsignin" runat="server" CssClass="active" Font-Bold="True" Font-Overline="True" Font-Size="Medium" ForeColor="Yellow" OnClick="lnkbtnsignin_Click">Sign In</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="lnkbtnaddplayers" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Medium" ForeColor="#FFFF66" OnClick="lnkbtnaddplayers_Click">Add Players</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="lnkbtnaddteams" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Medium" ForeColor="Yellow" OnClick="lnkbtnaddteams_Click">Add Teams</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="lnkbtnmatches" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Medium" Font-Underline="True" ForeColor="Yellow" OnClick="lnkbtnmatches_Click" ClientIDMode="Static">Team Matches</asp:LinkButton>
 
</nav>
   
    <div>
     <table style="height: 58px; width: 1247px">

            
        <asp:Label ID="Label1" runat="server"  Text-="Teams"  TabIndex="1" BorderWidth="10px" ForeColor="#333300" Width="1156px" BackColor="#FF3300" BorderColor="#009900" Text="Add players" Font-Size="25px" Font-Bold="true"></asp:Label>
         
  
         <tr>
             <th>
                 <asp:Label ID="lblstatus" runat="server" Text="Label"></asp:Label>

             </th>
         </tr>
        <tr>
            <th></th>
            <th colspan="2" style="text-align:center; background-color:aqua"> Add Teams</th>
        </tr>
        <br />
         <br />
         
       <%--  <tr>
             <th style="background-color: #FFFF00">
                 Team Id
             </th>
             <th>:</th>
             <td>
                  <asp:TextBox ID="txtteamId" runat="server" TextMode="Number" ></asp:TextBox>
             </td>--%>
            
         </tr>

        <tr>
            <th style="background-color: #FFFF00"> First Team Name</th>
            <th>:</th>
            <td class="auto-style4">
                <asp:TextBox ID ="txtteam" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th style="background-color: #FFFF00"> Second Team Name</th>
            <th>:</th>
            <td class="auto-style4">
                <asp:TextBox ID="txtteam2" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
             <th style="background-color: #FFFF00">
                 Date of Match
             </th>
             <th>:</th>
             <td class="auto-style4">
                 <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
             </td>
         </tr>
        <tr style="background-color: #FFFF00">
            <th>Players Total Matches</th>
            <th>:</th>
            <td class="auto-style4">
                <asp:TextBox ID="txtplayers" runat="server"></asp:TextBox>
            </td>
            <th style="background-color: #FFFF00">Matched Overs:</th>
            <td>
                <asp:TextBox ID="txtovers" runat="server" Text="matchovers" BackColor="Wheat" OnTextChanged="txtovers_TextChanged"></asp:TextBox>
            </td>
        </tr>
         <tr>
             <th style="background-color: #FFFF00">
                 Your Match Place
             </th>
             <th>:</th>
             <td>
                 <asp:TextBox ID="txtplace" runat="server"></asp:TextBox>

             </td>
         </tr>
          <tr>
             <th style="background-color: #FFFF00">
                 Your Match Type
             </th>
             <th>:</th>
              <td>
                  <asp:TextBox ID="txttype" runat="server"></asp:TextBox>
              </td>
              </tr>
            <tr>
                <th>

                     <asp:HiddenField ID="comphidden" runat="server" />
              
              
                </th>
               
             

            </tr>
          
      
                
 
         
    </table>
        <table>
             <tr>
                 


     
              <td>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="btnsave" runat="server" Text="Save" Height="36px" Width="69px" BackColor="#669900" ForeColor="White" OnClick="btnsave_Click" />
               </td>
                 <td>
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="btnNew" runat="server" Text="New" BackColor="#ff0000" ForeColor="#000000" Height="30px" OnClick="NewButton_Click" Width="75px" />
                 </td>
                     &nbsp;&nbsp;
                    
                  

                  <td>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="btnreset" runat="server" Text="Reset" Height="31px" Width="94px" BackColor="#99FF66" ForeColor="Black" OnClick="btnreset_Click" />
                      <td>
                           &nbsp;&nbsp;
                           <asp:Button ID="btndelete" runat="server" Text="Delete" Height="31px" Width="88px" BackColor="#0033CC" ForeColor="#99FFCC" OnClick="btndelete_Click" />

                      </td>
                    
           </td>
         </tr>
            

        </table>
             
     
       
                 
        <asp:GridView ID="GridviewTeams1" runat="server" AutoGenerateColumns="false" AllowSorting="True" AllowPaging="True"  BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="1218px" DataKeyNames="TeamId" 
            EmptyDataText="No Employees Data Availaable!!!"
             OnRowEditing="GridviewTeams1_RowEditing" OnRowCancelingEdit="GridviewTeams1_RowCancelingEdit" OnRowUpdating="GridviewTeams1_RowUpdating"
             OnRowDeleting="GridviewTeams1_RowDeleting" OnPageIndexChanging="GridviewTeams1_PageIndexChanging" OnSorting="GridviewTeams1_Sorting" >
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowEditButton="true" ItemStyle-Width="3%" >
<ItemStyle Width="3%"></ItemStyle>
                </asp:CommandField>
                <asp:CommandField ShowDeleteButton="true" ItemStyle-Width="5%" >
<ItemStyle Width="5%"></ItemStyle>
                </asp:CommandField>
                <asp:BoundField HeaderText="Team Id" DataField="TeamId" ReadOnly="true" SortExpression="TeamId" ItemStyle-Width="12%">
<ItemStyle Width="12%"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField HeaderText="First Team" DataField="FirstTeam" SortExpression="FirstTeam" ItemStyle-Width="30%" >
<ItemStyle Width="30%"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField HeaderText="Second Team" DataField="SecondTeam" SortExpression="SecondTeam" ItemStyle-Width="20%" >
<ItemStyle Width="20%"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField HeaderText="Date Of Match" DataField="Date" SortExpression="Date" ItemStyle-Width="20%" >
<ItemStyle Width="20%"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField HeaderText="Players Total Matches" DataField="Players" SortExpression="Players" ItemStyle-Width="20%" ItemStyle-Font-Bold="true" />

                <asp:BoundField HeaderText="Matches Overs" DataField="Overs" SortExpression="Overs" ItemStyle-Width="20%">
<ItemStyle Width="20%"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField HeaderText="Matched Place" DataField="Place" SortExpression="Place" ItemStyle-Width="20%" >
<ItemStyle Width="20%"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField HeaderText="Matched Type" DataField="Type" SortExpression="Type" ItemStyle-Width="20%" >
<ItemStyle Width="20%"></ItemStyle>
                </asp:BoundField>
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
