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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["sikshaConnection"].ConnectionString;
            string phone = ph.Text;
            string password = pass.Text;
            using (con)
            {
                string command = "select count(*) from users where phone='"+phone+"' and password='"+password+"'";
               
                SqlCommand cmd = new SqlCommand(command, con);
                con.Open();
                int n = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                con.Close();
              
                if (n > 0)
                {
                    string command1 = "select name from users where phone='" + phone + "' and password='" + password + "'";
                    SqlCommand cmd1 = new SqlCommand(command1, con);
                    con.Open();
                    SqlDataReader rdr = cmd1.ExecuteReader();
                    string name;
                    while(rdr.Read())
                    {
                        name = rdr["name"].ToString();
                        Session["phone"] = phone;
                        Session["name"] = name;    
                    }
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    loginerror.Text = "Invalid Credentials";
                }
            }
        }
    }
}