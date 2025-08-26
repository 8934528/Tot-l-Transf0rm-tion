using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Total_Transformation.Classes;

namespace Total_Transformation.Pages.Signin
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Set focus to email field on page load
            if (!IsPostBack)
            {
                txtEmail.Focus();

                // Check if user is already logged in
                if (Session["UserID"] != null)
                {
                    RedirectBasedOnUserType();
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Validate form
            if (!ValidateForm())
            {
                return;
            }

            // Authenticate user
            int userId;
            string userType, userName, errorMessage;

            bool success = UserManager.AuthenticateUser(
                txtEmail.Text.Trim(),
                txtPassword.Text,
                out userId,
                out userType,
                out userName,
                out errorMessage
            );

            if (success)
            {
                // Update last login
                UserManager.UpdateLastLogin(userId);

                // Store user information in session
                Session["UserID"] = userId;
                Session["UserType"] = userType;
                Session["UserName"] = userName;
                Session["Email"] = txtEmail.Text.Trim();

                // Redirect based on user type
                RedirectBasedOnUserType();
            }
            else
            {
                // Show error message
                ScriptManager.RegisterStartupScript(this, this.GetType(), "loginError",
                    $"swal('Login Failed', '{errorMessage}', 'error');", true);
            }
        }

        private bool ValidateForm()
        {
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

            // Validate password
            if (string.IsNullOrEmpty(txtPassword.Text))
            {
                ShowError("Password is required.");
                return false;
            }

            return true;
        }

        private bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
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
                $"swal('Validation Error', '{message}', 'error');", true);
        }

        private void RedirectBasedOnUserType()
        {
            string userType = Session["UserType"].ToString();

            switch (userType)
            {
                case "Client":
                    Response.Redirect("~/Pages/Client/DashboardClient.aspx");
                    break;
                case "Practitioner":
                    Response.Redirect("~/Pages/Practitioner/DashPractitioner.aspx");
                    break;
                case "Admin":
                    Response.Redirect("~/Pages/Admin/AdminDash.aspx");
                    break;
                default:
                    Response.Redirect("~/Pages/startPage/startPage.aspx");
                    break;
            }
        }
    }
}
