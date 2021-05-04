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
    public partial class Dropdownlisttest : System.Web.UI.Page
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
                BindTeam();
                refreshdata();
            }
        }
        void BindTeam()

        {
            strSqlCommmand = "Select * From Team";
            da = new SqlDataAdapter(strSqlCommmand, cn);
            ds = new DataSet();
            da.Fill(ds, "Team");
            ddlteam.DataSource = ds.Tables["Team"];
            ddlteam.DataTextField = "TeamName";
            ddlteam.DataValueField = "TeamID";
            ddlteam.DataBind();
            ddlteam.Items.Insert(0, new ListItem("Select", "0"));


        }



        public void refreshdata()
        {

            cn.Open();

            SqlCommand cmd = new SqlCommand("select * from PlayersInfo", cn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            cn.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();



        }


        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                
                DropDownList DropDownList1 = (e.Row.FindControl("DropDownList1") as DropDownList);
                if(DropDownList1!=null)
                {
                    SqlCommand cmd = new SqlCommand("select * from Team", cn);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);

                    DropDownList1.DataSource = dt;
                    DropDownList1.DataTextField = "TeamName";
                    DropDownList1.DataValueField = "TeamName";
                    DropDownList1.DataBind();
                    DropDownList1.Items.Insert(0, new ListItem("--Selected Team--", "0"));

                    Label lblteam = (Label)e.Row.FindControl("lblteam");
                    if(lblteam != null)
                    {
                        DropDownList1.SelectedIndex = DropDownList1.Items.IndexOf(DropDownList1.Items.FindByValue(lblteam.Text));
                    }
                }


                
            }
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            refreshdata();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            GridView1.EditIndex = -1;
            refreshdata();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String TeamId = e.Keys["TeamId"].ToString();

            // DropDownList DropDownList1 = (e.Row.FindControl("DropDownList1") as DropDownList);
            string SelectedTeam = ((DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList1")).SelectedItem.Value;
            string PlayerName = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text.Trim();
            string TotalRuns = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text.Trim();
            string TotalMatches = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text.Trim();
            //tring SelectedTeam =(DropDownList)gridplayers[e.RowIndex].


            // prepare sql update Command
            strSqlCommmand = "Update PlayersInfo set SelectedTeam=@SelectedTeam, PlayerName=@PlayerName, TotalRuns=@TotalRuns TotalMatches=@TotalMatches where TeamID=@TeamID";
            //strSqlCommmand = "Update PlayersInfo Set SelectedTeam='" + SelectedTeam + "', PlayerName='" + PlayerName + "', TotalRuns='" + TotalRuns + "' , TotalMatches='" + TotalMatches + "'";

            if (cn.State != ConnectionState.Open) ;
            cn.Open();

            cmd = new SqlCommand(strSqlCommmand, cn);
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("Team Data Updated Sucessfully!!!");
                GridView1.EditIndex = -1;
                refreshdata();
            }
            else
            {
                Response.Write("Team Data Updation Failed!!!");

            }
            cn.Close();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}