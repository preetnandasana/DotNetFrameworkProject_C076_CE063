using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Siksha
{
    public partial class BookList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
            Response.Cache.SetNoStore();
            if (Session["name"] == null)
                Response.Redirect("Login.aspx");
            name.Text = Session["name"].ToString();
            requesttext.Text = "";
            
        }

        protected void booklistview_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["sikshaConnection"].ConnectionString;
            string fromphone = Session["phone"].ToString();
            string tophone = booklistview.SelectedRow.Cells[2].Text;
            string bookid = booklistview.SelectedRow.Cells[1].Text;
            string bookname = booklistview.SelectedRow.Cells[3].Text;

            using (con)
            {
                String command1 = "select count(*) from requests where fromphone='" + fromphone + "' and bid='" + bookid + "'";

                SqlCommand cmd1 = new SqlCommand(command1, con);
                con.Open();
                int n = Convert.ToInt32(cmd1.ExecuteScalar().ToString());

                con.Close();

                if (n >=1)
                {
                    requesttext.Text = "";
                    requesttext.ForeColor = System.Drawing.Color.Red;
                    requesttext.Text = "You Already had sent request for this book.";
                }
                else
                {
                    string command = "insert into requests(fromphone,tophone,bid,bname) values('" + fromphone + "','" + tophone + "','"+bookid+"','"+bookname+"')";
                    SqlCommand cmd = new SqlCommand(command, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    requesttext.Text = "";
                    requesttext.Text = "Your Request Is Sent Successfully.";
                    requesttext.ForeColor = System.Drawing.Color.Green;
                }


            }

        }
        protected void booklistview_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[1].Visible = false;
            e.Row.Cells[2].Visible = false;
            e.Row.Cells[8].Visible = false;
            // this.booklistview.Columns[1].Visible = false;
        }
    }
}
