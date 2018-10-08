using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace TailsTek.MCL
{
   public class HTTPContextManager
    {

        public static void SetUser(User user)
        {
          HttpContext.Current.Session["currentUser"] = user;
        }

        public static User GetUser()
        {
            if (HttpContext.Current.Session["currentUser"] == null)
                return null;

            return (User)HttpContext.Current.Session["currentUser"];
        }
    }
}
