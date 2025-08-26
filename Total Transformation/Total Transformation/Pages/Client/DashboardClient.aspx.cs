using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Total_Transformation.Classes;

namespace Total_Transformation.Pages.InMaster
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //LoadDashboardData(clientId);
        }

        private void LoadDashboardData(int clientId)
        {
            // Load user name
            litUserName.Text = GetUserName(clientId);

            // Load statistics
            litUpcomingAppointments.Text = GetUpcomingAppointmentsCount(clientId).ToString();
            litFavorites.Text = GetFavoritesCount(clientId).ToString();
            litTotalSpent.Text = GetTotalSpentThisMonth(clientId).ToString("0.00");
            litReviews.Text = GetReviewsCount(clientId).ToString();
            litAvgRating.Text = GetAverageRating(clientId).ToString("0.0");

            // Load appointment status summary
            litAppointmentStatus.Text = GetAppointmentStatusSummary(clientId);

            // Load recent activity
            rptRecentActivity.DataSource = GetRecentActivity(clientId);
            rptRecentActivity.DataBind();

            // Load upcoming appointments
            gvUpcomingAppointments.DataSource = GetUpcomingAppointments(clientId);
            gvUpcomingAppointments.DataBind();
        }

        private string GetUserName(int clientId)
        {
            string query = "SELECT FirstName + ' ' + LastName AS UserName FROM Users WHERE UserID = @ClientID";
            SqlParameter[] parameters = {
                new SqlParameter("@ClientID", clientId)
            };
            return DatabaseHelper.ExecuteScalar(query, parameters)?.ToString() ?? "Client";
        }

        private int GetUpcomingAppointmentsCount(int clientId)
        {
            string query = @"SELECT COUNT(*) FROM Bookings 
                            WHERE ClientID = @ClientID 
                            AND BookingDate >= GETDATE() 
                            AND Status IN ('Confirmed', 'Pending')";
            SqlParameter[] parameters = {
                new SqlParameter("@ClientID", clientId)
            };
            return Convert.ToInt32(DatabaseHelper.ExecuteScalar(query, parameters));
        }

        private int GetFavoritesCount(int clientId)
        {
            string query = "SELECT COUNT(*) FROM ClientFavorites WHERE ClientID = @ClientID";
            SqlParameter[] parameters = {
                new SqlParameter("@ClientID", clientId)
            };
            return Convert.ToInt32(DatabaseHelper.ExecuteScalar(query, parameters));
        }

        private decimal GetTotalSpentThisMonth(int clientId)
        {
            string query = @"SELECT ISNULL(SUM(TotalAmount), 0) FROM Bookings 
                            WHERE ClientID = @ClientID 
                            AND Status = 'Completed'
                            AND MONTH(BookingDate) = MONTH(GETDATE()) 
                            AND YEAR(BookingDate) = YEAR(GETDATE())";
            SqlParameter[] parameters = {
                new SqlParameter("@ClientID", clientId)
            };
            return Convert.ToDecimal(DatabaseHelper.ExecuteScalar(query, parameters));
        }

        private int GetReviewsCount(int clientId)
        {
            string query = @"SELECT COUNT(*) FROM Reviews r
                            INNER JOIN Bookings b ON r.BookingID = b.BookingID
                            WHERE b.ClientID = @ClientID";
            SqlParameter[] parameters = {
                new SqlParameter("@ClientID", clientId)
            };
            return Convert.ToInt32(DatabaseHelper.ExecuteScalar(query, parameters));
        }

        private decimal GetAverageRating(int clientId)
        {
            string query = @"SELECT ISNULL(AVG(CAST(Rating AS DECIMAL(3,1))), 0) FROM Reviews r
                            INNER JOIN Bookings b ON r.BookingID = b.BookingID
                            WHERE b.ClientID = @ClientID";
            SqlParameter[] parameters = {
                new SqlParameter("@ClientID", clientId)
            };
            return Convert.ToDecimal(DatabaseHelper.ExecuteScalar(query, parameters));
        }

        private string GetAppointmentStatusSummary(int clientId)
        {
            string query = @"SELECT 
                            SUM(CASE WHEN Status = 'Confirmed' THEN 1 ELSE 0 END) AS Confirmed,
                            SUM(CASE WHEN Status = 'Pending' THEN 1 ELSE 0 END) AS Pending
                            FROM Bookings 
                            WHERE ClientID = @ClientID 
                            AND BookingDate >= GETDATE()";
            SqlParameter[] parameters = {
                new SqlParameter("@ClientID", clientId)
            };

            DataTable dt = DatabaseHelper.ExecuteQuery(query, parameters);
            if (dt.Rows.Count > 0)
            {
                int confirmed = Convert.ToInt32(dt.Rows[0]["Confirmed"]);
                int pending = Convert.ToInt32(dt.Rows[0]["Pending"]);
                return $"{confirmed} confirmed, {pending} pending";
            }
            return "0 confirmed, 0 pending";
        }

        private DataTable GetRecentActivity(int clientId)
        {
            string query = @"SELECT TOP 5 
                            'calendar-check' AS Icon,
                            'Appointment Booked' AS Title,
                            s.ServiceName + ' with ' + u.FirstName AS Description,
                            DATEDIFF(HOUR, b.DateCreated, GETDATE()) AS HoursAgo
                            FROM Bookings b
                            INNER JOIN Services s ON b.ServiceID = s.ServiceID
                            INNER JOIN Users u ON b.PractitionerID = u.UserID
                            WHERE b.ClientID = @ClientID
                            UNION
                            SELECT 
                            'star' AS Icon,
                            'Review Submitted' AS Title,
                            'Rating for ' + s.ServiceName AS Description,
                            DATEDIFF(HOUR, r.ReviewDate, GETDATE()) AS HoursAgo
                            FROM Reviews r
                            INNER JOIN Bookings b ON r.BookingID = b.BookingID
                            INNER JOIN Services s ON b.ServiceID = s.ServiceID
                            WHERE b.ClientID = @ClientID
                            ORDER BY HoursAgo ASC";

            SqlParameter[] parameters = {
                new SqlParameter("@ClientID", clientId)
            };

            DataTable dt = DatabaseHelper.ExecuteQuery(query, parameters);

            // Add formatted time ago text
            dt.Columns.Add("TimeAgo", typeof(string));
            foreach (DataRow row in dt.Rows)
            {
                int hoursAgo = Convert.ToInt32(row["HoursAgo"]);
                if (hoursAgo < 24)
                {
                    row["TimeAgo"] = hoursAgo + " hours ago";
                }
                else
                {
                    row["TimeAgo"] = (hoursAgo / 24) + " days ago";
                }
            }

            return dt;
        }

        private DataTable GetUpcomingAppointments(int clientId)
        {
            string query = @"SELECT TOP 3 
                            b.BookingID,
                            s.ServiceName,
                            u.FirstName + ' ' + u.LastName AS PractitionerName,
                            FORMAT(b.BookingDate, 'MMM dd, yyyy') + ' ' + 
                            FORMAT(b.StartTime, 'hh\\:mm tt') AS FormattedDateTime,
                            '123 Beauty St' AS Location, -- This would normally come from your database
                            b.Status
                            FROM Bookings b
                            INNER JOIN Services s ON b.ServiceID = s.ServiceID
                            INNER JOIN Users u ON b.PractitionerID = u.UserID
                            WHERE b.ClientID = @ClientID
                            AND b.BookingDate >= GETDATE()
                            AND b.Status IN ('Confirmed', 'Pending')
                            ORDER BY b.BookingDate, b.StartTime";

            SqlParameter[] parameters = {
                new SqlParameter("@ClientID", clientId)
            };

            return DatabaseHelper.ExecuteQuery(query, parameters);
        }

        public string GetStatusClass(string status)
        {
            switch (status)
            {
                case "Confirmed":
                    return "badge-success";
                case "Pending":
                    return "badge-warning";
                case "Completed":
                    return "badge-info";
                case "Cancelled":
                    return "badge-danger";
                default:
                    return "badge-secondary";
            }
        }
    }
}
