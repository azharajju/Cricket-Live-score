<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teamplayers.aspx.cs" Inherits="Cricket_scores__Projects.WebForm4" %>

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
      
       <style type="text/css">
           .auto-style1 {
               height: 658px;
               width: auto;
           }
           .auto-style2 {
               width: 99%;
               height: 847px;
               margin-left: auto;
               margin-right: auto;
               padding-left: var(--bs-gutter-x, .75rem);
               padding-right: var(--bs-gutter-x, .75rem);
           }
       </style>
      
       </head>
  <body>
  
  
    <form id="form1" runat="server">
      
        <div style="background-repeat:inherit; height:50%; width:auto;  background-image: url('/images/cricketbackground.jpg');" aria-atomic="False">



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
      <asp:LinkButton ID="lnkbtnplayers" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Medium" Font-Underline="True" ForeColor="Yellow" OnClick="lnkbtnplayers_Click">Player Stats</asp:LinkButton>
 
</nav>
   
     
</div>


        <div class="auto-style2">
        
 <div style="background-repeat:inherit; background-image: url('/images/cricketbackground.jpg');" aria-atomic="False" class="auto-style1">

     <div class="text-align:center">
           
     <table>

    <asp:Label ID="Label1" runat="server"  Text-="Upcoming Matches"  TabIndex="1" BorderWidth="10px" ForeColor="#333300" Width="1156px" BackColor="#FF3300" BorderColor="#009900" Text="Team Players" Font-Size="25px" Font-Bold="true"></asp:Label>
     


     <tr>

      <th ></th>
          <th>
          <asp:Label runat="server" text-align ="center" Text="Team Players"  ForeColor="#cc6600" BackColor="#99cc00"></asp:Label>
              </th>
     </tr>
     <tr>
              <th>
                  <asp:Label ID="lblstatus" runat="server"></asp:Label>
              </th>                                                                                                                                                                                                                                                                                                                                                                                                                             
         </tr>
 </table>
        
   <asp:GridView ID="gridview1" runat="server" HeaderStyle-BackColor="#ffff00" Font-Bold ="True" Font-Size="Medium" Height="252px" Width="1235px" AutoGenerateColumns="False" DataKeyNames="TeamId" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" >
       <Columns>
           <asp:BoundField DataField="TeamId" HeaderText="TeamId" InsertVisible="False" ReadOnly="True" SortExpression="TeamId" />
           <asp:BoundField DataField="SelectedTeam" HeaderText="SelectedTeam" SortExpression="SelectedTeam" />
           <asp:BoundField DataField="PlayerName" HeaderText="PlayerName" SortExpression="PlayerName" />
           <asp:BoundField DataField="TotalRuns" HeaderText="TotalRuns" SortExpression="TotalRuns" />
           <asp:BoundField DataField="TotalMatches" HeaderText="TotalMatches" SortExpression="TotalMatches" />
       </Columns>
       <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
<HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF"></HeaderStyle>
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
       <RowStyle BackColor="White" ForeColor="#003399" />
       <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
       <SortedAscendingCellStyle BackColor="#EDF6F6" />
       <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
       <SortedDescendingCellStyle BackColor="#D6DFDF" />
       <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
      
    </div>
         </div>
        </div>
       
    </form>
</body>
</html>
