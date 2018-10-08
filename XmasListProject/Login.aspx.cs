using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TailsTek.MCL;
using Users = TailsTek.MCL.User;

namespace XmasListProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_OnClick(object sender, EventArgs e)
        {
           Authenticate();
        }

        public void Authenticate()
        {
            var user = Users.LoadUser_EditorPermissions(TextUser.Text, Convert.ToInt32(TextPin.Text),
                TextPostcode.Text);

            if (user != null)
            {
                HTTPContextManager.SetUser(user);
                ((SiteMaster)Master).CheckSignInState();
            }
        }

    }
}