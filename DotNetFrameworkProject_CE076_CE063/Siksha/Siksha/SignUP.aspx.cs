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
    public partial class SignUP : System.Web.UI.Page
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
            string name = nm.Text;
            using(con)
            {
                string command = "insert into users(phone,password,name) values('" + phone + "','"+password +"','"+name+"')";
                SqlCommand cmd = new SqlCommand(command, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("Login.aspx");
                
            }
        }
    }
}