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
    public partial class Book_Form : System.Web.UI.Page
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

        protected void Submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["sikshaConnection"].ConnectionString;
            string phone = Session["phone"].ToString();
            string name = nme.Text;
            string subject = sub.Text;
            string author = athr.Text;
            string edition = edt.Text;
            string description = desc.Text;
            using (con)
            {
                string command = "insert into books(phone,name,subject,author,edition,description) values('" + phone + "','" + name + "','" + subject + "','"+author+"','"+edition+"','"+description+"')";
                SqlCommand cmd = new SqlCommand(command, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                bookmessage.Text = "Your Book Is Added Successfully";
            }
        }
    }
}