<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcomepage.aspx.cs" Inherits="Cricket_scores__Projects.welcomepage" %>

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
      
        <div style="background-repeat: repeat; height:165%; background-image: url('/images/cricketbackground.jpg');" aria-atomic="False">



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
          <li class="nav-item">
              <asp:LinkButton ID="lnkbtnsignin" runat="server" Text="SignIn" ForeColor="White"  OnClick="lnkbtnsignin_Click"></asp:LinkButton>
          </li>
          <li class="nav-item">
              <asp:LinkButton ID="lnkbtnplayerstats" runat="server" Text="Players Stats" Font-Bold="true" ForeColor="White" OnClick="lnkbtnplayerstats_Click"></asp:LinkButton>
           </li>

           <li class="nav-item">
              <asp:LinkButton ID="lnkbtnupcominmatches" runat="server" Text="Players Stats" Font-Bold="true" ForeColor="White" OnClick="lnkbtnUpcomingmatches_Click"></asp:LinkButton>
           </li>
             <li class="nav-item">
              <asp:LinkButton ID="lnkbtnlivescores" runat="server" Text="Players Stats" Font-Bold="true" ForeColor="White" OnClick="lnkbtnlivescore_Click"></asp:LinkButton>
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
      <asp:LinkButton ID="LinkButton1" runat="server" CssClass="active" Font-Bold="True" Font-Overline="True" Font-Size="Medium" ForeColor="Yellow" OnClick="lnkbtnsignin_Click">SignIn</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Medium" ForeColor="#FFFF66" OnClick="lnkbtnlivescore_Click">Live Scores</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Medium" ForeColor="Yellow">Upcoming Matches</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="lnkplayerstats" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Medium" Font-Underline="True" ForeColor="Yellow" OnClick="lnkbtnplayerstats_Click">Player Stats</asp:LinkButton>
  </div>
</nav>
   
     


         <br />
       <br />
       <br />
       <br />
       <br />
       <br />

       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Btnwelcome" runat="server" BackColor="Red" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="Yellow" Height="84px" Text="Welcome To  Cricket Live Score Matches" Width="928px" OnClick="Btnwelcome_Click" />

       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />

        </div>
 


            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
           

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </form>
 
        
</body>
</html>
