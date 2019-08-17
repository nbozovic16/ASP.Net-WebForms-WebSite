using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace QuizOriginal
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        //conncetion
        MySqlConnection connection = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=unity1;User Id=root;password=''");

        //Login button
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            connection.Open();
            MySqlCommand cmd = new MySqlCommand("SELECT * FROM userweb WHERE Username='" + txtUsername.Text + "' AND Password='" + txtPassword.Text + "';", connection);

            MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            adapter.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                lblMessages.Text = "Login successfull !";
                lblMessages.ForeColor = Color.Green;

                
                Session["USERNAME"] = txtUsername.Text;
                Response.Redirect("~/LeaderbordPageUsers.aspx");


            }
            else
            {
                lblMessages.Text = "Login failded! Check your username or password again.";
                lblMessages.ForeColor = Color.Red;


            }
        }
    }
}