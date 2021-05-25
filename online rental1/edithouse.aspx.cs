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
    public partial class edithouse : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                BindGrid();
            }
        }
        private void BindGrid()
        {

            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand("Select * from addhome where email='" + Session["email"].ToString() + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            conn.Close();


        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            conn.Open();
            int idd = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            String a = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            String a1 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            String a2 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            String a3 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            String a4 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;

            SqlCommand cmd = new SqlCommand("update addhome set category='" + a + "',type='" + a1 + "',houseno='" + a2 + "',address='" + a3 + "',amount='" + a4 + "' where hid=" + idd + "", conn);
            int t = cmd.ExecuteNonQuery();
            if (t > 0)
            {

                GridView1.EditIndex = -1;
                BindGrid();
            }


            conn.Close();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}
