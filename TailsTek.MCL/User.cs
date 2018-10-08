using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Net.NetworkInformation;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;

namespace TailsTek.MCL
{
    public class User
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public int Pin { get; set; }

        public string Email { get; set; }

        public string Postcode { get; set; }

        public static User CreateUser(string name, int pin, string email, string postcode)
        {
            User user = new User();
            user.Name = name;
            user.Pin = pin;
            user.Email = email;
            user.Postcode = postcode;

            return user;
        }

        public void Save()
        {
            DBController.Get().Users.AddOrUpdate(this);
            DBController.Get().SaveChanges();

        }


        public static User LoadUser_ViewerPermissions(string name, string postcode)
        {
            return DBController.Get().Users.Where(b => b.Name == name.Trim() && b.Postcode == postcode).FirstOrDefault();
        }

        public static User LoadUser_EditorPermissions(string name, int pin, string postcode)
        {
            return DBController.Get().Users.Where(a => a.Name == name && a.Pin == pin && a.Postcode == postcode)
                .FirstOrDefault();
        }

        public static bool CheckUserNotExists(string name, string postcode)
        {
            var user = LoadUser_ViewerPermissions(name, postcode);

            if (user == null)
                return true;

            return false;
        }

    }
}
