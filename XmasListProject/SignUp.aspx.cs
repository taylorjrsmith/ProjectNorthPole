using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Users = TailsTek.MCL.User;

namespace XmasListProject
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
            if (!Validate())
                return;

            var user = Users.CreateUser(TextUser.Text, Convert.ToInt32(TextPin.Text), TextEmail.Text, TextPostcode.Text);
            user.Save();

            var loadeduser = Users.LoadUser_EditorPermissions(user.Name, user.Pin, user.Postcode);
        }

        public bool Validate()
        {
            if (!Validate_NotExists())
            {
                litErrorMessage.Text = "A user already exists with this name and postcode";
                pnlErrorMessages.Visible = true;
                return false;
            }
            return true;
        }

        public bool Validate_NotExists()
        {
            return Users.CheckUserNotExists(TextUser.Text, TextPostcode.Text);
        }
    }
}