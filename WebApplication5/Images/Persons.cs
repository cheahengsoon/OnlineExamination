using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace WebApplication5
{
    [XmlRoot("Persons")]
    public class Persons
    {
        [XmlElement("Person")]
        public List<Person> Person1 { get; set; }
    }
    public class Person
    {
        [XmlElement("Username")]
        public string Username { get; set; }
        [XmlElement("Password")]
        public string Password { get; set; }
           [XmlElement("ConfirmPassword")]
        public string ConfirmPassword { get; set; }
           [XmlElement("Email")]
        public string Email { get; set; }
           [XmlElement("Question")]
        public string Question { get; set; }
           [XmlElement("Answer")]
        public string Answer { get; set; }
          
    }
}