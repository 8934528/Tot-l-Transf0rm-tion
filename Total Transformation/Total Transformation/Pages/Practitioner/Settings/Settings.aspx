<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm19" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Settings | Practitioner
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Settings.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="SidebarContent" runat="server">
    <div class="menu-category">Menu</div>
    <a href="../DashPractitioner.aspx" class="menu-item">
        <i class="fas fa-home"></i>
        <span class="menu-text">Dashboard</span>
    </a>
    <a href="../Appointments/Appointments.aspx" class="menu-item">
        <i class="fas fa-calendar-alt"></i>
        <span class="menu-text">Appointments</span>
    </a>
    <a href="../Services/Services.aspx" class="menu-item">
        <i class="fas fa-cut"></i>
        <span class="menu-text">Services</span>
    </a>
    <a href="../Earnings/Earnings.aspx" class="menu-item">
        <i class="fas fa-chart-line"></i>
        <span class="menu-text">Earnings</span>
    </a>
    <div class="menu-category">Account</div>
    <a href="../Profiles/Profiles.aspx" class="menu-item">
        <i class="fas fa-user"></i>
        <span class="menu-text">Profile</span>
    </a>
    <a href="Settings.aspx" class="menu-item active">
        <i class="fas fa-cog"></i>
        <span class="menu-text">Settings</span>
    </a>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PageHeaderContent" runat="server">
    <h1>Settings</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../DashPractitioner.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Settings</li>
        </ol>
    </nav>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="settings-container">
        <div class="settings-sidebar">
            <div class="settings-menu">
                <a href="#account" class="menu-item active">
                    <i class="fas fa-user-cog"></i>
                    <span>Account Settings</span>
                </a>
                <a href="#notifications" class="menu-item">
                    <i class="fas fa-bell"></i>
                    <span>Notifications</span>
                </a>
                <a href="#security" class="menu-item">
                    <i class="fas fa-shield-alt"></i>
                    <span>Security</span>
                </a>
                <a href="#availability" class="menu-item">
                    <i class="fas fa-calendar-check"></i>
                    <span>Availability</span>
                </a>
                <a href="#payment" class="menu-item">
                    <i class="fas fa-credit-card"></i>
                    <span>Payment Methods</span>
                </a>
            </div>
        </div>

        <div class="settings-content">
            <div class="settings-section active" id="account">
                <div class="section-header">
                    <h2>Account Settings</h2>
                </div>
                <div class="section-content">
                    <form>
                        <div class="form-group">
                            <label>Language</label>
                            <select class="form-control">
                                <option selected>English</option>
                                <option>Afrikaans</option>
                                <option>Zulu</option>
                                <option>Xhosa</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Time Zone</label>
                            <select class="form-control">
                                <option selected>(GMT+02:00) Pretoria</option>
                                <option>(GMT+02:00) Johannesburg</option>
                                <option>(GMT+02:00) Cape Town</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Theme</label>
                            <select class="form-control">
                                <option selected>Light</option>
                                <option>Dark</option>
                                <option>System Default</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="emailNotifications" checked>
                                <label class="form-check-label" for="emailNotifications">
                                    Receive email notifications
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="smsNotifications" checked>
                                <label class="form-check-label" for="smsNotifications">
                                    Receive SMS notifications
                                </label>
                            </div>
                        </div>
                        <div class="form-actions">
                            <button type="button" class="btn btn-primary">Save Changes</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="settings-section" id="notifications">
                <div class="section-header">
                    <h2>Notification Settings</h2>
                </div>
                <div class="section-content">
                    <form>
                        <h5>Appointment Notifications</h5>
                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="newBooking" checked>
                                <label class="form-check-label" for="newBooking">
                                    New booking requests
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="bookingChanges" checked>
                                <label class="form-check-label" for="bookingChanges">
                                    Booking changes or cancellations
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="reminders" checked>
                                <label class="form-check-label" for="reminders">
                                    Appointment reminders
                                </label>
                            </div>
                        </div>

                        <h5 class="mt-4">Client Interaction</h5>
                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="newReviews" checked>
                                <label class="form-check-label" for="newReviews">
                                    New reviews
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="messages" checked>
                                <label class="form-check-label" for="messages">
                                    New messages from clients
                                </label>
                            </div>
                        </div>

                        <h5 class="mt-4">Financial Notifications</h5>
                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="payments" checked>
                                <label class="form-check-label" for="payments">
                                    Payment received
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="payouts" checked>
                                <label class="form-check-label" for="payouts">
                                    Payout processed
                                </label>
                            </div>
                        </div>

                        <div class="form-actions">
                            <button type="button" class="btn btn-primary">Save Changes</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="settings-section" id="security">
                <div class="section-header">
                    <h2>Security Settings</h2>
                </div>
                <div class="section-content">
                    <form>
                        <div class="form-group">
                            <label>Change Password</label>
                            <div class="password-form">
                                <div class="form-group">
                                    <label>Current Password</label>
                                    <input type="password" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label>New Password</label>
                                    <input type="password" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label>Confirm New Password</label>
                                    <input type="password" class="form-control" />
                                </div>
                                <div class="form-actions">
                                    <button type="button" class="btn btn-primary">Update Password</button>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Two-Factor Authentication</label>
                            <div class="two-factor">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="enable2FA">
                                    <label class="form-check-label" for="enable2FA">
                                        Enable Two-Factor Authentication
                                    </label>
                                </div>
                                <small class="form-text text-muted">Adds an extra layer of security to your account by requiring a verification code when logging in.
                                </small>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Login History</label>
                            <div class="login-history">
                                <div class="login-item">
                                    <div class="login-info">
                                        <div class="login-device">
                                            <i class="fas fa-desktop"></i>Chrome on Windows
                                        </div>
                                        <div class="login-time">
                                            Today, 10:30 AM · Pretoria, South Africa
                                        </div>
                                    </div>
                                    <div class="login-status">
                                        <span class="badge badge-success">Active</span>
                                    </div>
                                </div>
                                <div class="login-item">
                                    <div class="login-info">
                                        <div class="login-device">
                                            <i class="fas fa-mobile-alt"></i>Safari on iPhone
                                        </div>
                                        <div class="login-time">
                                            Yesterday, 8:45 PM · Johannesburg, South Africa
                                        </div>
                                    </div>
                                    <div class="login-status">
                                        <span class="badge badge-secondary">Inactive</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="settings-section" id="availability">
                <div class="section-header">
                    <h2>Availability Settings</h2>
                </div>
                <div class="section-content">
                    <form>
                        <div class="form-group">
                            <label>Default Working Hours</label>
                            <div class="working-hours">
                                <div class="day-schedule">
                                    <div class="day-header">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="monday" checked>
                                            <label class="form-check-label" for="monday">Monday</label>
                                        </div>
                                    </div>
                                    <div class="time-slots">
                                        <select class="form-control form-control-sm">
                                            <option>09:00 AM</option>
                                            <option selected>10:00 AM</option>
                                            <option>11:00 AM</option>
                                        </select>
                                        <span>to</span>
                                        <select class="form-control form-control-sm">
                                            <option>04:00 PM</option>
                                            <option selected>05:00 PM</option>
                                            <option>06:00 PM</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="day-schedule">
                                    <div class="day-header">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="tuesday" checked>
                                            <label class="form-check-label" for="tuesday">Tuesday</label>
                                        </div>
                                    </div>
                                    <div class="time-slots">
                                        <select class="form-control form-control-sm">
                                            <option>09:00 AM</option>
                                            <option selected>10:00 AM</option>
                                            <option>11:00 AM</option>
                                        </select>
                                        <span>to</span>
                                        <select class="form-control form-control-sm">
                                            <option>04:00 PM</option>
                                            <option selected>05:00 PM</option>
                                            <option>06:00 PM</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="day-schedule">
                                    <div class="day-header">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="wednesday" checked>
                                            <label class="form-check-label" for="wednesday">Wednesday</label>
                                        </div>
                                    </div>
                                    <div class="time-slots">
                                        <select class="form-control form-control-sm">
                                            <option>09:00 AM</option>
                                            <option selected>10:00 AM</option>
                                            <option>11:00 AM</option>
                                        </select>
                                        <span>to</span>
                                        <select class="form-control form-control-sm">
                                            <option>04:00 PM</option>
                                            <option selected>05:00 PM</option>
                                            <option>06:00 PM</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="day-schedule">
                                    <div class="day-header">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="thursday" checked>
                                            <label class="form-check-label" for="thursday">Thursday</label>
                                        </div>
                                    </div>
                                    <div class="time-slots">
                                        <select class="form-control form-control-sm">
                                            <option>09:00 AM</option>
                                            <option selected>10:00 AM</option>
                                            <option>11:00 AM</option>
                                        </select>
                                        <span>to</span>
                                        <select class="form-control form-control-sm">
                                            <option>04:00 PM</option>
                                            <option selected>05:00 PM</option>
                                            <option>06:00 PM</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="day-schedule">
                                    <div class="day-header">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="friday" checked>
                                            <label class="form-check-label" for="friday">Friday</label>
                                        </div>
                                    </div>
                                    <div class="time-slots">
                                        <select class="form-control form-control-sm">
                                            <option>09:00 AM</option>
                                            <option selected>10:00 AM</option>
                                            <option>11:00 AM</option>
                                        </select>
                                        <span>to</span>
                                        <select class="form-control form-control-sm">
                                            <option>04:00 PM</option>
                                            <option selected>05:00 PM</option>
                                            <option>06:00 PM</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="day-schedule">
                                    <div class="day-header">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="saturday">
                                            <label class="form-check-label" for="saturday">Saturday</label>
                                        </div>
                                    </div>
                                    <div class="time-slots">
                                        <select class="form-control form-control-sm" disabled>
                                            <option>09:00 AM</option>
                                            <option>10:00 AM</option>
                                            <option>11:00 AM</option>
                                        </select>
                                        <span>to</span>
                                        <select class="form-control form-control-sm" disabled>
                                            <option>01:00 PM</option>
                                            <option>02:00 PM</option>
                                            <option>03:00 PM</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="day-schedule">
                                    <div class="day-header">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="sunday">
                                            <label class="form-check-label" for="sunday">Sunday</label>
                                        </div>
                                    </div>
                                    <div class="time-slots">
                                        <select class="form-control form-control-sm" disabled>
                                            <option>09:00 AM</option>
                                            <option>10:00 AM</option>
                                            <option>11:00 AM</option>
                                        </select>
                                        <span>to</span>
                                        <select class="form-control form-control-sm" disabled>
                                            <option>01:00 PM</option>
                                            <option>02:00 PM</option>
                                            <option>03:00 PM</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Break Time</label>
                            <div class="break-time">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="enableBreak" checked>
                                    <label class="form-check-label" for="enableBreak">Enable break time</label>
                                </div>
                                <div class="time-range mt-2">
                                    <select class="form-control form-control-sm">
                                        <option>12:00 PM</option>
                                        <option selected>01:00 PM</option>
                                        <option>02:00 PM</option>
                                    </select>
                                    <span>to</span>
                                    <select class="form-control form-control-sm">
                                        <option>01:00 PM</option>
                                        <option selected>02:00 PM</option>
                                        <option>03:00 PM</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Appointment Interval</label>
                            <select class="form-control">
                                <option>15 minutes</option>
                                <option selected>30 minutes</option>
                                <option>45 minutes</option>
                                <option>1 hour</option>
                            </select>
                        </div>

                        <div class="form-actions">
                            <button type="button" class="btn btn-primary">Save Changes</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="settings-section" id="payment">
                <div class="section-header">
                    <h2>Payment Methods</h2>
                    <button class="btn btn-sm btn-primary" data-toggle="modal" data-target="#addPaymentModal">
                        <i class="fas fa-plus"></i>Add Method
                    </button>
                </div>
                <div class="section-content">
                    <div class="payment-methods">
                        <div class="payment-method">
                            <div class="method-details">
                                <div class="method-icon">
                                    <i class="fab fa-cc-visa"></i>
                                </div>
                                <div class="method-info">
                                    <div class="method-name">Visa ending in 4242</div>
                                    <div class="method-expiry">Expires 04/2025</div>
                                </div>
                            </div>
                            <div class="method-actions">
                                <button class="btn btn-sm btn-outline-primary">
                                    <i class="fas fa-edit"></i>Edit
                                </button>
                                <button class="btn btn-sm btn-outline-danger">
                                    <i class="fas fa-trash"></i>Remove
                                </button>
                            </div>
                        </div>
                        <div class="payment-method">
                            <div class="method-details">
                                <div class="method-icon">
                                    <i class="fas fa-university"></i>
                                </div>
                                <div class="method-info">
                                    <div class="method-name">Bank Account</div>
                                    <div class="method-expiry">Standard Bank •••• 6789</div>
                                </div>
                            </div>
                            <div class="method-actions">
                                <button class="btn btn-sm btn-outline-primary">
                                    <i class="fas fa-edit"></i>Edit
                                </button>
                                <button class="btn btn-sm btn-outline-danger">
                                    <i class="fas fa-trash"></i>Remove
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="payout-settings mt-4">
                        <h5>Payout Settings</h5>
                        <div class="form-group">
                            <label>Payout Schedule</label>
                            <select class="form-control">
                                <option selected>Weekly (Every Monday)</option>
                                <option>Bi-weekly (1st & 15th of month)</option>
                                <option>Monthly (End of month)</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Minimum Payout Amount</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">R</span>
                                </div>
                                <input type="number" class="form-control" value="500" />
                            </div>
                        </div>
                        <div class="form-actions">
                            <button type="button" class="btn btn-primary">Save Changes</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Add Payment Method Modal -->
    <div class="modal fade" id="addPaymentModal" tabindex="-1" role="dialog" aria-labelledby="addPaymentModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addPaymentModalLabel">Add Payment Method</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label>Payment Method</label>
                            <select class="form-control">
                                <option selected>Credit/Debit Card</option>
                                <option>Bank Account</option>
                                <option>PayPal</option>
                            </select>
                        </div>

                        <div class="card-details">
                            <div class="form-group">
                                <label>Card Number</label>
                                <input type="text" class="form-control" placeholder="1234 5678 9012 3456" />
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label>Expiration Date</label>
                                    <input type="text" class="form-control" placeholder="MM/YY" />
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Security Code</label>
                                    <input type="text" class="form-control" placeholder="CVC" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Cardholder Name</label>
                                <input type="text" class="form-control" placeholder="Name on card" />
                            </div>
                        </div>

                        <div class="bank-details" style="display: none;">
                            <div class="form-group">
                                <label>Bank Name</label>
                                <input type="text" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label>Account Type</label>
                                <select class="form-control">
                                    <option>Checking</option>
                                    <option>Savings</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Account Number</label>
                                <input type="text" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label>Branch Code</label>
                                <input type="text" class="form-control" />
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary">Add Payment Method</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="Settings.js"></script>
</asp:Content>
