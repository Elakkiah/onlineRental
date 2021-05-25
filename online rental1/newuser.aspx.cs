using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace online_rental1
{
    public partial class newuser : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Calendar1.SelectedDate = DateTime.Now;
            }
            int a;

            conn.Open();
            string query = "Select Max(cusid) from newuser";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string val = dr[0].ToString();
                if (val == "")
                {
                    TextBox1.Text = "101";
                }
                else
                {
                    a = Convert.ToInt32(dr[0].ToString());
                    a = a + 1;
                    TextBox1.Text = a.ToString();
                }
            }
            conn.Close();
        }


       

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();



            SqlCommand cmd = new SqlCommand("Insert into newuser values ('" + TextBox1.Text + "','" + FNAME.Text + "','" + Calendar1.SelectedDate + "','" + ADDRESS.Text + "','" + PHONENO.Text + "','" + txtcity.Text + "'," + Pin.Text + ",'" + MAIL.Text + "','" + PASSWORD.Text + "')", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Login sucess')</script>");

            Response.Write("<script>alert('Login sucess')</script>");



            if (this.IsValid)
            {
                Label1.Text = " Customer Id " + TextBox1.Text + " has been registered on this application " +
     Calendar1.SelectedDate.ToLongDateString() + " . " + FNAME.Text + " can login to view house ";


                Label3.Text += " and " + MAIL.Text + " will be Registered.";
            }


        }
    

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}