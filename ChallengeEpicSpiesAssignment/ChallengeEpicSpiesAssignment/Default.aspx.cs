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
        if (!Page.IsPostBack)
        {
            endCalendar.SelectedDate = DateTime.Now.Date;
            startCalendar.SelectedDate = DateTime.Now.Date.AddDays(14);
            projectedCalendar.SelectedDate = DateTime.Now.Date.AddDays(21);
        }
        //Page.MaintainScrollPositionOnPostBack = true;
    }

    protected void spyButton_Click(object sender, EventArgs e)
    {

        TimeSpan totalDurationOfAssignment = projectedCalendar.SelectedDate.Subtract(startCalendar.SelectedDate);
        double totalCost = totalDurationOfAssignment.TotalDays * 500.00;

        if (totalDurationOfAssignment.TotalDays > 21)
        {
            totalCost += 1000.00;
        }

        resultLabel.Text = string.Format("Assignment of {0}" +
              " to assignment {1} is authorized.  " +
              "<b />Budget total: {2:C}", 
              spyCodeTextBox.Text, 
              assignmentTextBox.Text, 
              totalCost);

        TimeSpan weeksBetweenAssignment = startCalendar.SelectedDate.Subtract(endCalendar.SelectedDate);
        if (weeksBetweenAssignment.TotalDays < 14)
        {
            resultLabel.Text = "Error: Must allow at least two weeks between previous assignment and new assignment.";

            DateTime earliestNewAssignmentDate = endCalendar.SelectedDate.AddDays(14);

            startCalendar.SelectedDate = earliestNewAssignmentDate;
            startCalendar.VisibleDate = earliestNewAssignmentDate;
        }



        /*
        if (endCalendar.SelectedDate < startCalendar.SelectedDate)
        {
            resultLabel.Text = startCalendar.SelectedDate.Subtract(endCalendar.SelectedDate)
                .TotalDays.ToString("Error: Must allow at least two weeks between previous assignment and new assignment.");
        }
        else if (endCalendar.SelectedDate >= startCalendar.SelectedDate) 
        {
            
             string result = string.Format("Assignment of {0}" +
              " to assignment {1} is authorized.  " +
              "<b />Budget total: {3:C}", 
              spyCodeTextBox.Text, 
              assignmentTextBox.Text, 
              resultLabel.Text);


            resultLabel.Text = result;
        }*/



    }

    protected void endCalendar_SelectionChanged(object sender, EventArgs e)
    {
    }
}