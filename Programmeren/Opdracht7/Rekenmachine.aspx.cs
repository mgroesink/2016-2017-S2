using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rekenmachine : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_Click(object sender, EventArgs e)
    {
        if((sender as Button).Text == "0" && (TextBoxDisplay.Text.Length == 0
            || TextBoxDisplay.Text == "0"))
        {
            return;
        }

        if(TextBoxDisplay.Text.Length < 7)
        {
            if (TextBoxDisplay.Text == "0" || lBereken.Text == "=")
            {
                TextBoxDisplay.Text = (sender as Button).Text;
            }
            else
            {
                TextBoxDisplay.Text += (sender as Button).Text;
            }
        }
    }



    protected void ButtonDec_Click(object sender, EventArgs e)
    {
        if(!TextBoxDisplay.Text.Contains(value: ","))
        {
            if(TextBoxDisplay.Text.Length == 0)
            {
                TextBoxDisplay.Text += "0,";
            }
            else
            {
                TextBoxDisplay.Text = ",";
            }
        }
    }

    protected void ButtonPlus_Click(object sender, EventArgs e)
    {
        lGetal1.Text = TextBoxDisplay.Text;
        TextBoxDisplay.Text = string.Empty;
        lBereken.Text = "+";
    }

    protected void ButtonResult_Click(object sender, EventArgs e)
    {
        double g1 = Convert.ToDouble(TextBoxDisplay.Text);
        double g2 = Convert.ToDouble(lGetal1.Text);
        double uitkomst = 0;
        if (lBereken.Text == "+")
        {
            uitkomst = g1 + g2;
        }
        else if (lBereken.Text == "-")
        {
            uitkomst = g2 - g1;
        }
        TextBoxDisplay.Text = uitkomst.ToString();
        if(uitkomst < 0)
        {
            TextBoxDisplay.BackColor = System.Drawing.Color.LightSalmon;
        }
        else
        {
            TextBoxDisplay.BackColor = System.Drawing.Color.White;
        }
        lBereken.Text = "=";
    }

    protected void Button1Minus_Click(object sender, EventArgs e)
    {
        lGetal1.Text = TextBoxDisplay.Text;
        TextBoxDisplay.Text = string.Empty;
        lBereken.Text = "-";
    }

    protected void ButtonC_Click(object sender, EventArgs e)
    {
        lGetal1.Text = "0";
        lBereken.Text = string.Empty;
        TextBoxDisplay.Text = "0";
    }

    protected void ButtonO1_Click(object sender, EventArgs e)
    {
        double getal = Convert.ToDouble(TextBoxDisplay.Text);
        double oppervlakte = Math.PI * Math.Pow(getal, y: 2);
        TextBoxDisplay.Text = oppervlakte.ToString(format: "0.00");
    }

    protected void ButtonO2_Click(object sender, EventArgs e)
    {
        double getal = Convert.ToDouble(TextBoxDisplay.Text);
        double omtrek = Math.PI * getal * 2;
        TextBoxDisplay.Text = omtrek.ToString(format: "0.00");
    }

    protected void ButtonBack_Click(object sender, EventArgs e)
    {
        string display = TextBoxDisplay.Text;
        // Laatste teken verwijderen van getal en terugzetten in venster
        TextBoxDisplay.Text = display.Substring(startIndex: 0, length: display.Length - 1);
        // Als het venster geen tekst meer bevat dan een nul plaatsen
        if (TextBoxDisplay.Text.Length == 0)
            TextBoxDisplay.Text = "0";

    }
}