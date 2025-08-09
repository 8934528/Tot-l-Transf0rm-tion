<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    System Settings | Total Transformation
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Settings.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="SidebarContent" runat="server">
    <div class="menu-category">Menu</div>
    <a href="../AdminDash.aspx" class="menu-item">
        <i class="fas fa-home"></i>
        <span class="menu-text">Dashboard</span>
    </a>
    <a href="../Users/Users.aspx" class="menu-item">
        <i class="fas fa-users"></i>
        <span class="menu-text">Users</span>
    </a>
    <a href="../Services/Services.aspx" class="menu-item">
        <i class="fas fa-cut"></i>
        <span class="menu-text">Services</span>
    </a>
    <a href="../Bookings/Bookings.aspx" class="menu-item">
        <i class="fas fa-calendar-alt"></i>
        <span class="menu-text">Bookings</span>
    </a>
    <a href="../Reports/Reports.aspx" class="menu-item">
        <i class="fas fa-chart-pie"></i>
        <span class="menu-text">Reports</span>
    </a>
    <div class="menu-category">System</div>
    <a href="Settings.aspx" class="menu-item active">
        <i class="fas fa-cog"></i>
        <span class="menu-text">Settings</span>
    </a>
    <a href="../Support/Support.aspx" class="menu-item">
        <i class="fas fa-headset"></i>
        <span class="menu-text">Support</span>
    </a>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PageHeaderContent" runat="server">
    <h1>System Settings</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../AdminDash.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Settings</li>
        </ol>
    </nav>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-lg-3">
            <div class="settings-nav">
                <div class="nav-header">
                    <h5>Settings</h5>
                </div>
                <div class="nav-items">
                    <a href="#" class="nav-item active" data-target="general-settings">
                        <i class="fas fa-cog"></i>General
                    </a>
                    <a href="#" class="nav-item" data-target="payment-settings">
                        <i class="fas fa-credit-card"></i>Payments
                    </a>
                    <a href="#" class="nav-item" data-target="notification-settings">
                        <i class="fas fa-bell"></i>Notifications
                    </a>
                    <a href="#" class="nav-item" data-target="email-settings">
                        <i class="fas fa-envelope"></i>Email
                    </a>
                    <a href="#" class="nav-item" data-target="security-settings">
                        <i class="fas fa-shield-alt"></i>Security
                    </a>
                </div>
            </div>
        </div>
        <div class="col-lg-9">
            <div class="settings-content">
                <!-- General Settings -->
                <div id="general-settings" class="settings-section active">
                    <div class="section-header">
                        <h5>General Settings</h5>
                        <p>Configure your platform's basic settings</p>
                    </div>
                    <div class="section-body">
                        <div class="form-group">
                            <label>Platform Name</label>
                            <input type="text" class="form-control" value="Total Transformation" />
                        </div>
                        <div class="form-group">
                            <label>Platform Logo</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="platformLogo">
                                <label class="custom-file-label" for="platformLogo">Choose logo</label>
                            </div>
                            <small class="form-text text-muted">Recommended size: 200x50 pixels</small>
                        </div>
                        <div class="form-group">
                            <label>Default Timezone</label>
                            <select class="form-control">
                                <option>Africa/Johannesburg (SAST)</option>
                                <option>UTC</option>
                                <option>America/New_York (EST)</option>
                                <option>Europe/London (GMT)</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Default Language</label>
                            <select class="form-control">
                                <option>English</option>
                                <option>Afrikaans</option>
                                <option>Zulu</option>
                                <option>Xhosa</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Maintenance Mode</label>
                            <div class="custom-control custom-switch">
                                <input type="checkbox" class="custom-control-input" id="maintenanceMode">
                                <label class="custom-control-label" for="maintenanceMode">Enable maintenance mode</label>
                            </div>
                        </div>
                        <button class="btn btn-primary">Save Changes</button>
                    </div>
                </div>

                <!-- Payment Settings -->
                <div id="payment-settings" class="settings-section">
                    <div class="section-header">
                        <h5>Payment Settings</h5>
                        <p>Configure payment gateways and commission rates</p>
                    </div>
                    <div class="section-body">
                        <div class="form-group">
                            <label>Default Currency</label>
                            <select class="form-control">
                                <option>South African Rand (ZAR)</option>
                                <option>US Dollar (USD)</option>
                                <option>Euro (EUR)</option>
                                <option>British Pound (GBP)</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Payment Gateways</label>
                            <div class="payment-gateways">
                                <div class="gateway-item">
                                    <div class="gateway-info">
                                        <img src="../../Images/payfast.png" alt="PayFast" />
                                        <span>PayFast</span>
                                    </div>
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" id="payfast" checked>
                                        <label class="custom-control-label" for="payfast">Enable</label>
                                    </div>
                                </div>
                                <div class="gateway-item">
                                    <div class="gateway-info">
                                        <img src="../../Images/paypal.png" alt="PayPal" />
                                        <span>PayPal</span>
                                    </div>
                                    <div class="custom-control custom-switch">
                                        <input type="checkbox" class="custom-control-input" id="paypal">
                                        <label class="custom-control-label" for="paypal">Enable</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Commission Rate</label>
                            <div class="input-group">
                                <input type="number" class="form-control" value="15" />
                                <div class="input-group-append">
                                    <span class="input-group-text">%</span>
                                </div>
                            </div>
                            <small class="form-text text-muted">Percentage taken from each booking</small>
                        </div>
                        <div class="form-group">
                            <label>Payout Schedule</label>
                            <select class="form-control">
                                <option>Weekly (Every Monday)</option>
                                <option>Bi-weekly (1st & 15th of month)</option>
                                <option>Monthly (1st of month)</option>
                            </select>
                        </div>
                        <button class="btn btn-primary">Save Changes</button>
                    </div>
                </div>

                <!-- Notification Settings -->
                <div id="notification-settings" class="settings-section">
                    <div class="section-header">
                        <h5>Notification Settings</h5>
                        <p>Configure notification preferences</p>
                    </div>
                    <div class="section-body">
                        <div class="form-group">
                            <label>Email Notifications</label>
                            <div class="custom-control custom-switch">
                                <input type="checkbox" class="custom-control-input" id="emailNotifications" checked>
                                <label class="custom-control-label" for="emailNotifications">Enable email notifications</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>SMS Notifications</label>
                            <div class="custom-control custom-switch">
                                <input type="checkbox" class="custom-control-input" id="smsNotifications">
                                <label class="custom-control-label" for="smsNotifications">Enable SMS notifications</label>
                            </div>
                            <small class="form-text text-muted">SMS credits required</small>
                        </div>
                        <div class="form-group">
                            <label>Notification Types</label>
                            <div class="notification-types">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="newBooking" checked>
                                    <label class="custom-control-label" for="newBooking">New bookings</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="bookingChanges" checked>
                                    <label class="custom-control-label" for="bookingChanges">Booking changes</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="newReviews" checked>
                                    <label class="custom-control-label" for="newReviews">New reviews</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="payouts">
                                    <label class="custom-control-label" for="payouts">Payouts</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="systemUpdates" checked>
                                    <label class="custom-control-label" for="systemUpdates">System updates</label>
                                </div>
                            </div>
                        </div>
                        <button class="btn btn-primary">Save Changes</button>
                    </div>
                </div>

                <!-- Email Settings -->
                <div id="email-settings" class="settings-section">
                    <div class="section-header">
                        <h5>Email Settings</h5>
                        <p>Configure email server and templates</p>
                    </div>
                    <div class="section-body">
                        <div class="form-group">
                            <label>SMTP Host</label>
                            <input type="text" class="form-control" value="smtp.example.com" />
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>SMTP Port</label>
                                    <input type="number" class="form-control" value="587" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Encryption</label>
                                    <select class="form-control">
                                        <option>TLS</option>
                                        <option>SSL</option>
                                        <option>None</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>SMTP Username</label>
                            <input type="text" class="form-control" value="noreply@totaltransformation.com" />
                        </div>
                        <div class="form-group">
                            <label>SMTP Password</label>
                            <input type="password" class="form-control" value="********" />
                        </div>
                        <div class="form-group">
                            <label>From Email</label>
                            <input type="email" class="form-control" value="noreply@totaltransformation.com" />
                        </div>
                        <div class="form-group">
                            <label>From Name</label>
                            <input type="text" class="form-control" value="Total Transformation" />
                        </div>
                        <button class="btn btn-primary">Save Changes</button>
                    </div>
                </div>

                <!-- Security Settings -->
                <div id="security-settings" class="settings-section">
                    <div class="section-header">
                        <h5>Security Settings</h5>
                        <p>Configure platform security options</p>
                    </div>
                    <div class="section-body">
                        <div class="form-group">
                            <label>Password Policy</label>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Minimum Length</label>
                                        <input type="number" class="form-control" value="8" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Complexity</label>
                                        <select class="form-control">
                                            <option>Medium (Letters and numbers)</option>
                                            <option>High (Letters, numbers, and special chars)</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Two-Factor Authentication</label>
                            <div class="custom-control custom-switch">
                                <input type="checkbox" class="custom-control-input" id="twoFactor">
                                <label class="custom-control-label" for="twoFactor">Require for admin accounts</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Login Attempts</label>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Max Attempts</label>
                                        <input type="number" class="form-control" value="5" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Lockout Duration (minutes)</label>
                                        <input type="number" class="form-control" value="30" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Session Timeout</label>
                            <div class="input-group">
                                <input type="number" class="form-control" value="30" />
                                <div class="input-group-append">
                                    <span class="input-group-text">minutes</span>
                                </div>
                            </div>
                        </div>
                        <button class="btn btn-primary">Save Changes</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="Settings.js"></script>
</asp:Content>
