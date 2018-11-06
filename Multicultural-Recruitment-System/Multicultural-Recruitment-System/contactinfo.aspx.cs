using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multicultural_Recruitment_System
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMore_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://medicine.temple.edu/departments-centers/research-centers/center-asian-health/contact-us");
        }
    }
}