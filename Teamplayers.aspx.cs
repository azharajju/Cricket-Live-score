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
    public partial class WebForm4 : System.Web.UI.Page
    {

        SqlCommand cmd;
        SqlConnection cn = null;
        SqlDataAdapter da = null;
        DataSet ds = null;
        int rp = 0;
        string strSqlCommmand = string.Empty;
        SqlCommandBuilder bldr = null;
        protected void Page_Load(object sender, EventArgs e)
        {


            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);
            if (!Page.IsPostBack)
            {
                //ViewState["SortOn"] = "CompanyId";
                //ViewState["SortBy"] = "Asc";
               
                BindplayersData();
            }
        }

        


        protected void BindplayersData()
        {
            // cn = new SqlConnection("Data Source=NAUSHADBAGAN-PC;User Id=sa;Password=123456;Database=CSDA1");
            strSqlCommmand = "select * from PlayersInfo";
            da = new SqlDataAdapter(strSqlCommmand, cn);
            ds = new DataSet();
            da.Fill(ds, "PlayersInfo");
            gridview1.DataSource = ds.Tables["PlayersInfo"];
            gridview1.DataBind();
        }

        protected void ddlplayers_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindplayersData();
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



