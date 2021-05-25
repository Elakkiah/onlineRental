using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;


namespace online_rental1
{
    public partial class Book : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd1 = new SqlCommand("SELECT *  FROM booking2 where email='" + Session["email"].ToString() + "'  ", con);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlDataReader dr1 = cmd1.ExecuteReader();
            if (dr1.HasRows && dr1.Read())
            {

                Label1.Text = dr1["hid"].ToString();

                Label2.Text = dr1["type"].ToString();
                Label3.Text = dr1["houseno"].ToString();
                Label4.Text = dr1["address"].ToString();
                Label5.Text = dr1["amount"].ToString();
                Label11.Text = dr1["semail"].ToString();
                Image1.ImageUrl = "disp.aspx?hid=" + Label1.Text;
                Label6.Text = dr1["cusid"].ToString();

                Label7.Text = dr1["name"].ToString();
                Label8.Text = dr1["mobile"].ToString();
                Label9.Text = dr1["city"].ToString();
            }
            else
            {
                Response.Write("Record With This ID Not Found");
            }

            dr1.Close();
            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            DialogResult result = MessageBox.Show("Do you Want to Cancel the house", "Confirmation", MessageBoxButtons.YesNo);
            if (result == DialogResult.Yes)
            {
                con.Open();
                String name4 = "NotBook";
                SqlCommand cmd2 = new SqlCommand("update addhome set status='" + name4 + "' where hid=" + Label1.Text + "", con);
                cmd2.ExecuteNonQuery();
                SqlCommand cmd3 = new SqlCommand("delete from booking2 where hid=" + Label1.Text + "", con);
                cmd3.ExecuteNonQuery();
                Response.Write("<script>alert('Your house to be cancelled')</script>");


                con.Close();
            }
            else
            {
                Response.Write("<script>alert('Your house to be Booked')</script>");

            }
        }


    }
}