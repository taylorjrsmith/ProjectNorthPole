using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TailsTek.MCL;

namespace XmasListProject
{
    public partial class MCL : System.Web.UI.MasterPage
    {
        public bool RequiresLogin { get; set; }

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

            userName.Text = $"<span class='fa fa-user'></span> Welcome back {CurrentUser.Name}";
        }
    }
}