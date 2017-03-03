using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oefening1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Response.Write("De eerste keer");
        }
        else
        {
            Response.Write("Je was hier al");
        }
    }

    protected void btnDoeIets_Click(object sender, EventArgs e)
    {
        string naam;
        naam = txtNaam.Text;
        lblBoodschap.Text = "Welkom " + naam + ". De geselecteerde datum is :" +
            calKalender.SelectedDate.ToShortDateString();
    }
}