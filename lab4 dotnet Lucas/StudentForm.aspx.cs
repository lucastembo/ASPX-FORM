using System;
using System.Web.UI;
namespace WebApp4_5
{
    public partial class WebForm1 : Page  // Ensure it inherits from Page 
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Initialization code (if needed) 
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Get values from the input fields 
            string firstName = TextBox1.Text;
            string lastName = TextBox2.Text;
            string gender = RadioButtonList1.SelectedValue;
            string course = DropDownListCourses.SelectedValue; // Get selected course 
            string country = DropDownListCountries.SelectedValue; // Get selected country 
                                                                  // Display the information or process it as needed 
            response.Text = $"Hello, {firstName} {lastName}! You selected {gender}, chose { course} as your course, and { country} as your country."; 
        }
    }
}
