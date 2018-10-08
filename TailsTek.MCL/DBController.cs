using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace TailsTek.MCL
{
    public class DBController
    {

        public static MCLContext Get()
        {
            var Mcl = new MCLContext();

            if (HttpContext.Current.Items["MCL"] == null)
            {
                HttpContext.Current.Items.Add("MCL", Mcl);
            }

            return (MCLContext)HttpContext.Current.Items["MCL"];


        }
    }
}
