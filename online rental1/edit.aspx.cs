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
    public partial class edit : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM newuser where email='" + Session["email"].ToString() + "' ", con);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows && dr.Read())
            {

                TextBox1.Text = dr["fname"].ToString();
                TextBox2.Text = dr["address"].ToString();
                TextBox3.Text = dr["mobile"].ToString();
                TextBox4.Text = dr["city"].ToString();
                TextBox5.Text = dr["pin"].ToString();

            }
            else
            {
                Response.Write("Record With This ID Not Found");
            }


            dr.Close();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE newuser SET fname='" + TextBox1.Text + "',address='" + TextBox2.Text + "',mobile='" + TextBox3.Text + "',city='" + TextBox4.Text + "',pin='" + TextBox5.Text + "' WHERE email='" + Session["email"].ToString() + "' ", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Successfully Updated')</script>");

            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("userhome.aspx");
        }
    }
}