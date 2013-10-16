using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Serialization;
using System.Xml.Linq;
using System.IO;
namespace WebApplication5
{
    public partial class ExamList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string Filepath = @"C:\Users\nithya\Documents\Visual Studio 2010\Projects\WebApplication5\WebApplication5\XML Files\Answers.xml";
        string answr;
        protected void Button2_Click(object sender, EventArgs e)
        {
            Answers anslist = new Answers();
            List<Answer> answerlist=new List<Answer>();
            XmlSerializer ser = new XmlSerializer(typeof(Answers));
            using (FileStream fs = new FileStream(Filepath, FileMode.Open)) 
            {
                anslist = (Answers)ser.Deserialize(fs);
            }


            foreach(GridViewRow gvrow in GridView1.Rows)
            {
               Label lblid= gvrow.FindControl("Label1") as Label;
                  RadioButton lbloptA= gvrow.FindControl("RadioButton1") as RadioButton ;
                 RadioButton lbloptB= gvrow.FindControl("RadioButton2") as RadioButton;
                 RadioButton lbloptC= gvrow.FindControl("RadioButton3") as RadioButton;
                if(lbloptA.Checked==true)
                {
                  answr=lbloptA.Text;
                }
                else  if(lbloptB.Checked==true)
                {
                answr=lbloptB.Text;
                }

                else if (lbloptC.Checked==true)
                {
                     answr=lbloptC.Text;
                }
                Answer objans = new Answer();
                objans.ID=lblid.Text;
                objans.Option=answr;
               
              answerlist.Add(objans);
            }
            int i=0;
            int score=0;
            foreach (Answer a in anslist.ans)
            {
                if((a.ID==answerlist[i].ID)&&(a.Option==answerlist[i].Option))
                {
                    score=score+1;
                    
                }
                i++;
            }
            Label3.Text = "Congrats!!You have Scored" + score;

        }
    }
}