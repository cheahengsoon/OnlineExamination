using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace WebApplication5
{
    [XmlRoot("Answers")]
    public class Answers
    {
        [XmlElement("Answer")]
        public List<Answer> ans { get; set; }
    }

    public class Answer
    {
           [XmlElement("ansID")]
        public string ID{get;set;}
         [XmlElement("Option")]
        public string Option{get;set;}
    }
}