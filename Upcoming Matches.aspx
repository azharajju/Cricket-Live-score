<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upcoming Matches.aspx.cs" Inherits="Cricket_scores__Projects.Upcoming_Matches" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    
  </head>
  <body>
  
  
    <form id="form1" runat="server">
      
        <div style="background-repeat:inherit; height:164%; width:auto;  background-image: url('/images/cricketbackground.jpg');" aria-atomic="False">



  <!-- Navbar content -->
    <nav class="navbar navbar-inverse"  style="background-color:crimson";>
  <div class="container-fluid">
    <a class="my-xl-0" href="#">Cricket Scores </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" style="color:white" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
          
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        
      </ul>
     
    </div>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="lnkbtnsignin" runat="server" CssClass="active" Font-Bold="True" Font-Overline="True" Font-Size="Medium" ForeColor="Yellow" OnClick="lnkbtnsignin_Click">SignIn</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="lnkbtnlivescore" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Medium" ForeColor="#FFFF66" OnClick="lnkbtnlivescore_Click">Live Scores</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="lnkbtnupcoming" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Medium" ForeColor="Yellow" OnClick="lnkbtnupcoming_Click">Upcoming Matches</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="lnkbtnplayers" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Medium" Font-Underline="True" ForeColor="Yellow" OnClick="lnkbtnplayerstats_Click">Player Stats</asp:LinkButton>
  </div>
</nav>
   
     




     <div class="text-align:center">

 <table>

     <tr>
         <td>
             <br />
         </td>
     </tr>

    <asp:Label ID="Label1" runat="server"  Text-="Upcoming Matches"  TabIndex="1" BorderWidth="10px" ForeColor="#333300" Width="1156px" BackColor="#FF3300" BorderColor="#009900" Text="Upcoming Matches" Font-Size="25px" Font-Bold="True" BorderStyle="Solid"></asp:Label>


     <tr>

      <th></th>
          <th>
          <asp:Label runat="server" text-align ="center" Text="Matched Scheduled"  ForeColor="#cc6600" BackColor="#99cc00"></asp:Label>
              </th>
     </tr>
     <tr>
                                                                                                                                                                                                                                                                                                                                                                                                                                           
         <td>
             <br />
         </td>
                                                                                                                                                                                                                                                                                                                                                                                                                                           
         <asp:GridView ID="gridview1" runat="server" HeaderStyle-BackColor="#ffff00" Font-Bold ="True" Font-Size="Medium" Height="358px"
              AutoGenerateColumns="False" OnSelectedIndexChanged="gridview1_SelectedIndexChanged" AllowSorting="True" AllowPaging="True" 
             EmptyDataText="No Employees Data AVAILABLE!!" Width="99%" OnRowEditing="gridview1_RowEditing" OnRowCancelingEdit="gridview1_RowCancelingEdit" OnRowUpdating="gridview1_RowUpdating" 
             OnRowDeleting="gridview1_RowDeleting" OnPageIndexChanging="gridview1_PageIndexChanging" OnSorting="gridview1_Sorting" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                             
             <AlternatingRowStyle BackColor="#CCCCCC" />
                             
             <Columns>
                 <asp:CommandField ShowEditButton="true" ItemStyle-Width="3%" >
<ItemStyle Width="5%"></ItemStyle>
                 </asp:CommandField>
                  <asp:CommandField ShowDeleteButton="true" ItemStyle-Width="5%" >
<ItemStyle Width="3%"></ItemStyle>
                 </asp:CommandField>
                 <asp:BoundField HeaderText="ID" DataField="ID" ReadOnly="true" SortExpression="ID" />
                 <asp:BoundField HeaderText="First Team Id" DataField="Team1Id" SortExpression="Team1Id"  />
                 <asp:BoundField HeaderText="First Team" DataField="FirstTeam"  SortExpression="FirstTeam" />
                 <asp:BoundField HeaderText="Secod Team Id" DataField="Team2ID"  SortExpression="Team2ID" />
                 <asp:BoundField HeaderText="Second Team" DataField="SecondTeam" SortExpression="SecondTeam" />
                 <asp:BoundField HeaderText="Overs" DataField="Overs" SortExpression="Overs" />
                 <asp:BoundField HeaderText="Place" DataField="Place" SortExpression="Place" />
                 <asp:BoundField HeaderText="Type" DataField="Type" SortExpression="Type" />
                 <asp:BoundField HeaderText="Date" DataField="Date" SortExpression="Date" />
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
        </div>
        
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 
 
   
      
    </form>
</body>
</html>
