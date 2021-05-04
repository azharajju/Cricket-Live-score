<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Cricket_scores__Projects.AdminForms.WebForm1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>Login</title>
<link href="Css/login.css" rel="stylesheet" type="text/css" />
<%--<link href="login-box.css" rel="stylesheet" type="text/css" />--%>
</head> 

<body>

<form id="form1" runat="server">
<%--<asp:ToolkitScriptManager ID="LoginTSM" runat="server">
    </asp:ToolkitScriptManager>--%>
<div style="padding: 100px 0 0 300px;">


<div id="login-box">
    
<H2>Admin Login</H2>

<br />
<br />
<div id="login-box-name" style="margin-top:20px;">UserName:</div><div id="login-box-field" style="margin-top:20px;">
 <asp:TextBox runat="server" ID="txtusername" CssClass="form-login" autocomplete="off" autocompletetype="None" xmlns:asp="#unknown"></asp:TextBox>                                    
</div>
<br />
<br /><div id="login-box-password">Password:</div><div id="login-box-field2">
<asp:TextBox runat="server" ID="txtpassword" CssClass="form-login2" TextMode="Password" autocomplete="off" autocompletetype="None" xmlns:asp="#unknown"></asp:TextBox></div>

<br />
<br />
<br />
<br />


<%--<a href="#"><img src="GenericImages/login-btn.png" width="103" height="42" style="margin-left:200px;" /></a>--%>
 <asp:Button ID="LoginButton" runat="server" CssClass="bg_button_login" onclick="LoginButton_Click" style="margin-left:200px;"/> 

    </div>
    </form>
    </body>
    </html>