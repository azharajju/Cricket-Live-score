<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Cricket_scores__Projects.AdminForms.WebForm1" %>

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
<%--<asp:ToolkitScriptManager ID="LoginTSM" runat="server">
    </asp:ToolkitScriptManager>--%>

     <div style="background-repeat:inherit; height:190%; width:auto;  background-image: url('/images/cricketbackground.jpg');" aria-atomic="False">



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
   
<div style="padding: 100px 0 0 300px;">


<div id="login-box" style="margin-top: 20px; background-color: #3399FF;">
    
<H2>Admin Login PAGE</H2>

<br />
<br />
    
<div id="login-box-name" style="margin-top:20px;">UserName:</div>
    
    <div id="login-box-field" style="margin-top:20px;">
 <asp:TextBox runat="server" ID="txtusername" CssClass="form-login" autocomplete="off" autocompletetype="None" xmlns:asp="#unknown"></asp:TextBox>                                    
</div>
<br />
<br />
    
    <div id="login-box-password">Password:</div>
    <div id="login-box-field2" style="margin-top:20px;">
        
        <asp:TextBox runat="server" ID="txtpassword" CssClass="form-login2" TextMode="Password" autocomplete="off" autocompletetype="None" xmlns:asp="#unknown">

        </asp:TextBox>

     </div>
   
<br />
<br />
<br />
<br />




<%--<a href="#"><img src="GenericImages/login-btn.png" width="103" height="42" style="margin-left:200px;" /></a>--%>
 <asp:Button ID="LoginButton" runat="server" CssClass="bg_button_login" onclick="LoginButton_Click" style="margin-left:200px;"/> 

   
    </div>
    </div>
    </form>
    </body>
    </html>