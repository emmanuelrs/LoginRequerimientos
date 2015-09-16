using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginRequerimientosTEC
{
    public partial class updatePassword : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            try { 
            myConnection.Open();
            cmd.Connection = myConnection;
            cmd.CommandText = "SELECT * FROM USUARIOS WHERE EMAIL ='" + Session["emailU"] + "'";
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                myConnection.Close();
                string myresult = Session["code"].ToString();
                if (txtb_code_update.Text == myresult)
                {
                    if (txtb_newPassoword_update.Text == txt_repeatPassword_update.Text)
                    {
                        myConnection.Open();
                        cmde.Connection = myConnection;
                        cmde.CommandText = "UPDATE Usuarios SET password ='" + txtb_newPassoword_update.Text + "' WHERE email ='" + Session["emailU"] + "'";
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
                else
                {
                    Response.Write("code incorrect!");
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
    }
}