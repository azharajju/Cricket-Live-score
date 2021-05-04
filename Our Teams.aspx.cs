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
    public partial class Our_Teams : System.Web.UI.Page
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


                BindTeamsdata();
            }

        }



        protected void BindTeamsdata()
        {
            // cn = new SqlConnection("Data Source=NAUSHADBAGAN-PC;User Id=sa;Password=123456;Database=CSDA1");
            strSqlCommmand = "select * from tbl_TeamInfo";
            da = new SqlDataAdapter(strSqlCommmand, cn);
            ds = new DataSet();
            da.Fill(ds, "tbl_TeamInfo");
            Gridteam1.DataSource = ds.Tables["tbl_TeamInfo"];
            Gridteam1.DataBind();
        }





        protected void gridview1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Gridteam1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Gridteam1.PageIndex = e.NewPageIndex;
            BindTeamsdata();
        }
    }
}

