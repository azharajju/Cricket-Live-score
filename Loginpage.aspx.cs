
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Cricket_scores__Projects
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

        protected void btnplayers_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Add Players.aspx");
        }

        protected void btnlivescores_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Add Players.aspx");
        }

        protected void btnstats_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Add Players.aspx");
        }

        protected void txtpassword_TextChanged(object sender, EventArgs e)
        {

        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            
        }

        protected void btnlivescores_Click1(object sender, EventArgs e)
        {

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
                //  Response.Redirect("~/Add Players.aspx");
            }
            else
            {
                Response.Write("<b style='color:red'>Login is Not Sucessfully!!</b>");
            }
            cn.Close();
        }
    }
}