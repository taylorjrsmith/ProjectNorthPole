using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TailsTek.MCL;

namespace XmasListProject
{
    public partial class SiteMaster : MasterPage
    {
        public User CurrentUser
        {
            get { return HTTPContextManager.GetUser(); }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            CheckSignInState();
        }


        public void CheckSignInState()
        {
            if (CurrentUser == null)
                return;

            litUser.Text = $"Welcome {CurrentUser.Name}";
            liLogin.Visible = false;
            liCreateList.Visible = true;
        }
    }
}