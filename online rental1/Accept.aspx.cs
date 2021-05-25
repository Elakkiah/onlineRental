using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;


namespace online_rental1
{
    public partial class Accept : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
           
           

            if (!Page.IsPostBack)
            {
                BindData();
            }

        }
        public void BindData()
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand("Select * from booking2 where semail='" + Session["email"].ToString() + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);


            GridView1.DataSource = ds;
            GridView1.DataBind();
            conn.Close();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            conn.Open();
            if (e.CommandName == "accept")
            {

                int ind;
                //ind1 = Convert.ToInt32(e.CommandArgument.ToString());
                //String name = GridView1.Rows[ind1].Cells[0].Text;
                //Label1.Text = "Roew selected" + name;

                ind = Convert.ToInt32(e.CommandArgument.ToString());
                String name = GridView1.Rows[ind].Cells[0].Text;

                String name1 = "Accept";
                SqlCommand cmd = new SqlCommand("update booking2 set status='" + name1 + "' where hid=" + name + "", conn);
                Response.Write("<script>alert('Successfully Accepted')</script>");

                int t = cmd.ExecuteNonQuery();

                if (t > 0)
                {

                    GridView1.EditIndex = -1;

                    BindData();
                }
                conn.Open();
                String name2 = "Booked";
                SqlCommand cmd2 = new SqlCommand("update addhome set status='" + name2 + "' where hid=" + name + "", conn);
                cmd2.ExecuteNonQuery();
                conn.Close();
               int ind1 = Convert.ToInt32(e.CommandArgument.ToString());
                String email = GridView1.Rows[ind1].Cells[3].Text;
                string to = email; //To address    
                string from = "spr3128@gmail.com"; //From address    
                MailMessage message = new MailMessage(from, to);

                string mailbody = "House To Be Booked <br>House ID=" + name + "";
                message.Subject = "House Status";
                message.Body = mailbody;
                message.BodyEncoding = Encoding.UTF8;
                message.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
                System.Net.NetworkCredential basicCredential1 = new
                System.Net.NetworkCredential("spr3128@gmail.com", "saranya@44");
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = basicCredential1;
                try
                {
                    client.Send(message);
                }

                catch (Exception ex)
                {
                    throw ex;
                }
            }
            if (e.CommandName == "reject")
            {
                int ind;

                //ind = Convert.ToInt32(e.CommandArgument.ToString());
                //String name = GridView1.Rows[ind].Cells[0].Text;
                //Label1.Text = "Roew selected" + name;

                ind = Convert.ToInt32(e.CommandArgument.ToString());
                String name2 = GridView1.Rows[ind].Cells[0].Text;
                String name3 = "reject";
                SqlCommand cmd1 = new SqlCommand("update booking2 set status='" + name3 + "' where hid=" + name2 + "", conn);
                Response.Write("<script>alert('Rejected')</script>");

                int t1 = cmd1.ExecuteNonQuery();
                if (t1 > 0)
                {

                    GridView1.EditIndex = -1;
                    BindData();
                }

                conn.Open();
                String name4 = "NotBook";
                SqlCommand cmd2 = new SqlCommand("update addhome set status='" + name4 + "' where hid=" + name2 + "", conn);
                cmd2.ExecuteNonQuery();
                conn.Close();
                conn.Close();

                int ind1 = Convert.ToInt32(e.CommandArgument.ToString());
                String email = GridView1.Rows[ind1].Cells[3].Text;
                string to = email; //To address    
                string from = "spr3128@gmail.com"; //From address    
                MailMessage message = new MailMessage(from, to);

                string mailbody = "House To Be Rejected<br>House ID=" + name2 + "";
                message.Subject = "House Status";
                message.Body = mailbody;
                message.BodyEncoding = Encoding.UTF8;
                message.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
                System.Net.NetworkCredential basicCredential1 = new
                System.Net.NetworkCredential("spr3128@gmail.com", "saranya@44");
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = basicCredential1;
                try
                {
                    client.Send(message);
                }

                catch (Exception ex)
                {
                    throw ex;
                }

            }

        }
    }
}