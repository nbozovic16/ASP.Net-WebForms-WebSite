using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace QuizOriginal
{
    public partial class LeaderbordPageGuests : System.Web.UI.Page
    {
        //Connection
        MySqlConnection connection = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=unity1;User Id=root;password=''");


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] != null)
            {
                lblSuccess.Text = "Welcome, " + Session["USERNAME"].ToString() + "";
            }
            else
            {
                Response.Redirect("~/LoginPage.aspx");
            }

            //View score
            connection.Open();
            MySqlCommand cmd = new MySqlCommand("SELECT userid,score FROM scores");
            MySqlDataAdapter adapter = new MySqlDataAdapter();
            cmd.Connection = connection;
            adapter.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            GridScores.DataSource = dt;
            GridScores.DataBind();
            if (GridScores.Rows.Count > 0)
            {

            }
            else
            {
                Response.Write("<script>alert('Error loading data');</script>");
            }


            //Show commnets
            Show();

        }

        //Post commnets
        protected void btnPost_Click(object sender, EventArgs e)
        {
            //connection.Open();

            string name = Session["USERNAME"].ToString();

            MySqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "";
            cmd.CommandText = "insert into comment (Name,Comment) values('" + name + "', '" + txtCommnet.Text + "')";
            cmd.ExecuteNonQuery();

            Response.Redirect(Request.Url.AbsoluteUri);

            connection.Close();

        }

        protected void Show()
        {

            MySqlCommand cmd = new MySqlCommand("SELECT * FROM comment");
            MySqlDataAdapter adapter = new MySqlDataAdapter();
            cmd.Connection = connection;
            adapter.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adapter.Fill(ds, "commnet");
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }







        //Log out button
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("~/HomePage.aspx");
        }


    }
}