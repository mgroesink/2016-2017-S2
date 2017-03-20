using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oefening7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void btnBereken_Click(object sender, EventArgs e)
    {
        // Aanmaken variabele
        int cijfer;
        // Vullen variabele
        cijfer = Convert.ToInt32(txtGetal.Text);
        if(cijfer >= 8)
        {
            txtResultaat.Text = "Erg goed";
        }
        else if (cijfer >= 6)
        {
            txtResultaat.Text = "Voldoende";
        }
        else
        {
            txtResultaat.Text = "Je moet beter kunnen";
        }
    }
}