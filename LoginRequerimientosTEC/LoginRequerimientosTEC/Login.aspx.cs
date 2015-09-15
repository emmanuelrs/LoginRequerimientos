using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginRequerimientosTEC
{
    public partial class Login : System.Web.UI.Page

    {
        static string connection = "Server = EMMANUEL-PC;Database= requerimientos ;Integrated Security= true; user = requerimientos;  password =requerimientos";
        SqlConnection myConnection = new SqlConnection(connection);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            myConnection.Open();
            cmd.Connection = myConnection;
            cmd.CommandText = "SELECT * FROM USUARIOS WHERE EMAIL ='"+txtb_email.Text+"' AND PASSWORD='"+txtb_password.Text+"'";
            dr = cmd.ExecuteReader();
            dr.Read();
            if(dr.HasRows){
                Session["email"] = txtb_email.Text;
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("email or password incorrect!");
            }
            myConnection.Close();
        }
    }
}