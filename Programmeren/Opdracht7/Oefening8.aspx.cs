using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oefening8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnBegroeting_Click(object sender, EventArgs e)
    {
        int uur = DateTime.Now.Hour;
        string groet = "";
        if(uur >= 8 && uur <= 11)
        {
            groet = "Goedemorgen <b>" + txtNaam.Text + "</b>, hoe gaat het?";
        }
        else if (uur >= 12 && uur < 18)
        {
            groet = "Goedemiddag <b>" + txtNaam.Text + "</b>, hoe gaat het?";
        }
        else
        {
            groet = "Goedenavond <b>" + txtNaam.Text + "</b>, hoe gaat het?";
        }
        litGroet.Text = groet;
    }
}