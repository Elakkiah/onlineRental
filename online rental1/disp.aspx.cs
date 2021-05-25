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
    public partial class disp : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string hid = Request.QueryString["hid"];

            // string constr = "Server=SampleServer; Database=SampleDB; uid=test; pwd=test"; 
            string query = "SELECT image FROM addhome WHERE hid = @hid";

            //SqlConnection con = new SqlConnection(conn); 
            SqlCommand com = new SqlCommand(query, conn);

            com.Parameters.Add("@hid", SqlDbType.Int).Value = Int32.Parse(hid);

            conn.Open();
            SqlDataReader r = com.ExecuteReader();

            if (r.Read())
            {
                byte[] imgData = (byte[])r["image"];
                Response.BinaryWrite(imgData);
            }
            conn.Close();
        }
    }
}