using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (GridView1.SelectedRow != null)
        {
            Session["movieid"] = (int)GridView1.SelectedValue;
            DetailsView1.Visible = true;

        }
        else
        {
            DetailsView1.Visible = false;
        }

    }
}