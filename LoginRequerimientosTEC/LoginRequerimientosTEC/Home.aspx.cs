using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginRequerimientosTEC
{
    public partial class Home : System.Web.UI.Page
    {
        static string connection = "Server = EMMANUEL-PC;Database= requerimientos ;Integrated Security= true; user = requerimientos;  password =requerimientos";
        SqlConnection myConnection = new SqlConnection(connection);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_Welcome.Text = "Welcome!" + Session["email"].ToString();
            myConnection.Open();
            cmd.Connection = myConnection;
           try
           {
               cmd.CommandText = "select p.nombreProducto from Usuarios u,Producto p, UsuarioXProducto ut where u.ID_USUARIO = ut.ID_USUARIO and p.ID_Producto = ut.ID_Producto and u.email = '" + Session["email"].ToString() +"'";
               dr = cmd.ExecuteReader();
               while (dr.Read()){
                   if (dr["nombreProducto"].ToString() == "Word"){
                       ImageButton1.Visible = true;
                   }
                   if (dr["nombreProducto"].ToString() == "Excel")
                   {
                       btnExcel.Visible = true;
                   }
                   if (dr["nombreProducto"].ToString() == "Power Point")
                   {
                       btnPowerPoint.Visible = true;
                   }
                  
                   if (dr["nombreProducto"].ToString() == "One Note")
                   {
                       btnOneNote.Visible = true;
                   }
                   if (dr["nombreProducto"].ToString() == "One Drive")
                   {
                       btnOneDrive.Visible = true;
                   }
                   
                   
               }
           }
           catch
           {
               Response.Write("ERROR!");

           }

        }
     
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Logout.aspx");
        }


        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            try
            {
                System.Diagnostics.Process.Start(@"C:\Program Files\Microsoft Office 15\root\office15\WINWORD.EXE", @"/a");
            }
            catch(Exception)
            {
                
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                System.Diagnostics.Process.Start(@"C:\Program Files\Microsoft Office 15\root\office15\EXCEL.EXE", @"/a");
            }
            catch (Exception)
            {

            }
        }

        protected void btnPowerPoint_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                System.Diagnostics.Process.Start(@"C:\Program Files\Microsoft Office 15\root\office15\POWERPNT.EXE", @"/a");
            }
            catch (Exception)
            {

            }
        }

        
        protected void btnOneNote_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                System.Diagnostics.Process.Start(@"C:\Program Files\Microsoft Office 15\root\office15\ONENOTE.EXE", @"/a");
            }
            catch (Exception)
            {

            }
        }

        protected void btnOneDrive_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                System.Diagnostics.Process.Start(@"C:\Program Files\Microsoft Office 15\root\office15\GROOVE.EXE", @"/a");
            }
            catch (Exception)
            {

            }
        }
    }
}