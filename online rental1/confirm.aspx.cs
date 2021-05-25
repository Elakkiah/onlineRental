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
    public partial class confirm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

       
        int a;


        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            string query = "Select Max(bid) from booking2";
            SqlCommand cmd2 = new SqlCommand(query, con);
            SqlDataReader dr2 = cmd2.ExecuteReader();
            if (dr2.Read())
            {
                string val = dr2[0].ToString();
                if (val == "")
                {

                    Label10.Text = "101";
                }
                else
                {
                    a = Convert.ToInt32(dr2[0].ToString());
                    a = a + 1;

                    Label10.Text = a.ToString();
                }
            }
            con.Close();


            SqlCommand cmd1 = new SqlCommand("SELECT *  FROM addhome where hid='" + Session["hid"].ToString() + "'  ", con);

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
                Label11.Text = dr1["email"].ToString();
                Image1.ImageUrl = "disp.aspx?hid=" + Label1.Text;
            }
            else
            {
                Response.Write("Record With This ID Not Found");
            }

            dr1.Close();




            SqlCommand cmd = new SqlCommand("SELECT cusid,fname,mobile,city FROM newuser where email='" + Session["email"].ToString() + "' ", con);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows && dr.Read())
            {
                Label6.Text = dr["cusid"].ToString();

                Label7.Text = dr["fname"].ToString();
                Label8.Text = dr["mobile"].ToString();
                Label9.Text = dr["city"].ToString();
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
            Response.Redirect("userhome.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            String status = "Requesting";

            SqlCommand cmd = new SqlCommand("insert into booking2 values('" + Label10.Text + "','" + Label1.Text + "','" + Label2.Text + "','" + Label3.Text + "','" + Label4.Text + "','" + Label5.Text + "','" + Label11.Text + "','" + Session["email"] + "','" + Label6.Text + "','" + Label7.Text + "','" + Label8.Text + "','" + Label9.Text + "','" + status + "')", con);
            Response.Write("<script>alert('Successfully Booked')</script>");

            cmd.ExecuteNonQuery();

            con.Close();
        }
    }
}