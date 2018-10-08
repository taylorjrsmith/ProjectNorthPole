using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XmasListProject.UserControls
{
    public partial class StepControl : System.Web.UI.UserControl
    {
        public string StepInstruction
        {
            get { return StepDescription.Text; }
            set { StepDescription.Text = value; }


        }

        public string StepNumber
        {
            get { return StepCount.Text; }
            set { StepCount.Text = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}