using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Oefening3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnMaakKaart_Click(object sender, EventArgs e)
    {
        string naam, geslacht, hobby, opleiding;
        naam = txtNaam.Text;
        geslacht = rbGeslacht.SelectedValue;
        opleiding = cbOpleiding.SelectedValue;
        hobby = "Hobby: ";
        if(chkHobby.SelectedValue == "1")
        {
            hobby += "Gamen ";
        }
        if(chkHobby.SelectedValue == "2")
        {
            hobby += "Programmeren";
        }
        litResultaat.Text += "Naam: " + naam + "<br/>";
        litResultaat.Text += hobby + "<br/>";
        litResultaat.Text += "Opleiding: " + opleiding + "<br/>";
        litResultaat.Text += "Geslacht: " + geslacht + "<br/>";
    }

    protected void rbShowPanel_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(rbShowPanel.SelectedIndex == 0)
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }
    }
}