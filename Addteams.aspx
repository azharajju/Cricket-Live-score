<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addteams.aspx.cs" Inherits="Cricket_scores__Projects.Addteams" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    
      <style type="text/css">
          .auto-style1 {
              width: 15%;
          }
          .auto-style2 {
              width: 9%;
          }
      </style>

    
  </head>
  <body>
  
  
    <form id="form1" runat="server">
      
        <div style="background-repeat:inherit; height:164%; width:auto;  background-image: url('/images/cricketbackground.jpg');" aria-atomic="False">



  <!-- Navbar content -->
    <nav class="navbar navbar-inverse"  style="background-color:crimson";>
  <div class="container-fluid">
    <a class="my-xl-0" href="#">Cricket Scores</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" style="color:white" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
        </li>
        
      </ul>
     
    </div>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lnkbtnsignin" runat="server" CssClass="active" Font-Bold="True" Font-Overline="True" Font-Size="Medium" ForeColor="Yellow" OnClick="lnkbtnsignin_Click">Sign In</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="lnkbtnaddplayers" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Medium" ForeColor="#FFFF66" OnClick="lnkbtnaddplayers_Click">Add Players</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="lnkbtnaddteams" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Medium" ForeColor="Yellow" OnClick="lnkbtnaddteams_Click">Add Teams</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="lnkbtnmatches" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="Medium" Font-Underline="True" ForeColor="Yellow" OnClick="lnkbtnmatches_Click" ClientIDMode="Static">Team Matches</asp:LinkButton>
</nav>
   
     



   <div class="container">
                            
                            
                <asp:Label ID="Label1" runat="server" Text-="Teams" TabIndex="1" BorderWidth="10px" ForeColor="#333300" Width="1156px" BackColor="#FF3300" BorderColor="#009900"  Font-Size="25px" Font-Bold="true"></asp:Label>
                   
       <br />
       <br />     
<div class="row">
           <div class="col-md-6 col-md-4">           

            <table style="height: 210px; width: 693px">
                

               

                <tr>
                    <th colspan="3" style="text-align: center; background-color: aqua"></th>
                </tr>
                <tr>
                    <th class="auto-style2">
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblstatus" runat="server"></asp:Label>
                    </th>
                </tr>
                <tr>
                    <th style="background-color: #FFFF00" class="auto-style2">Select Team</th>
                    <th width="2%">:</th>
                    <td class="auto-style1">
                        <asp:DropDownList ID="ddlteam" runat="server" DataTextField="1" Height="30px" Width="187px"></asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <th background-color: #FFFF00 style="background-color: #FFFF00" class="auto-style2">Your Team Name</th>
                    <th>:</th>
                    <td class="auto-style1">
                        <br />
                        <asp:TextBox ID="txtteam" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th background-color: #FFFF00 style="background-color: #FFFF00" class="auto-style2">Team Short Name</th>
                    <th>:</th>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtshortname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th background-color: #FFFF00 style="background-color: #FFFF00" class="auto-style2">Players Total Matches</th>
                    <th>:</th>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtmatches" runat="server"></asp:TextBox>
                    </td>
                </tr>
                

                <tr>
                    <td class="auto-style2">
                        <asp:HiddenField ID="Hiddenfiled1" runat="server" />

                    </td>
                </tr>

            </table>
               </div>

    <table>
        <div class="col-md-6 col-md-4">
        <tr>
            <td width="3%">

                &nbsp;&nbsp;

                <asp:Button ID="btnsubmit" runat="server" Text="Submit" BackColor="#009900" ForeColor="White" OnClick="btnsubmit_Click" />
            &nbsp;</td>
            <td width="3%">
                 &nbsp;&nbsp;
                 <asp:Button ID="BtnNew" runat="server" Text="New" BackColor="#FF9900" Width="56px" OnClick="Btnnew_Click" />
            &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <br />
&nbsp;<asp:Button ID="btnreset" runat="server" Text="Reset" BackColor="Red" BorderColor="#99FF99" ForeColor="White" Width="64px" OnClick="btnreset_Click" />
            </td>
        </tr>
    </table>
    </div>
                        
    <div class="col-lg-12 col-lg-4">
               
            <br />       
            <asp:GridView ID="gridteam" runat="server" AllowSorting="True" AllowPaging="True" OnSelectedIndexChanging="gridteam_SelectedIndexChanging" AutoGenerateColumns="false" DataKeyNames="TeamId"
                EmptyDataText="No Employees Data Availaable!!!" OnRowEditing="gridteam_RowEditing" OnRowDataBound="gridteam_RowDataBound" OnRowCommand="gridteam_RowCommand"
                OnRowCancelingEdit="gridteam_RowCancelingEdit" OnRowUpdating="gridteam_RowUpdating"
                OnRowDeleting="gridteam_RowDeleting" OnPageIndexChanging="gridteam_PageIndexChanging" OnSorting="gridteam_Sorting"
                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="1033px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>

                    <asp:CommandField ShowEditButton="true" ItemStyle-Width="3%">
                        <ItemStyle Width="3%"></ItemStyle>
                    </asp:CommandField>
                    <asp:CommandField ShowDeleteButton="true" ItemStyle-Width="5%">
                        <ItemStyle Width="5%"></ItemStyle>
                    </asp:CommandField>
                    <asp:BoundField HeaderText="S.No" DataField="TeamId" />
                    <asp:BoundField HeaderText="Selected Team" DataField="SelectedTeam" SortExpression="SelectedTeam"></asp:BoundField>



                    <asp:BoundField HeaderText="Team Name" DataField="TeamName" />
                    <asp:BoundField HeaderText="ShortName" DataField="ShortName" />
                    <asp:BoundField HeaderText="Total Matches" DataField="TotalMatches" />
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
       </div>
    </form>
</body>
</html>
