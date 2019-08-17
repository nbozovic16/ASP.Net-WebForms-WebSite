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
    public partial class LeaderbordPage : System.Web.UI.Page
    {


        //Connection
        MySqlConnection connection = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=unity1;User Id=root;password=''");


        protected void Page_Load(object sender, EventArgs e)
        {
            
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







        


    }
}