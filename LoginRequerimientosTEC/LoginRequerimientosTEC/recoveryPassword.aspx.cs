using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginRequerimientosTEC
{
    public partial class recoveryPassword : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            var stringChars = new char[8];
            var random = new Random();

            for (int i = 0; i < stringChars.Length; i++)
            {
                stringChars[i] = chars[random.Next(chars.Length)];
            }

            var finalString = new String(stringChars);
            Session["code"] = finalString;
        }

        protected string SendEmail(string toAddress, string subject, string body)
           {
             string result = "Message Sent Successfully!!";
             string senderID = "requemientos@gmail.com";// use sender’s email id here..
             const string senderPassword = "requerimientos"; // sender password here…
             try
             {
               SmtpClient smtp = new SmtpClient
               {
                 Host = "smtp.gmail.com", // smtp server address here…
                 Port = 587,
                 EnableSsl = true,
                 DeliveryMethod = SmtpDeliveryMethod.Network,
                 Credentials = new System.Net.NetworkCredential(senderID, senderPassword),
                 Timeout = 30000,
               };
               MailMessage message = new MailMessage(senderID, toAddress, subject, body);
               smtp.Send(message);
             }
             catch (Exception)
             {
               result = "Error sending email.!!!";
             }
             return result;
           }



        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["emailU"] = txtb_email_recovery.Text;
            SendEmail(txtb_email_recovery.Text, "Recovery Password", "Hello! "+txtb_name_recovery.Text+ " Your Recovery code is: "+Session["code"]+" \n Cheers!");
            Response.Write("E-mail sent!");
            Response.Redirect("updatePassword.aspx");
        }
    }
}