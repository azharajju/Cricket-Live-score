using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace Cricket_scores__Projects.AdminForms
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        SqlConnection cn = null;
        SqlCommand cmd = null;
        SqlDataAdapter da = null;
        DataSet ds = null;
        string strSqlcommand = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            strSqlcommand = "Insert into login(UserName, Password) Values(@UserName, @Password)";
            if (cn.State != ConnectionState.Open)
                cn.Open();
            cmd = new SqlCommand(strSqlcommand, cn);
            cmd.Parameters.AddWithValue("@UserName", txtusername.Text);
            cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("<b style='color:green'>Login is Sucessfully!!</b>");
                 Response.Redirect("~/Add Players.aspx");
            }
            else
            {
                Response.Write("<b style='color:red'>Login is Not Sucessfully!!</b>");
            }
            cn.Close();
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void lnkbtnsignin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Loginpage.aspx");
        }


        protected void lnkbtnlivescore_Click(object sender, EventArgs e)
        {


            Response.Redirect("~/Livescores.aspx");
        }
    

        protected void lnkbtnupcoming_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Upcoming Matches.aspx");
        }

        protected void lnkbtnplayers_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Teamplayers.aspx");
        }
    }
}