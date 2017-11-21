using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPMVCWebForm_CRUD
{
    public partial class CRUD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Name"].DefaultValue = 
                ((TextBox)GridView1.FooterRow.FindControl("txtName")).Text;

            SqlDataSource1.InsertParameters["Position"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtPosition")).Text;

            SqlDataSource1.Insert();
        }
    }
}