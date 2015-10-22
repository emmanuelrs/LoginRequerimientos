using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginRequerimientosTEC
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_Welcome.Text = "Welcome!" + Session["email"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Logout.aspx");
        }


        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            System.Diagnostics.Process.Start(@"C:\Program Files\Microsoft Office 15\root\office15\WINWORD.EXE", @"/a");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            System.Diagnostics.Process.Start(@"C:\Program Files\Microsoft Office 15\root\office15\EXCEL.EXE", @"/a");
        }
    }
}