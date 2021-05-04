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
    public partial class Team_Matches : System.Web.UI.Page
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
                BindTeamData();
            }





        }


        protected void BindTeamData()
        {
            // cn = new SqlConnection("Data Source=NAUSHADBAGAN-PC;User Id=sa;Password=123456;Database=CSDA1");
            strSqlCommmand = "select * from tbl_MatchInfo where TeamId in (select max(TeamId) from tbl_MatchInfo)";
            da = new SqlDataAdapter(strSqlCommmand, cn);
            ds = new DataSet();
            da.Fill(ds, "tbl_MatchInfo");
            GridviewTeams1.DataSource = ds.Tables[0];
            GridviewTeams1.DataBind();
        }
        protected void txtovers_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridviewTeams1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridviewTeams1.EditIndex = e.NewEditIndex;
            BindTeamData();

        }

        protected void GridviewTeams1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridviewTeams1.EditIndex = -1;
            BindTeamData();

        }

        protected void GridviewTeams1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String TeamId = e.Keys["TeamId"].ToString();

            string FirstTeam = ((TextBox)GridviewTeams1.Rows[e.RowIndex].Cells[3].Controls[0]).Text.Trim();
            string SecondTeam = ((TextBox)GridviewTeams1.Rows[e.RowIndex].Cells[4].Controls[0]).Text.Trim();
            string Date = ((TextBox)GridviewTeams1.Rows[e.RowIndex].Cells[5].Controls[0]).Text.Trim();
            string Players = ((TextBox)GridviewTeams1.Rows[e.RowIndex].Cells[6].Controls[0]).Text.Trim();
            string Overs = ((TextBox)GridviewTeams1.Rows[e.RowIndex].Cells[7].Controls[0]).Text.Trim();
            string Place = ((TextBox)GridviewTeams1.Rows[e.RowIndex].Cells[8].Controls[0]).Text.Trim();
            string Type = ((TextBox)GridviewTeams1.Rows[e.RowIndex].Cells[9].Controls[0]).Text.Trim();

            // prepare sql update Command
             strSqlCommmand = "Update tbl_MatchInfo Set FirstTeam='" + FirstTeam + "', SecondTeam='" + SecondTeam + "',  Players='" + Players + "' , Overs='" + Overs + "', Place='" + Place + "', Type='" + Type + "', Date='" + Date + "'";
            // strSqlCommmand = "Update tbl_MatchInfo set FirstTeam=@FirstTeam, SecondTeam=@SecondTeam, Date=@Date , Players=@Players , Overs=@Overs, Place=@Place , Type=@Type";

            //cmd = new SqlCommand(strSqlCommmand, cn);
            //cmd.Parameters.AddWithValue("FirstTeam", FirstTeam);
            //cmd.Parameters.AddWithValue("SecondTeam", SecondTeam);
            //cmd.Parameters.AddWithValue("Date", Date);
            //cmd.Parameters.AddWithValue("Players", Players);
            //cmd.Parameters.AddWithValue("Overs", Overs);
            //cmd.Parameters.AddWithValue("Place", Place);
            //cmd.Parameters.AddWithValue("Type", Type);

            cmd = new SqlCommand(strSqlCommmand, cn);
            if (cn.State != ConnectionState.Open)
            cn.Open();

           
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("Team Data Updated Sucessfully!!!");
                GridviewTeams1.EditIndex = -1;

                BindTeamData();
            }
            else
            {
                Response.Write("Team Data Updation Failed!!!");

            }
            cn.Close();
        }

        protected void GridviewTeams1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string TeamId = e.Keys["TeamId"].ToString();
            var

             //preapare sql delete Command
             strSqlCommand = "Delete From tbl_MatchInfo where TeamId=" + TeamId;
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

        protected void GridviewTeams1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridviewTeams1.PageIndex = e.NewPageIndex;
            BindTeamData();

        }

        protected void GridviewTeams1_Sorting(object sender, GridViewSortEventArgs e)
        {
            ViewState["SortOn"] = e.SortExpression;
            if (ViewState["SortBy"].ToString() == "Asc") ViewState["SortBy"] = "Desc";

            else

                ViewState["SortBy"] = "Asc";

            BindTeamData();



        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            strSqlCommmand = "Update tbl_MatchInfo  Set FirstTeam=@FirstTeam ,SecondTeam=@SecondTeam,Date=@Date,Players=@Players,Overs=@Overs,Type=@Type,Place=@Place,Where TeamId=@TeamId";
            da.UpdateCommand = new SqlCommand(strSqlCommmand, cn);
            // da.UpdateCommand.Parameters.Add("@TeamId", SqlDbType.Int, "TeamId");
            da.UpdateCommand.Parameters.Add("@FirstTeam", SqlDbType.VarChar, 50, "FirstTeam");
            da.UpdateCommand.Parameters.Add("@SecondTeam", SqlDbType.VarChar, 50, "SecondTeam");
            da.UpdateCommand.Parameters.Add("@Date", SqlDbType.VarChar, 50, "Date");
            da.UpdateCommand.Parameters.Add("@Players", SqlDbType.VarChar, 50, "Players");
            da.UpdateCommand.Parameters.Add("@Overs", SqlDbType.VarChar, 50, "Overs");
            da.UpdateCommand.Parameters.Add("@Type", SqlDbType.VarChar, 50, "Type");
            da.UpdateCommand.Parameters.Add("@Place", SqlDbType.VarChar, 50, "Place");
            // da.UpdateCommand.Parameters.Add("@Tinnumber", SqlDbType.VarChar, 50, "Tinnumber");
            SqlParameter pItemId = da.UpdateCommand.Parameters.Add("@TeamId", SqlDbType.Int);
            pItemId.SourceColumn = "TeamId";
            pItemId.SourceVersion = DataRowVersion.Original;
            //edit an existing row
            DataRow[] dr1 = ds.Tables["tbl_MatchInfo"].Select("TeamId= " + comphidden.Value);
            dr1[0]["FirstTeam"] = txtteam.Text.Trim();
            dr1[0]["SecondTeam"] = txtteam2.Text.Trim();
            dr1[0]["Date"] = txtdate.Text.Trim();
            dr1[0]["Players"] = txtplayers.Text.Trim();
            dr1[0]["Overs"] = txtovers.Text;
            dr1[0]["Type"] = txttype.Text.Trim();
            dr1[0]["Place"] = txtplace.Text.Trim();
            //  dr1[0]["Tinnumber"] = txttinnumber.Text.Trim();

            int rowaffected1 = da.Update(ds, "tbl_MatchInfo");
            if (rowaffected1 > 0)
            {
                btnsave.Text = "Save";
                lblstatus.Text = "<b style='color:green'>Update Sucessfully!!!</b>";
                BindTeamData();
            }
            else
            {
                lblstatus.Text = "<b style='color:red'>Updation Failed!!!</b>";

            }

        }

        protected void NewButton_Click(object sender, EventArgs e)
        {
        txtteam.Text = txtteam2.Text = txtdate.Text =
       txtplayers.Text = txtovers.Text = txttype.Text = txtplace.Text = string.Empty;

        }

        //protected void SubmitButton_Click(object sender, EventArgs e)
        //{
        //    Button btnName = sender as Button;
        //    switch (btnName.Text)
        //    {
        //        case "Save":
        //            DataRow dr = ds.Tables["tbl_MatchInfo"].NewRow();
        //            //Assigning values to new row
        //            dr["Team1"] = txtteam.Text.Trim();
        //            dr["Team2"] = txtteam2.Text.Trim();
        //            dr["Date"] = txtdate.Text.Trim();
        //            dr["Players"] = txtplayers.Text.Trim();
        //            dr["Overs"] = txtovers.Text.Trim();
        //            dr["Matchtype"] = txttype.Text.Trim();
        //            dr["Place"] = txtplace.Text.Trim();
        //          //  dr["Tinnumber"] = txttinnumber.Text.Trim();
        //            ds.Tables["tbl_MatchInfo"].Rows.Add(dr);
        //            int rowaffected = da.Update(ds, "tbl_MatchInfo");
        //            if (rowaffected > 0)
        //            {
        //              txtteam.Text = txtteam2.Text = txtdate.Text =
        //               txtplayers.Text = txtovers.Text = txttype.Text = txtplace.Text  = string.Empty;

        //                BindTeamData();
        //                lblstatus.Text = "Data Saved Sucessfully ";
        //            }
        //            else
        //            {
        //                Console.WriteLine("Company Details Insertion Failed");
        //            }
        //            break;
        //        case "Update":
        //            //ur update Code
        //            strSqlCommmand = "Update tbl_MatchInfo  Set FirstTeam=@FirstTeam ,SecondTeam=@SecondTeam,DateofMatch=@DateofMatch,Players=@Players,Overs=@Overs,MatchType=@MatchType,Place=@Place,Where TeamId=@TeamId";
        //            da.UpdateCommand = new SqlCommand(strSqlCommmand, cn);
        //            da.UpdateCommand.Parameters.Add("@FirstTeam", SqlDbType.VarChar, 50, "Team1");
        //            da.UpdateCommand.Parameters.Add("@SecondTeam", SqlDbType.VarChar, 50, "Team2");
        //            da.UpdateCommand.Parameters.Add("@DateofMatch", SqlDbType.VarChar, 50, "Date");
        //            da.UpdateCommand.Parameters.Add("@Players", SqlDbType.VarChar, 50, "Players");
        //            da.UpdateCommand.Parameters.Add("@Overs", SqlDbType.VarChar, 50, "Overs"); 
        //            da.UpdateCommand.Parameters.Add("@Place", SqlDbType.VarChar, 50, "Place");
        //            da.UpdateCommand.Parameters.Add("@MatchType", SqlDbType.VarChar, 50, "Type");
        //            // da.UpdateCommand.Parameters.Add("@Tinnumber", SqlDbType.VarChar, 50, "Tinnumber");
        //            SqlParameter pItemId = da.UpdateCommand.Parameters.Add("@CompanyId", SqlDbType.Int);
        //            pItemId.SourceColumn = "TeamId";
        //            pItemId.SourceVersion = DataRowVersion.Original;
        //            //edit an existing row
        //            DataRow[] dr1 = ds.Tables["tbl_MatchInfo"].Select("TeamId= " + comphidden.Value);
        //            dr1[0]["Team1"] =txtteam.Text.Trim();
        //            dr1[0]["Team2"] = txtteam2.Text.Trim();
        //            dr1[0]["Date"] = txtdate.Text.Trim();
        //            dr1[0]["Players"] = txtplayers.Text.Trim();
        //            dr1[0]["Overs"] = txtovers.Text;
        //            dr1[0]["Matchedtype"] = txttype.Text.Trim();
        //            dr1[0]["Place"] = txtplace.Text.Trim();
        //          //  dr1[0]["Tinnumber"] = txttinnumber.Text.Trim();

        //            int rowaffected1 = da.Update(ds, "tbl_MatchInfo");
        //            if (rowaffected1 > 0)
        //            {
        //                btnsave.Text = "Save";
        //                lblstatus.Text = "<b style='color:green'>Update Sucessfully!!!</b>";
        //                BindTeamData();
        //            }
        //            else
        //            {
        //                lblstatus.Text = "<b style='color:red'>Updation Failed!!!</b>";

        //            }
        //            break;
        //    }
        //}

        protected void GridviewTeams1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            btnsave.Text = "Update";
            int empid = Convert.ToInt32(e.CommandArgument.ToString());
            strSqlCommmand = "Select * from tbl_MatchInfo Where TeamId=@TeamId";
            if (cn.State != ConnectionState.Open)
                cn.Open();
            cmd = new SqlCommand(strSqlCommmand, cn);
            cmd.Parameters.AddWithValue("TeamId", empid);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                comphidden.Value = dr["TeamId"].ToString();
                txtteam.Text = dr["Firstteam"].ToString();
                txtteam2.Text = dr["Secondteam"].ToString();
                txtdate.Text = dr["Date"].ToString();
                txtplayers.Text = dr["Players"].ToString();
                txtovers.Text = dr["Overs"].ToString();
                txtplace.Text = dr["Place"].ToString();
                txttype.Text = dr["Matchedtype"].ToString();
                // txttinnumber.Text = dr["Tinnumber"].ToString();

            }
            cn.Close();
        }

        protected void btnsave_Click(object sender, EventArgs e)

        {

            Button btnName = sender as Button;
            switch (btnName.Text)
            {
                case "Save":
                    //DataRow dr = ds.Tables["tbl_MatchInfo"].NewRow();
                    // //Assigning values to new row
                    //// dr["TeamId"] = txtteamId.Text.Trim();
                    // dr["FirtsTeam"] = txtteam.Text.Trim();
                    // dr["SecondTeam"] = txtteam2.Text.Trim();
                    // dr["Date"] = txtdate.Text.Trim();
                    // dr["Players"] = txtplayers.Text.Trim();
                    // dr["Overs"] = txtovers.Text.Trim();
                    // dr["Place"] = txtplace.Text.Trim();
                    // dr["Type"] = txttype.Text.Trim();

                    // ds.Tables["tbl_MatchInfo"].Rows.Add(dr);
                    // int rowaffected = da.Update(ds, "tbl_MatchInfo");
                    // if (rowaffected > 0)
                    // {
                    //     txtteam.Text = txtteam2.Text = txtdate.Text =
                    //      txtplayers.Text = txtovers.Text = txttype.Text = txtplace.Text = string.Empty;

                    //     BindTeamData();
                    //     lblstatus.Text = "Data Saved Sucessfully ";
                    // }
                    // else
                    // {
                    //     Console.WriteLine("Company Details Insertion Failed");
                    // }

                    strSqlCommmand = "Insert Into tbl_MatchInfo(FirstTeam,SecondTeam,Date,Players,Overs, Place,Type)Values( '" + txtteam.Text.Trim() + "', '" + txtteam2.Text.Trim() + "','" + txtdate.Text.Trim() + "' , '" + txtplayers.Text.Trim() + "' ,'" + txtovers.Text.Trim() + "' ,'" + txtplace.Text.Trim() + "' , '" + txttype.Text.Trim() + "')";

                    if (cn.State != ConnectionState.Open)
                        cn.Open();
                    cmd = new SqlCommand();

                    cmd.CommandText = strSqlCommmand;
                    cmd.Connection = cn;
                    int rowAffected = cmd.ExecuteNonQuery();
                    if (rowAffected > 0)
                    {



                        txttype.Text = txtplace.Text = txtplayers.Text = txtdate.Text = txtovers.Text = txtteam.Text = txtteam2.Text = string.Empty;

                        BindTeamData();

                        lblstatus.Text = "<b style='color:green'> Players Deatils has Been Added Sucessfullly!!!>";
                    }


                    else
                    {
                        Console.WriteLine("Players Details Insertion Failed");
                    }

                    cn.Close();
                    break;
                case "Update":
                    //ur update Code
                    strSqlCommmand = "Update tbl_MatchInfo  Set FirstTeam=@FirstTeam ,SecondTeam=@SecondTeam,Date=@Date,Players=@Players,Overs=@Overs,Type=@Type,Place=@Place,Where TeamId=@TeamId";
                    da.UpdateCommand = new SqlCommand(strSqlCommmand, cn);
                    // da.UpdateCommand.Parameters.Add("@TeamId", SqlDbType.Int, "TeamId");
                    da.UpdateCommand.Parameters.Add("@FirstTeam", SqlDbType.VarChar, 50, "FirstTeam");
                    da.UpdateCommand.Parameters.Add("@SecondTeam", SqlDbType.VarChar, 50, "SecondTeam");
                    da.UpdateCommand.Parameters.Add("@Date", SqlDbType.VarChar, 50, "Date");
                    da.UpdateCommand.Parameters.Add("@Players", SqlDbType.VarChar, 50, "Players");
                    da.UpdateCommand.Parameters.Add("@Overs", SqlDbType.VarChar, 50, "Overs");
                    da.UpdateCommand.Parameters.Add("@Type", SqlDbType.VarChar, 50, "Type");
                    da.UpdateCommand.Parameters.Add("@Place", SqlDbType.VarChar, 50, "Place");
                    // da.UpdateCommand.Parameters.Add("@Tinnumber", SqlDbType.VarChar, 50, "Tinnumber");
                    SqlParameter pItemId = da.UpdateCommand.Parameters.Add("@TeamId", SqlDbType.Int);
                    pItemId.SourceColumn = "TeamId";
                    pItemId.SourceVersion = DataRowVersion.Original;
                    //edit an existing row
                    DataRow[] dr1 = ds.Tables["tbl_MatchInfo"].Select("TeamId= " + comphidden.Value);
                    dr1[0]["FirstTeam"] = txtteam.Text.Trim();
                    dr1[0]["SecondTeam"] = txtteam2.Text.Trim();
                    dr1[0]["Date"] = txtdate.Text.Trim();
                    dr1[0]["Players"] = txtplayers.Text.Trim();
                    dr1[0]["Overs"] = txtovers.Text;
                    dr1[0]["Type"] = txttype.Text.Trim();
                    dr1[0]["Place"] = txtplace.Text.Trim();
                    //  dr1[0]["Tinnumber"] = txttinnumber.Text.Trim();

                    int rowaffected1 = da.Update(ds, "tbl_MatchInfo");
                    if (rowaffected1 > 0)
                    {
                        btnsave.Text = "Save";
                        lblstatus.Text = "<b style='color:green'>Update Sucessfully!!!</b>";
                        BindTeamData();
                    }
                    else
                    {
                        lblstatus.Text = "<b style='color:red'>Updation Failed!!!</b>";

                    }
                    break;
            }
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
 txtteam.Text = txtteam2.Text = txtdate.Text =
       txtplayers.Text = txtovers.Text = txttype.Text = txtplace.Text = string.Empty;


        }

        protected void btndelete_Click(object sender, EventArgs e)
        {


            strSqlCommmand = "Delete From tbl_MatchInfo where TeamId='";
            if (cn.State != ConnectionState.Open)
                cn.Open();

            cmd = new SqlCommand(strSqlCommmand, cn);
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
