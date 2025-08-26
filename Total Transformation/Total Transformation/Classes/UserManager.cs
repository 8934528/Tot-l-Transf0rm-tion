using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Configuration;

namespace Total_Transformation.Classes
{
    public class UserManager
    {
        private static string connectionString = ConfigurationManager.ConnectionStrings["TotalTransformationConnection"].ConnectionString;

        // Method to hash password
        public static string HashPassword(string password)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                // ComputeHash returns byte array
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(password));

                // Convert byte array to a string
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }

        // Method to register a new user
        public static bool RegisterUser(string firstName, string lastName, string email, string phone,
                                      string password, string userType, out string errorMessage)
        {
            errorMessage = "";

            try
            {
                // Check if email already exists
                if (EmailExists(email))
                {
                    errorMessage = "Email address is already registered.";
                    return false;
                }

                // Hash the password
                string passwordHash = HashPassword(password);

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = @"INSERT INTO Users (FirstName, LastName, Email, Phone, PasswordHash, UserType, DateCreated) 
                                   VALUES (@FirstName, @LastName, @Email, @Phone, @PasswordHash, @UserType, GETDATE());
                                   SELECT SCOPE_IDENTITY();";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@FirstName", firstName);
                        command.Parameters.AddWithValue("@LastName", lastName);
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Phone", phone);
                        command.Parameters.AddWithValue("@PasswordHash", passwordHash);
                        command.Parameters.AddWithValue("@UserType", userType);

                        connection.Open();
                        int newUserId = Convert.ToInt32(command.ExecuteScalar());

                        // If user is a practitioner, insert into PractitionerDetails
                        if (userType == "Practitioner")
                        {
                            string practitionerQuery = "INSERT INTO PractitionerDetails (PractitionerID) VALUES (@PractitionerID)";
                            using (SqlCommand practitionerCommand = new SqlCommand(practitionerQuery, connection))
                            {
                                practitionerCommand.Parameters.AddWithValue("@PractitionerID", newUserId);
                                practitionerCommand.ExecuteNonQuery();
                            }
                        }

                        return true;
                    }
                }
            }
            catch (Exception ex)
            {
                errorMessage = "An error occurred during registration. Please try again.";
                // Log the exception here
                System.Diagnostics.Debug.WriteLine("Registration error: " + ex.Message);
                return false;
            }
        }

        // Method to check if email already exists
        private static bool EmailExists(string email)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM Users WHERE Email = @Email";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    connection.Open();
                    int count = Convert.ToInt32(command.ExecuteScalar());
                    return count > 0;
                }
            }
        }

        // Method to authenticate user
        public static bool AuthenticateUser(string email, string password, out int userId, out string userType, out string userName, out string errorMessage)
        {
            userId = 0;
            userType = "";
            userName = "";
            errorMessage = "";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "SELECT UserID, FirstName, LastName, UserType, PasswordHash FROM Users WHERE Email = @Email AND IsActive = 1";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Email", email);
                        connection.Open();

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                string storedHash = reader["PasswordHash"].ToString();
                                string inputHash = HashPassword(password);

                                if (storedHash == inputHash)
                                {
                                    userId = Convert.ToInt32(reader["UserID"]);
                                    userType = reader["UserType"].ToString();
                                    userName = reader["FirstName"].ToString() + " " + reader["LastName"].ToString();
                                    return true;
                                }
                                else
                                {
                                    errorMessage = "Invalid password.";
                                    return false;
                                }
                            }
                            else
                            {
                                errorMessage = "Email address not found.";
                                return false;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                errorMessage = "An error occurred during authentication. Please try again.";
                // Log the exception here
                System.Diagnostics.Debug.WriteLine("Authentication error: " + ex.Message);
                return false;
            }
        }

        // Method to update last login time
        public static void UpdateLastLogin(int userId)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "UPDATE Users SET LastLogin = GETDATE() WHERE UserID = @UserID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UserID", userId);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}
