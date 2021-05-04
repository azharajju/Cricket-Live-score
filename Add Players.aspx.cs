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
    public partial class Add_Players : System.Web.UI.Page
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
                BindplayersData();
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

        protected void BindplayersData()
        {
            // cn = new SqlConnection("Data Source=NAUSHADBAGAN-PC;User Id=sa;Password=123456;Database=CSDA1");
            strSqlCommmand = "select * from PlayersInfo where TeamId in (select max(TeamId) from PlayersInfo)";
            da = new SqlDataAdapter(strSqlCommmand, cn);
            ds = new DataSet();
            da.Fill(ds, "PlayersInfo");
            gridplayers.DataSource = ds.Tables[0];
            gridplayers.DataBind();
        }



        protected void ddlteam_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlteam_DataBound(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            strSqlCommmand = "Insert Into PlayersInfo(SelectedTeam, PlayerName, TotalRuns, TotalMatches)Values('" + ddlteam.SelectedItem.Text + "', '" + txtplayer.Text.Trim() + "', '" + txttotal.Text.Trim() + "'," + txtmatches.Text.Trim() + ")";

            if (cn.State != ConnectionState.Open)
                cn.Open();
            cmd = new SqlCommand();

            cmd.CommandText = strSqlCommmand;
            cmd.Connection = cn;
            int rowAffected = cmd.ExecuteNonQuery();
            if (rowAffected > 0)
            {



               txtmatches.Text = txtplayer.Text = txttotal.Text= string.Empty;
                ddlteam.SelectedIndex = 0;
                BindplayersData();

                lblstatus.Text = "<b style='color:green'> Players Deatils has Been Added Sucessfullly!!!>";
            }


            else
            {
                Console.WriteLine("Players Details Insertion Failed");
            }

            cn.Close();
        }

        protected void gridplayers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            btnsubmit.Text = "Update";
            int empid = Convert.ToInt32(e.CommandArgument.ToString());
            strSqlCommmand = "Select * from PlayersInfo Where TeamId=@TeamId";
            if (cn.State != ConnectionState.Open)
                cn.Open();
            cmd = new SqlCommand(strSqlCommmand, cn);
            cmd.Parameters.AddWithValue("TeamId", empid);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                hiddenfiled1.Value = dr["TeamId"].ToString();

                ddlteam.SelectedValue = dr["SelectedTeam"].ToString();
                txtplayer.Text = dr["PlayerName"].ToString();
                txttotal.Text = dr["TotalRuns"].ToString();
                txtmatches.Text = dr["TotalMatches"].ToString();

            }

            dr.Close();
        }

        protected void gridplayers_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridplayers.PageIndex = e.NewPageIndex;
            BindplayersData();
        }

        protected void gridplayers_RowEditing(object sender, GridViewEditEventArgs e)
        {

            gridplayers.EditIndex = e.NewEditIndex;
            BindplayersData();
        }

        protected void gridplayers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridplayers.EditIndex = -1;
            BindplayersData();


        }

        protected void ddlteam_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gridplayers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            String TeamId = e.Keys["TeamId"].ToString();

            string SelectedTeam = ((TextBox)gridplayers.Rows[e.RowIndex].Cells[3].Controls[0]).Text.Trim();
            string PlayerName = ((TextBox)gridplayers.Rows[e.RowIndex].Cells[4].Controls[0]).Text.Trim();
            string TotalRuns = ((TextBox)gridplayers.Rows[e.RowIndex].Cells[5].Controls[0]).Text.Trim();
            string TotalMatches = ((TextBox)gridplayers.Rows[e.RowIndex].Cells[6].Controls[0]).Text.Trim();
            //string SelectedTeam = ((DropDownList)gridplayers.Rows[e.RowIndex].FindControl("ddlteam")).SelectedItem.Value;


            // prepare sql update Command
            strSqlCommmand = "Update PlayersInfo Set SelectedTeam='" + SelectedTeam + "', PlayerName='" + PlayerName + "', TotalRuns='" + TotalRuns + "' , TotalMatches='" + TotalMatches + "'";

            if (cn.State != ConnectionState.Open) ;
            cn.Open();

            cmd = new SqlCommand(strSqlCommmand, cn);
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("Team Data Updated Sucessfully!!!");
                gridplayers.EditIndex = -1;
                BindplayersData();
            }
            else
            {
                Response.Write("Team Data Updation Failed!!!");

            }
            cn.Close();
        }


        protected void gridplayers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string TeamId = e.Keys["TeamId"].ToString();
            var

                            //preapare sql delete Command

                            strSqlCommand = "Delete From PlayersInfo where TeamId=" + TeamId;
            if (cn.State != ConnectionState.Open)
                cn.Open();

            cmd = new SqlCommand(strSqlCommand, cn);
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("Team Data Deleted Sucessfully!!!");
                BindplayersData();

            }
            else
            {
                Response.Write("Team Data Deletion Failed!!!");

            }
            cn.Close();
        }

        protected void gridplayers_Sorting(object sender, GridViewSortEventArgs e)
        {
            ViewState["SortOn"] = e.SortExpression;
            if (ViewState["SortBy"].ToString() == "Asc") ViewState["SortBy"] = "Desc";

            else

                ViewState["SortBy"] = "Asc";

            BindplayersData();

        }

        protected void gridplayers_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            txtmatches.Text = txtplayer.Text = txttotal.Text = string.Empty;
            ddlteam.SelectedIndex = 0;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            strSqlCommmand = "Delete From PlayersInfo where TeamId='";
            if (cn.State != ConnectionState.Open)
                cn.Open();

            cmd = new SqlCommand(strSqlCommmand, cn);
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("Team Data Deleted Sucessfully!!!");
                BindplayersData();

            }
            else
            {
                Response.Write("Team Data Deletion Failed!!!");

            }
            cn.Close();

        }
    

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtmatches.Text = txtplayer.Text = txttotal.Text = string.Empty;
            ddlteam.SelectedIndex = 0;
        }

        protected void lnkbtnsignin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Loginpage.aspx");
        }

        protected void lnkbtnaddplayers_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Add Players.aspx");
        }

        protected void lnkbtnaddteams_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Addteams.aspx");
        }

        protected void lnkbtnmatches_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Team Matches.aspx");
        }
    }
}

            
       



        