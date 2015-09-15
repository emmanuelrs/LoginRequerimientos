using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LoginRequerimientosTEC
{
    public partial class Register : System.Web.UI.Page
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
            if (txtb_password1.Text.Equals(txtb_password2.Text))
            {
                try
                {
                    cmd.CommandText = "INSERT INTO [dbo].[Usuarios]([ID_USUARIO],[Nombre],[Primer_Apellido],[Segundo_Apellido],[email],[password])" +
                             " VALUES (4,'Ernesto','Lang','Oreamuno','elang@gmail.com','ernesto');";
                    dr = cmd.ExecuteReader();
                    Response.Redirect("Login.aspx");
                }
                catch
                {
                    Response.Write("Register not correct!");
                
                }
            }
            else
            {
                Response.Write("Passwords not match");
            }
           
            
            myConnection.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}