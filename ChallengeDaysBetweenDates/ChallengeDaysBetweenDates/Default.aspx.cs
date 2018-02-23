using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void okButton_Click(object sender, EventArgs e)
    {
        if (myFirstCalendar.SelectedDate > mySecondCalendar.SelectedDate)
        {
            resultLabel.Text = myFirstCalendar.SelectedDate
            .Subtract(mySecondCalendar.SelectedDate)
            .TotalDays.ToString();
        }
        else 

        resultLabel.Text = mySecondCalendar.SelectedDate
            .Subtract(myFirstCalendar.SelectedDate)
            .TotalDays.ToString();     
    }
}