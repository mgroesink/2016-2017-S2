using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rekentoets : System.Web.UI.Page
{
    Random r = new Random();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void btnMaakSommen_Click(object sender, EventArgs e)
    {
        int max = Convert.ToInt32(txtMax.Text);
        for(int i = 1; i <= 5; i++)
        {
            TextBox t = (TextBox)FindControl("TextBox" + i.ToString());
            t.Text = string.Empty;
            Label l1 = (Label)FindControl("Label" + i.ToString());
            Label l2 = (Label)FindControl("Label" + (10 + i).ToString());
            Label l3 = (Label)FindControl("Label" + (i + 5).ToString());
            l3.Text = string.Empty;
            l2.Text = (r.Next(max) + 1).ToString();
            l1.Text = i.ToString() + " x " + l2.Text + " = ";
        }
        sommen.Visible = true;
        litScore.Text = string.Empty;
    }

    protected void btnScore_Click(object sender, EventArgs e)
    {
        int cijfer = 0;
        for(int i = 1; i <= 5; i++)
        {
            Label l = (Label)FindControl("Label" + (i + 10).ToString());
            TextBox t = (TextBox)FindControl("TextBox" + i.ToString());
            int getal = Convert.ToInt32(l.Text);
            int antwoord = Convert.ToInt32(t.Text);
            Label l2 = (Label)FindControl("Label" + (i + 5).ToString());
            if(i * getal == antwoord)
            {
                l2.Text = "Goed";
                cijfer += 2;
            }
            else
            {
                l2.Text = "Fout";
            }

        }
        if(cijfer == 10)
        {
            Response.Write("<embed height='0' width='0' src='Sound.wav' />");
        }
        litScore.Text = "Je hebt een <span style='font-size:large;font-weight:bold'>" + cijfer.ToString() + "</span>";
    }
}