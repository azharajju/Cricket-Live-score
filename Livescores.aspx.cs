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
    public partial class Livescores : System.Web.UI.Page
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

                Bindlivescore();
            }
        }


        protected void Bindlivescore()
        {
            // cn = new SqlConnection("Data Source=NAUSHADBAGAN-PC;User Id=sa;Password=123456;Database=CSDA1");
            strSqlCommmand = "select * from Livescore";
            da = new SqlDataAdapter(strSqlCommmand, cn);
            ds = new DataSet();
            da.Fill(ds, "Livescore");
            gridlivescore.DataSource = ds.Tables[0];
            gridlivescore.DataBind();
        }


        protected void gridlivescore_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gridlivescore_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gridlivescore.EditIndex = e.NewEditIndex;
            Bindlivescore();
        }

        protected void gridlivescore_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridlivescore.EditIndex = -1;
            Bindlivescore();
        }

        protected void gridlivescore_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            string TeamId = e.Keys["TeamId"].ToString();
            var

                            //preapare sql delete Command

                            strSqlCommand = "Delete From Livescore where TeamId=" + TeamId;
            if (cn.State != ConnectionState.Open)
                cn.Open();

            cmd = new SqlCommand(strSqlCommand, cn);
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("Team Data Deleted Sucessfully!!!");
                Bindlivescore();

            }
            else
            {
                Response.Write("Team Data Deletion Failed!!!");

            }
            cn.Close();
        }

        protected void gridlivescore_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridlivescore.PageIndex = e.NewPageIndex;
            Bindlivescore();
        }

        protected void gridlivescore_Sorting(object sender, GridViewSortEventArgs e)
        {

            
        }

        protected void gridlivescore_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String TeamId = e.Keys["TeamId"].ToString();

            
            string FirstTeam = ((TextBox)gridlivescore.Rows[e.RowIndex].Cells[3].Controls[0]).Text.Trim();
            string Total1 = ((TextBox)gridlivescore.Rows[e.RowIndex].Cells[4].Controls[0]).Text.Trim();
            string Team1Overs = ((TextBox)gridlivescore.Rows[e.RowIndex].Cells[5].Controls[0]).Text.Trim();
            string SecondTeam = ((TextBox)gridlivescore.Rows[e.RowIndex].Cells[6].Controls[0]).Text.Trim();
            string Total2 = ((TextBox)gridlivescore.Rows[e.RowIndex].Cells[7].Controls[0]).Text.Trim();
            string Team2Overs = ((TextBox)gridlivescore.Rows[e.RowIndex].Cells[8].Controls[0]).Text.Trim();
            //string SelectedTeam = ((DropDownList)gridplayers.Rows[e.RowIndex].FindControl("ddlteam")).SelectedItem.Value;


            // prepare sql update Command
            strSqlCommmand = "Update Livescore Set FirstTeam='" + FirstTeam + "', Total1='" + Total1 + "', Team1Overs ='" + Team1Overs + "' , SecondTeam='" + SecondTeam + "' , Total2='" + Total2 + "' , Team2Overs='" + Team2Overs +"'";

            if (cn.State != ConnectionState.Open)
            cn.Open();

            cmd = new SqlCommand(strSqlCommmand, cn);
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("Team Data Updated Sucessfully!!!");
                gridlivescore.EditIndex = -1;
                Bindlivescore();
            }
            else
            {
                Response.Write("Team Data Updation Failed!!!");

            }
            cn.Close();
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
