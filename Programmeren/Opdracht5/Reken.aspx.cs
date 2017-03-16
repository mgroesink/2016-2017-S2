using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reken : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

    }

    protected void btnOptel_Click(object sender, EventArgs e)
    {
        double getal1, getal2, uitkomst;
        getal1 = Convert.ToDouble(txtGetal1.Text);
        getal2 = Convert.ToDouble(txtGetal2.Text);
        uitkomst = getal1 + getal2;
        txtUitkomst.Text = uitkomst.ToString();
    }

    protected void btnAftrek_Click(object sender, EventArgs e)
    {
        double getal1, getal2, uitkomst;
        getal1 = Convert.ToDouble(txtGetal1.Text);
        getal2 = Convert.ToDouble(txtGetal2.Text);
        uitkomst = getal1 - getal2;
        txtUitkomst.Text = uitkomst.ToString();
    }
}