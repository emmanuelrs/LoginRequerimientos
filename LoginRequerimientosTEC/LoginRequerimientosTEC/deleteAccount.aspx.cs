using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginRequerimientosTEC
{
    public partial class deleteAccount : System.Web.UI.Page
    {
        static string connection = "Server = EMMANUEL-PC;Database= requerimientos ;Integrated Security= true; user = requerimientos;  password =requerimientos";
        SqlConnection myConnection = new SqlConnection(connection);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        SqlCommand cmde = new SqlCommand();
        SqlDataReader dre;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                myConnection.Open();
                cmd.Connection = myConnection;
                cmd.CommandText = "SELECT * FROM USUARIOS WHERE EMAIL ='" + txt_email.Text + "'";
                dr = cmd.ExecuteReader();
                dr.Read();
                if (dr.HasRows)
                {
                    myConnection.Close();
                {
                    if (txt_password.Text == txt_passwordRepeat.Text)
                    {
                        myConnection.Open();
                        cmde.Connection = myConnection;
                        cmde.CommandText = "Delete Usuarios WHERE email ='" + txt_email.Text + "'";
                        dre = cmde.ExecuteReader();
                        dre.Read();
                        myConnection.Close();
                        Response.Redirect("login.aspx");
                      }
                      else
                      {
                          Response.Write("Password doesn't match!");
                      }

                    }
                    
                    myConnection.Close();
                }
                else
                {
                    Response.Write("email incorrect!");
                }

            }
            catch (Exception)
            {
                Response.Write("Error! Something wrong happened");
            }
        }

        protected void btn_Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}