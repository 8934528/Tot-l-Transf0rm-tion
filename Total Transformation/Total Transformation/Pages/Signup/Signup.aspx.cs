using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Total_Transformation.Classes;
using System.Net.Mail;

namespace Total_Transformation.Pages.Signup
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Set focus to first name field on page load
            if (!IsPostBack)
            {
                txtFirstName.Focus();
            }
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            // Validate all fields
            if (!ValidateForm())
            {
                return;
            }

            // Get user type from radio buttons
            string userType = Request.Form["userType"];
            if (string.IsNullOrEmpty(userType))
            {
                userType = "Client"; // Default to Client
            }

            // Attempt to register user
            string errorMessage;
            bool success = UserManager.RegisterUser(
                txtFirstName.Text.Trim(),
                txtLastName.Text.Trim(),
                txtEmail.Text.Trim(),
                txtPhone.Text.Trim(),
                txtPassword.Text,
                userType,
                out errorMessage
            );

            if (success)
            {
                // Show success message and redirect to login page
                ScriptManager.RegisterStartupScript(this, this.GetType(), "signupSuccess",
                    "Swal.fire({title: 'Success!', text: 'Your account has been created successfully. Please login.', icon: 'success'}).then((result) => { if (result.isConfirmed) { window.location = '../Signin/Signin.aspx'; } });", true);
            }
            else
            {
                // Show error message
                ScriptManager.RegisterStartupScript(this, this.GetType(), "signupError",
                    $"Swal.fire({{title: 'Error!', text: '{errorMessage}', icon: 'error'}});", true);
            }
        }

        private bool ValidateForm()
        {
            // Validate first name
            if (string.IsNullOrEmpty(txtFirstName.Text.Trim()))
            {
                ShowError("First name is required.");
                return false;
            }

            // Validate last name
            if (string.IsNullOrEmpty(txtLastName.Text.Trim()))
            {
                ShowError("Last name is required.");
                return false;
            }

            // Validate email
            if (string.IsNullOrEmpty(txtEmail.Text.Trim()))
            {
                ShowError("Email is required.");
                return false;
            }

            if (!IsValidEmail(txtEmail.Text.Trim()))
            {
                ShowError("Please enter a valid email address.");
                return false;
            }

            // Validate phone
            if (string.IsNullOrEmpty(txtPhone.Text.Trim()))
            {
                ShowError("Phone number is required.");
                return false;
            }

            // Validate password
            if (string.IsNullOrEmpty(txtPassword.Text))
            {
                ShowError("Password is required.");
                return false;
            }

            if (txtPassword.Text.Length < 8)
            {
                ShowError("Password must be at least 8 characters long.");
                return false;
            }

            // Validate confirm password
            if (txtPassword.Text != txtConfirmPassword.Text)
            {
                ShowError("Passwords do not match.");
                return false;
            }

            // Validate terms agreement
            if (!chkTerms.Checked)
            {
                ShowError("You must agree to the terms and conditions.");
                return false;
            }

            return true;
        }

        private bool IsValidEmail(string email)
        {
            try
            {
                MailAddress addr = new MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

        private void ShowError(string message)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "validationError",
                $"Swal.fire({{title: 'Validation Error', text: '{message}', icon: 'error'}});", true);
        }
    }
}
