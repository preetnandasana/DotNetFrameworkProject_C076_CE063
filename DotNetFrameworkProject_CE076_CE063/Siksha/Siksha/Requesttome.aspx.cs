using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Siksha
{
    public partial class Requesttome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
            Response.Cache.SetNoStore();
            if (Session["name"] == null)
                Response.Redirect("Login.aspx");
            name.Text = Session["name"].ToString();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["sikshaConnection"].ConnectionString;
            string id = GridView1.SelectedRow.Cells[1].Text;
            string bid = GridView1.SelectedRow.Cells[5].Text;
            using (con)
            {

                string command = "update requests set isaccepted='True' where id='"+id+"'";
     
                SqlCommand cmd = new SqlCommand(command, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
               
                string command1 = "update books set isshared='True' where id='" + bid + "'";
                SqlCommand cmd1 = new SqlCommand(command1, con);
                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();

                string command2 = "delete from requests where id!='"+id+"' and bid='"+ bid+"'";
                SqlCommand cmd2 = new SqlCommand(command2, con);
                con.Open();
                cmd2.ExecuteNonQuery();
                con.Close();            
            }
            
        }
        protected void GridView1_OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[1].Visible = false;
            e.Row.Cells[3].Visible = false;
            e.Row.Cells[4].Visible = false;
            e.Row.Cells[5].Visible = false;
            // this.booklistview.Columns[1].Visible = false;
        }
    }
}