using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Siksha
{
    public partial class Dashboard : System.Web.UI.Page
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

        protected void share_Click(object sender, EventArgs e)
        {
            Response.Redirect("Book Form.aspx");
        }

        protected void search_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookList.aspx");
        }
    }
}