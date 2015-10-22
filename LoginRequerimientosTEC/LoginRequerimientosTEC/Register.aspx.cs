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
        static string connection = "Server = SQLSERVER-PC;Database= requerimientos ;Integrated Security= true; user = requerimientos;  password =requerimientos";
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
                    cmd.CommandText = "INSERT INTO Usuarios(ID_USUARIO, Nombre, Primer_Apellido, Segundo_Apellido, numTelefono, email, password)" +
                             " VALUES (NEXT VALUE FOR dbo.UserCount,'" + txtb_name.Text + "','" + txtb_first_surname.Text + "','" + txtb_second_surname.Text + "','" +lblPhone.Text + "','" + txtb_email.Text + "','" + txtb_password1.Text + "');";
                    dr = cmd.ExecuteReader();
                    Response.Redirect("Login.aspx");
                }
                catch(Exception error)
                {
                    Response.Write("Register not correct!");
                    Console.WriteLine(error.ToString());
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
            Response.Redirect("Logout.aspx");
        }
    }
}