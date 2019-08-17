using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Threading.Tasks;
using System.Timers;


namespace QuizOriginal
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        
        //connection
        MySqlConnection connection = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=unity1;User Id=root;password=''");

        //button Register now
        protected void btnRegisterNow_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text != "" && txtPassword.Text != "" && txtName.Text != "" && txtEmail.Text != "" && txtConfirmPassword.Text != "")
            {
                if (txtPassword.Text == txtConfirmPassword.Text)
                {



                    connection.Open();

                    MySqlCommand cmd = connection.CreateCommand();

                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "";
                    cmd.CommandText = "insert into userweb (Username,Password,Name,Email) values('" + txtUsername.Text + "', '" + txtPassword.Text + "', '" + txtName.Text + "', '" + txtEmail.Text + "')";

                    cmd.ExecuteNonQuery();

                    connection.Close();




                    lblMessages.Text = "Registration Successfull";
                    lblMessages.ForeColor = Color.Green;
                    Response.Redirect("~/LoginPage.aspx");

                }
                else
                {
                    lblMessages.ForeColor = Color.Red;
                    lblMessages.Text = "Passwords do not match";
                }
            }
            else
            {
                lblMessages.ForeColor = Color.Red;
                lblMessages.Text = "All fields are mandatory";
            }
        }
    }
}