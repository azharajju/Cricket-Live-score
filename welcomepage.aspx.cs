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
    public partial class welcomepage : System.Web.UI.Page
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

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void lnkbtnlivescore_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Livescores.aspx");
        }

        protected void lnkbtnUpcomingmatches_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Upcoming Matches.aspx");
        }

        protected void lnkbtnsignin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Loginpage.aspx");

        }

        protected void lnkbtnplayerstats_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Teamplayers.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void Btnwelcome_Click(object sender, EventArgs e)
        {

        }
    }
}