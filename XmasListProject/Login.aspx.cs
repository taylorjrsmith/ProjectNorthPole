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

        protected void Login_Click(object sender, EventArgs e)
        {

        }

        public void Authenticate()
        {
            var user = Users.LoadUser_EditorPermissions(UserName.Text, Convert.ToInt32(UserPin.Text),
                UserPostcode.Text);

            if (user != null)
            {
                HTTPContextManager.SetUser(user);
                ((MCL)Master).CheckSignInState();
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            Authenticate();
            if (HTTPContextManager.GetUser() != null)
            {
                Response.Redirect("~/MyList");
            }
        }

        protected void LoginButton2_Click(object sender, EventArgs e)
        {

        }
    }
}