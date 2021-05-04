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
    public partial class Addteams : System.Web.UI.Page
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
               
                BindTeam();
                BindTeamsdata();
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

        protected void BindTeamsdata()
        {
            // cn = new SqlConnection("Data Source=NAUSHADBAGAN-PC;User Id=sa;Password=123456;Database=CSDA1");
            strSqlCommmand = "select * from tbl_TeamInfo where TeamId in (select max(TeamId) from tbl_TeamInfo)";
            da = new SqlDataAdapter(strSqlCommmand, cn);
            ds = new DataSet();
            da.Fill(ds, "tbl_TeamInfo");
            gridteam.DataSource = ds.Tables[0];
            gridteam.DataBind();
        }
   
           
            
            
        

        protected void gridteam_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gridteam.EditIndex = e.NewEditIndex;
            
            BindTeamsdata();
        }

        protected void gridteam_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridteam.EditIndex = -1;
            BindTeamsdata();
        }

        protected void gridteam_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            String TeamId = e.Keys["TeamId"].ToString();

            //string SelectedTeam = ((DropDownList)gridteam.Rows[e.RowIndex].FindControl("ddlteams")).SelectedItem.Value;
           string SelectedTeam = ((TextBox)gridteam.Rows[e.RowIndex].Cells[3].Controls[0]).Text.Trim();
            string TeamName = ((TextBox)gridteam.Rows[e.RowIndex].Cells[4].Controls[0]).Text.Trim();
            string ShortName = ((TextBox)gridteam.Rows[e.RowIndex].Cells[5].Controls[0]).Text.Trim();
            string TotalMatches = ((TextBox)gridteam.Rows[e.RowIndex].Cells[6].Controls[0]).Text.Trim();
          


            // prepare sql update Command
            strSqlCommmand = "Update tbl_TeamInfo Set SelectedTeam='" + SelectedTeam + "', TeamName='" + TeamName + "', ShortName='" + ShortName + "' , TotalMatches='" + TotalMatches + "'";

            if (cn.State != ConnectionState.Open);
            cn.Open();

            cmd = new SqlCommand(strSqlCommmand, cn);
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("Team Data Updated Sucessfully!!!");
                gridteam.EditIndex = -1;

                BindTeamsdata();
            }
            else
            {
                Response.Write("Team Data Updation Failed!!!");

            }
            cn.Close();

        }

        protected void gridteam_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string TeamId = e.Keys["TeamId"].ToString();
            var

              //preapare sql delete Command

             strSqlCommand = "Delete From tbl_TeamInfo where TeamId=" + TeamId;
            if (cn.State != ConnectionState.Open)
                cn.Open();

            cmd = new SqlCommand(strSqlCommand, cn);
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("Team Data Deleted Sucessfully!!!");
                BindTeamsdata();

            }
            else
            {
                Response.Write("Team Data Deletion Failed!!!");

            }
            cn.Close();
        }

        protected void gridteam_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridteam.PageIndex = e.NewPageIndex;
            BindTeamsdata();
        }

        protected void gridteam_Sorting(object sender, GridViewSortEventArgs e)
        {
            ViewState["SortOn"] = e.SortExpression;
            if (ViewState["SortBy"].ToString() == "Asc") ViewState["SortBy"] = "Desc";

            else

                ViewState["SortBy"] = "Asc";

            BindTeamsdata();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            strSqlCommmand = "Insert Into tbl_TeamInfo(SelectedTeam, TeamName, ShortName, Totalmatches)Values('" + ddlteam.SelectedItem.Text + "', '" + txtteam.Text.Trim() + "', '" + txtshortname.Text.Trim() + "'," + txtmatches.Text.Trim() + ")";

            if (cn.State != ConnectionState.Open)
                cn.Open();
            cmd = new SqlCommand();

            cmd.CommandText = strSqlCommmand;
            cmd.Connection = cn;
            int rowAffected = cmd.ExecuteNonQuery();
            if (rowAffected > 0)
            {



                txtmatches.Text = txtteam.Text = txtshortname.Text = string.Empty;
                ddlteam.SelectedIndex = 0;
                BindTeamsdata();

                lblstatus.Text = "<b style='color:green'> Team Deatils has Been Added Sucessfullly!!!>";
            }

            else
            {
                Console.WriteLine("Teams Details Insertion Failed");
            }

            cn.Close();
        }

       
            
            
        

        protected void gridteam_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            btnsubmit.Text = "Update";
            int empid = Convert.ToInt32(e.CommandArgument.ToString());
            strSqlCommmand = "Select * from tbl_TeamInfo Where TeamId=@TeamId";
            if (cn.State != ConnectionState.Open)
                cn.Open();
            cmd = new SqlCommand(strSqlCommmand, cn);
            cmd.Parameters.AddWithValue("TeamId", empid);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Hiddenfiled1.Value = dr["TeamId"].ToString();

                ddlteam.SelectedValue = dr["SelectedTeam"].ToString();
                txtteam.Text = dr["TeamName"].ToString();
                txtshortname.Text = dr["ShortName"].ToString();
                txtmatches.Text = dr["Totalmatches"].ToString();

            }

           cn.Close();
        }

        protected void gridteam_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void Btnnew_Click(object sender, EventArgs e)
        {
            txtmatches.Text = txtteam.Text = txtshortname.Text = string.Empty;
            ddlteam.SelectedIndex = 0;
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtmatches.Text = txtteam.Text = txtshortname.Text = string.Empty;
            ddlteam.SelectedIndex = 0;
        }

        protected void gridteam_RowDataBound(object sender, GridViewRowEventArgs e)
        {

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