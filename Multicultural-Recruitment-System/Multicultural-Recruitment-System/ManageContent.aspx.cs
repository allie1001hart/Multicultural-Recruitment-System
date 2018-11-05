using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multicultural_Recruitment_System
{
    public partial class ManageContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitGroupSelect_Click(object sender, EventArgs e)
        {
            if (ddlGroup.SelectedItem.Text == "News")
            {
                pnlNewsDash.Visible = true;
                pnlContactUs.Visible = false;
                pnlApplicationLink.Visible = false;
            }
            else if (ddlGroup.SelectedItem.Text == "Apply")
            {
                pnlApplicationLink.Visible = true;
                pnlContactUs.Visible = false;
                pnlNewsDash.Visible = false;
            }
            else if (ddlGroup.SelectedItem.Text == "Contact Us")
            {
                pnlContactUs.Visible = true;
                pnlNewsDash.Visible = false;
                pnlApplicationLink.Visible = false;
            }
        }

        protected void btnAddNews_ServerClick(object sender, EventArgs e)
        {
            pnlNewsDash.Visible = false;
            ddlGroup.Enabled = false;
            ddlAddType.Visible = true;
            btnAddContent.Visible = true;
            btnSubmitGroupSelect.Visible = false;
        }

        protected void btnAddContent_Click(object sender, EventArgs e)
        {
            if (ddlAddType.SelectedItem.Text == "Build")
            {
                ddlAddType.Enabled = false;
                pnlAddBuild.Visible = true;
            }
            else if (ddlAddType.SelectedItem.Text == "Scrap")
            {
                ddlAddType.Enabled = false;
                pnlAddScraped.Visible = true;
            }
        }

        protected void btnCancelAdd_Click(object sender, EventArgs e)
        {
            ddlAddType.Visible = false;
            ddlGroup.Visible = true;
            ddlGroup.Enabled = true;
            pnlAddScraped.Visible = false;
            pnlAddBuild.Visible = false;
            pnlNewsDash.Visible = true;
            btnAddContent.Visible = false;
            btnSubmitGroupSelect.Visible = true;
        }
    }
}