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
    public partial class view : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["hid"] != null)
            {

                string name = Request.QueryString["hid"];

                // string constr = "Server=SampleServer; Database=SampleDB; uid=test; pwd=test"; 


                SqlCommand cmd = new SqlCommand("SELECT *  FROM addhome where hid='" + name + "' ", con);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows && dr.Read())
                {

                    Label1.Text = dr["hid"].ToString();
                    Session["hid"] = Label1.Text;
                    Label2.Text = dr["category"].ToString();
                    Label3.Text = dr["type"].ToString();
                    Label4.Text = dr["houseno"].ToString();
                    Label5.Text = dr["address"].ToString();
                    Label6.Text = dr["amount"].ToString();
                    Label7.Text = dr["status"].ToString();
                    Label8.Text = dr["email"].ToString();
                    Image1.ImageUrl = "disp.aspx?hid=" + Label1.Text;
                }
                else
                {
                    Response.Write("Record With This ID Note Found");
                }
                dr.Close();

                SqlCommand cmd1 = new SqlCommand("SELECT *  FROM newadmin where email='" + Label8.Text + "' ", con);


                SqlDataReader dr1 = cmd1.ExecuteReader();
                if (dr1.HasRows && dr1.Read())
                {


                    Label9.Text = dr1["name"].ToString();
                    Label10.Text = dr1["address"].ToString();
                    Label11.Text = dr1["mobile"].ToString();
                }
                else
                {
                    Response.Write("Record With This ID Note Found");
                }
                con.Close();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("confirm.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userhome.aspx");
        }
    }
}