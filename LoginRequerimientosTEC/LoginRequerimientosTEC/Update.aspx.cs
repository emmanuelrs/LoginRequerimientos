using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LoginRequerimientosTEC
{
    public partial class Update : System.Web.UI.Page
    {
        static string connection = "Server = SQLSERVER-PC;Database= requerimientos ;Integrated Security= true; user = requerimientos;  password =requerimientos";
        SqlConnection myConnection = new SqlConnection(connection);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            myConnection.Open();
            String query = "SELECT Nombre, Primer_Apellido, Segundo_Apellido, email, numTelefono"
                        + " FROM Usuarios WHERE email = + '" + Session["email"] + "'";
            cmd.Connection = myConnection;
            cmd.CommandText = query;
            cmd.CommandType = System.Data.CommandType.Text;
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                txtb_name.Text = dr["Nombre"].ToString();
                txtb_first_surname.Text = dr["Primer_Apellido"].ToString();
                txtb_second_surname.Text = dr["Segundo_Apellido"].ToString();
                txtb_email.Text = dr["email"].ToString();
                lblPhone.Text = dr["numTelefono"].ToString();
            }
            dr.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
         
               String query = "UPDATE Usuarios " +
                        " SET Nombre = '" + txtb_name.Text + "'," +
                        " Primer_Apellido = '" + txtb_first_surname.Text + "'," +
                        " Segundo_Apellido = '" + txtb_second_surname.Text + "'," +
                        " email = '" + txtb_email.Text + "'," +
                        " numTelefono = '" + lblPhone.Text + "'" +
                        " WHERE email = '" + Session["email"] + "'";

                Console.WriteLine(query);
                cmd.CommandText = query;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Account successfully updated.')", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}