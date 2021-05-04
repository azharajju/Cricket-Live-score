<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add Players.aspx.cs" Inherits="Cricket_scores__Projects.Add_Players" %>

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
               height: 29px;
           }
           .auto-style2 {
               width: 38%;
           }
           .auto-style3 {
               height: 29px;
               width: 38%;
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
      <asp:LinkButton ID="lnkbtnsignin" runat="server" CssClass="active" Font-Bold="True" Font-Overline="True" Font-Size="Medium" ForeColor="Yellow" OnClick="lnkbtnsignin_Click">Sign In</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="lnkbtnaddplayers" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Medium" ForeColor="#FFFF66" OnClick="lnkbtnaddplayers_Click">Add Players</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="lnkbtnaddteams" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Medium" ForeColor="Yellow" OnClick="lnkbtnaddteams_Click">Add Teams</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="lnkbtnmatches" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Medium" Font-Underline="True" ForeColor="Yellow" OnClick="lnkbtnmatches_Click" ClientIDMode="Static">Team Matches</asp:LinkButton>
 
</nav>
   
     
</div>

 <div style="background-repeat:inherit; height:167%; width:auto;  background-image: url('/images/cricketbackground.jpg');" aria-atomic="False">

     <div class="text-align:center">
           <div style="background-repeat:inherit; height:auto; width:auto;  background-image: url('/images/cricketbackground.jpg');" aria-atomic="False">
    <div>
    
        <table style="height: 248px; width: 1073px">

          
        <asp:Label ID="Label1" runat="server"  Text-="Upcoming Matches"  TabIndex="1" BorderWidth="10px" ForeColor="#333300" Width="1156px" BackColor="#FF3300" BorderColor="#009900" Text="Add players" Font-Size="25px" Font-Bold="true"></asp:Label>
         
 <tr>
     <th class="auto-style2">
         <asp:Label ID="lblstatus" runat="server" ></asp:Label>
     </th>
 </tr>
            

        <tr>
            <th colspan="3" style="text-align:center; background-color:aqua"> Add Players </th>
        </tr>
            
        <tr>
            <th class="auto-style2" style="background-color: #66FF33"> Select Team</th>
            <th width="2%">:</th>
            <td class="auto-style1">
               <asp:DropDownList ID="ddlteam" runat="server" DataTextField="1"  Height="50px" Width="172px" AutoPostBack="true" 
                   OnSelectedIndexChanged="ddlteam_SelectedIndexChanged">
                
               </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <th class="auto-style2" style="background-color: #00FF00"> Player Name</th>
            <th>:</th>
            <td class="auto-style1">
                <asp:TextBox ID="txtplayer" runat="server"></asp:TextBox>
                `</td>
        </tr>
        <tr>
            <th class="auto-style3" style="background-color: #33CC33"> Players Total runs</th>
            <th>:</th>
            <td>
                <asp:TextBox ID="txttotal" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th class="auto-style2" style="background-color: #00FF00">Players Total Matches</th>
            <th>:</th>
            <td class="auto-style1">
               <asp:TextBox ID="txtmatches" runat="server"></asp:TextBox>
            </td>
        </tr>
            <tr>
                <th class="auto-style2" style="background-color: #00FF00"></th>
               
               
            </tr>
      
      <tr>
          <td class="auto-style2">
              <asp:HiddenField ID="hiddenfiled1" runat="server" />
          </td>
      </tr>

    </table>
        <table>
            <tr>
               <td width="2%">
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" BackColor="#009900" ForeColor="White" OnClick="btnsubmit_Click" Height="31px" Width="103px" />
                
             </td> 
 <td width="2%">
                    <asp:Button ID="btnNew" runat="server" Text="New" BackColor="#009900" ForeColor="White" OnClick="btnNew_Click" Height="26px" Width="79px" />
                
             </td>

         <td width="3%">
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" BackColor="#009900" ForeColor="White" OnClick="btnDelete_Click" Height="28px" Width="92px" />
                
             </td>
                <td width="2%">
<asp:Button ID="btnReset" runat="server" Text="Reset" BackColor="#009900" ForeColor="White" OnClick="btnReset_Click" Height="28px" Width="63px" />
                
             </td>
            </tr>
        </table>
        </div>
<asp:GridView ID="gridplayers" runat="server" AutoGenerateColumns="false" AllowSorting="True" AllowPaging="True"  BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="1033px" DataKeyNames="TeamId" 
            EmptyDataText="No Employees Data Availaable!!!" OnRowEditing="gridplayers_RowEditing"
            
     OnRowCancelingEdit="gridplayers_RowCancelingEdit" OnRowUpdating="gridplayers_RowUpdating"
             OnRowDeleting="gridplayers_RowDeleting" OnPageIndexChanging="gridplayers_PageIndexChanging" OnSorting="gridplayers_Sorting" >
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowEditButton="true" ItemStyle-Width="3%" >
<ItemStyle Width="3%"></ItemStyle>
                </asp:CommandField>
                <asp:CommandField ShowDeleteButton="true" ItemStyle-Width="5%" >
<ItemStyle Width="5%"></ItemStyle>
                </asp:CommandField>
                <asp:BoundField HeaderText="S.No" DataField="TeamId" ReadOnly="true" SortExpression="TeamId" ItemStyle-Width="12%">
<ItemStyle Width="12%"></ItemStyle>
                </asp:BoundField>
               <asp:BoundField HeaderText="SelectedTeam" DataField="SelectedTeam" SortExpression="SelectedTeam" ItemStyle-Width="20%" />
                <asp:BoundField HeaderText="Player Name" DataField="PlayerName" SortExpression="PlayerName" ItemStyle-Width="20%" >
<ItemStyle Width="20%"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField HeaderText="Player Total Runs" DataField="Totalruns" SortExpression="Totalruns" ItemStyle-Width="20%" >
<ItemStyle Width="20%"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField HeaderText="Players Total Matches" DataField="TotalMatches" SortExpression="TotalMatches" ItemStyle-Width="20%" ItemStyle-Font-Bold="true" />
                
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
         </div>
     
 </div>
        
        
    </form>
</body>
</html>
