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
    public partial class Upcoming_Matches : System.Web.UI.Page
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
                ViewState["SortOn"] = "ID";
                ViewState["SortBy"] = "Asc";

                BindTeamData();
            }
        }

            protected void BindTeamData()
        {
            // cn = new SqlConnection("Data Source=NAUSHADBAGAN-PC;User Id=sa;Password=123456;Database=CSDA1");
            strSqlCommmand = "select * from UpcomingMatche";
            da = new SqlDataAdapter(strSqlCommmand, cn);
            ds = new DataSet();
            da.Fill(ds, "UpcomingMatche");
            gridview1.DataSource = ds.Tables[0];
            gridview1.DataBind();
        }

        protected void gridview1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void gridview1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gridview1.EditIndex = e.NewEditIndex;
            BindTeamData();

        }

        protected void gridview1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridview1.EditIndex = -1;
            BindTeamData();
        }

        protected void gridview1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

          //  String I = e.Keys["T"].ToString();
             string ID = e.Keys["ID"].ToString();
            string Team1Id = ((TextBox)gridview1.Rows[e.RowIndex].Cells[3].Controls[0]).Text.Trim();
            string FirstTeam = ((TextBox)gridview1.Rows[e.RowIndex].Cells[4].Controls[0]).Text.Trim();
            string Team2Id = ((TextBox)gridview1.Rows[e.RowIndex].Cells[5].Controls[0]).Text.Trim();
            string SecondTeam = ((TextBox)gridview1.Rows[e.RowIndex].Cells[6].Controls[0]).Text.Trim();
            string Overs = ((TextBox)gridview1.Rows[e.RowIndex].Cells[7].Controls[0]).Text.Trim();
            string Place = ((TextBox)gridview1.Rows[e.RowIndex].Cells[8].Controls[0]).Text.Trim();
            string Type = ((TextBox)gridview1.Rows[e.RowIndex].Cells[9].Controls[0]).Text.Trim();
            string  Date = ((TextBox)gridview1.Rows[e.RowIndex].Cells[10].Controls[0]).Text.Trim();

            // prepare sql update Command
            strSqlCommmand = "Update UpcomingMatche Set Team1ID='" + Team1Id + "', FirstTeam='" + FirstTeam + "', Team2Id='" + Team2Id + "' , SecondTeam='" + SecondTeam + "' ,Overs='" + Overs + "', Place='" + Place + "', Type='" + Type + "', Date ='" +Date + "'";
            if (cn.State != ConnectionState.Open) ;
            cn.Open();

            cmd = new SqlCommand(strSqlCommmand, cn);
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("Team Data Updated Sucessfully!!!");
                gridview1.EditIndex = -1;

                BindTeamData();
            }
            else
            {
                Response.Write("Team Data Updation Failed!!!");

            }
            cn.Close();
        }

        protected void gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string TeamId = e.Keys["ID"].ToString();
            var

                            //preapare sql delete Command

                            strSqlCommand = "Delete From UpcomingMatche where ID=" + ID;
            if (cn.State != ConnectionState.Open)
                cn.Open();

            cmd = new SqlCommand(strSqlCommand, cn);
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("Team Data Deleted Sucessfully!!!");
                BindTeamData();

            }
            else
            {
                Response.Write("Team Data Deletion Failed!!!");

            }
            cn.Close();

        }

        protected void gridview1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridview1.PageIndex = e.NewPageIndex;
            BindTeamData();
        }

        protected void gridview1_Sorting(object sender, GridViewSortEventArgs e)
        {

        }

        protected void lnkbtnsignin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Loginpage.aspx");

        }

        protected void lnkbtnlivescore_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Upcoming Matches.aspx");
        }

        protected void lnkbtnplayerstats_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Teamplayers.aspx");

        }

        protected void lnkbtnupcoming_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Upcoming Matches.aspx");

        }
    }
}