using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;
using System.IO;
using System.Xml;
using System.Xml.Linq;

namespace WebApplication5
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlLogin.Visible = true;
            pnlsignup.Visible = false;
        }
        string Filepath = @"C:\Users\nithya\Documents\Visual Studio 2010\Projects\WebApplication5\WebApplication5\bin\XMLFile1.xml";
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            pnlLogin.Visible = true;
            XmlSerializer ser = new XmlSerializer(typeof(Persons));
            FileStream fs = new FileStream(Filepath, FileMode.Open);
            Persons result = (Persons)ser.Deserialize(fs);
            fs.Close();
            foreach (Person p in result.Person1)
            {
                if ((p.Username.Trim().ToUpper() == lblUserid.Text.Trim().ToUpper()) && (p.Password.Trim().ToUpper() == lblPassword.Text.Trim().ToUpper()))
                {
                    Response.Redirect("WelcomePage.aspx");
                }
                else
                {
                    label3.Text = "sorry";

                }


            }
        }
    protected void btnSignUP_Click(object sender, EventArgs e)
        {
            pnlLogin.Visible = false;
            pnlsignup.Visible = true;
        }



    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {

    }

    protected void CreateUserWizard1_CreatingUser(object sender, LoginCancelEventArgs e)
    {
        XDocument doc = XDocument.Load(Filepath);
        var newElement = new XElement("Person", new XElement("Username", CreateUserWizard1.UserName.Trim().ToString()), new XElement("Password", CreateUserWizard1.Password.Trim().ToString())
            , new XElement("ConfirmPassword", CreateUserWizard1.ConfirmPassword.Trim().ToString())
            , new XElement("Email", CreateUserWizard1.Email.Trim().ToString())
            , new XElement("Question", CreateUserWizard1.Question.Trim().ToString())
            , new XElement("Answer", CreateUserWizard1.Answer.Trim().ToString())

            );
        doc.Element("Persons").Add(newElement);
        doc.Save(Filepath);
    }
    
    }
}