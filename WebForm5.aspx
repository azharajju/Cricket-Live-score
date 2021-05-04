<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="Cricket_scores__Projects.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


     <link href="../Css/CssGeneric/CompanyInfo.css" rel="stylesheet" type="text/css" />
   
    
   
   
    <title>CompanyInfo</title>
    <link href="../Css/ValidationCss/template.css" rel="stylesheet" type="text/css" />
    <link href="../Css/ValidationCss/validationEngine.jquery.css" rel="stylesheet" type="text/css" />


</asp:Content>

<style type="text/css">.footer{margin-left:-10px;}
     .scrollcss
 {
overflow:auto;

width:1095px;
height:237px;
margin-top:10px;
margin-left:30px;
}
</style>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="CompInfoUP" runat="server">
                    <ContentTemplate>
                        <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        <div class="row">
 
     <div style="margin-top:-30px; border:solid 1px #c3c3c3; height:600px;">
       
         
            <div class="title_div" >
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
            <td class="auto-style1">
               <asp:DropDownList ID="ddlteam" runat="server" DataTextField="1"  Height="16px" Width="120px" AutoPostBack="true" 
                   OnSelectedIndexChanged="ddlteam_SelectedIndexChanged">
                
               </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <th> Player Name</th>
            <th>:</th>
            <td class="auto-style1">
                <asp:TextBox ID="txtplayer" runat="server"></asp:TextBox>
                `</td>
        </tr>
        <tr>
            <th> Players Total runs</th>
            <th>:</th>
            <td class="auto-style1">
                <asp:TextBox ID="txttotal" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>Players Total Matches</th>
            <th>:</th>
            <td class="auto-style1">
               <asp:TextBox ID="txtmatches" runat="server"></asp:TextBox>
            </td>
        </tr>
            <tr>
                <th></th>

                </tr>
                </table>
    <table>
        <tr>
               <td width="2%">
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" BackColor="#009900" ForeColor="White" OnClick="btnsubmit_Click"/>
                
             </td> 
<td class="auto-style1">
                    <asp:Button ID="btnNew" runat="server" Text="New" BackColor="#009900" ForeColor="White" OnClick="btnNew_Click"
                         Height="26px" Width="47px" />
                
             </td>

         <td width="3%">
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" BackColor="#009900" ForeColor="White" OnClick="btnDelete_Click" Height="28px" Width="56px" />
                
             </td>
                <td width="2%">
<asp:Button ID="btnReset" runat="server" Text="Reset" BackColor="#009900" ForeColor="White" OnClick="btnReset_Click" Height="28px" Width="69px" />
                
             </td>

        </tr>
        <tr>
        
           
          <td>
              <asp:HiddenField ID="hiddenfiled1" runat="server" />
          </td>
      </tr>
    </table>
                
               
        <asp:GridView ID="gridplayers" runat="server"  AutoGenerateColumns="false" AllowSorting="True" AllowPaging="True"  BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="1033px" DataKeyNames="TeamId" 
            EmptyDataText="No Employees Data Availaable!!!" OnRowEditing="gridplayers_RowEditing"
              OnRowCancelingEdit="gridplayers_RowCancelingEdit" OnRowUpdating="gridplayers_RowUpdating"
             OnRowDeleting="gridplayers_RowDeleting" OnPageIndexChanging="gridplayers_PageIndexChanging" OnSorting="gridplayers_Sorting">
        
   
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

    </ContentTemplate>   
  </asp:UpdatePanel>
                       

                   
</asp:Content>