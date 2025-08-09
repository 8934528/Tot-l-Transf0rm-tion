<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm14" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Account Settings | Total Transformation
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Settings.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="SidebarContent" runat="server">
    <div class="menu-category">Menu</div>
    <a href="../DashboardClient.aspx" class="menu-item">
        <i class="fas fa-home"></i>
        <span class="menu-text">Dashboard</span>
    </a>
    <a href="../Appointments/Appointments.aspx" class="menu-item">
        <i class="fas fa-calendar-alt"></i>
        <span class="menu-text">My Appointments</span>
    </a>
    <a href="../BookServices/BookServices.aspx" class="menu-item">
        <i class="fas fa-cut"></i>
        <span class="menu-text">Book Services</span>
    </a>
    <a href="../Favorites/Favorites.aspx" class="menu-item">
        <i class="fas fa-heart"></i>
        <span class="menu-text">Favorites</span>
    </a>
    <div class="menu-category">Account</div>
    <a href="../Profile/Profile.aspx" class="menu-item">
        <i class="fas fa-user"></i>
        <span class="menu-text">Profile</span>
    </a>
    <a href="Settings.aspx" class="menu-item active">
        <i class="fas fa-cog"></i>
        <span class="menu-text">Settings</span>
    </a>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PageHeaderContent" runat="server">
    <h1>Account Settings</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../DashboardClient.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Settings</li>
        </ol>
    </nav>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="settings-container">
        <div class="settings-tabs">
            <ul class="nav nav-tabs" id="settingsTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="account-tab" data-toggle="tab" href="#account" role="tab">
                        <i class="fas fa-user-circle"></i>Account
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="security-tab" data-toggle="tab" href="#security" role="tab">
                        <i class="fas fa-shield-alt"></i>Security
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="notifications-tab" data-toggle="tab" href="#notifications" role="tab">
                        <i class="fas fa-bell"></i>Notifications
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="privacy-tab" data-toggle="tab" href="#privacy" role="tab">
                        <i class="fas fa-lock"></i>Privacy
                    </a>
                </li>
            </ul>

            <div class="tab-content" id="settingsTabContent">
                <!-- Account Tab -->
                <div class="tab-pane fade show active" id="account" role="tabpanel">
                    <div class="settings-section">
                        <h3 class="section-title">Basic Information</h3>
                        <div class="section-content">
                            <form>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="settingsFirstName">First Name</label>
                                        <input type="text" class="form-control" id="settingsFirstName" value="John" />
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="settingsLastName">Last Name</label>
                                        <input type="text" class="form-control" id="settingsLastName" value="Doe" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="settingsEmail">Email Address</label>
                                    <input type="email" class="form-control" id="settingsEmail" value="john.doe@example.com" />
                                </div>
                                <div class="form-group">
                                    <label for="settingsPhone">Phone Number</label>
                                    <input type="tel" class="form-control" id="settingsPhone" value="+27 12 345 6789" />
                                </div>
                                <button type="submit" class="btn btn-save">Save Changes</button>
                            </form>
                        </div>
                    </div>

                    <div class="settings-section">
                        <h3 class="section-title">Profile Visibility</h3>
                        <div class="section-content">
                            <div class="form-group">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="profileVisibility" id="visibilityPublic" checked />
                                    <label class="form-check-label" for="visibilityPublic">
                                        Public Profile (Visible to everyone)
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="profileVisibility" id="visibilityPrivate" />
                                    <label class="form-check-label" for="visibilityPrivate">
                                        Private Profile (Visible only to professionals you book with)
                                    </label>
                                </div>
                            </div>
                            <button type="button" class="btn btn-save">Save Changes</button>
                        </div>
                    </div>
                </div>

                <!-- Security Tab -->
                <div class="tab-pane fade" id="security" role="tabpanel">
                    <div class="settings-section">
                        <h3 class="section-title">Change Password</h3>
                        <div class="section-content">
                            <form>
                                <div class="form-group">
                                    <label for="currentPassword">Current Password</label>
                                    <input type="password" class="form-control" id="currentPassword" />
                                </div>
                                <div class="form-group">
                                    <label for="newPassword">New Password</label>
                                    <input type="password" class="form-control" id="newPassword" />
                                    <small class="form-text text-muted">Must be at least 8 characters long</small>
                                </div>
                                <div class="form-group">
                                    <label for="confirmPassword">Confirm New Password</label>
                                    <input type="password" class="form-control" id="confirmPassword" />
                                </div>
                                <button type="submit" class="btn btn-save">Change Password</button>
                            </form>
                        </div>
                    </div>

                    <div class="settings-section">
                        <h3 class="section-title">Two-Factor Authentication</h3>
                        <div class="section-content">
                            <div class="two-factor-status">
                                <div class="status-icon">
                                    <i class="fas fa-shield-alt"></i>
                                </div>
                                <div class="status-info">
                                    <h5>Two-Factor Authentication is <span class="text-danger">OFF</span></h5>
                                    <p>Add an extra layer of security to your account</p>
                                </div>
                            </div>
                            <button type="button" class="btn btn-enable">Enable 2FA</button>
                        </div>
                    </div>

                    <div class="settings-section danger-zone">
                        <h3 class="section-title">Danger Zone</h3>
                        <div class="section-content">
                            <div class="danger-item">
                                <h5>Deactivate Account</h5>
                                <p>Your profile will be hidden but not permanently deleted</p>
                                <button type="button" class="btn btn-deactivate">Deactivate Account</button>
                            </div>
                            <div class="danger-item">
                                <h5>Delete Account</h5>
                                <p>Permanently delete your account and all associated data</p>
                                <button type="button" class="btn btn-delete">Delete Account</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Notifications Tab -->
                <div class="tab-pane fade" id="notifications" role="tabpanel">
                    <div class="settings-section">
                        <h3 class="section-title">Email Notifications</h3>
                        <div class="section-content">
                            <div class="form-group">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="emailAppointments" checked />
                                    <label class="form-check-label" for="emailAppointments">
                                        Appointment confirmations and reminders
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="emailPromotions" checked />
                                    <label class="form-check-label" for="emailPromotions">
                                        Promotions and special offers
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="emailNewsletter" />
                                    <label class="form-check-label" for="emailNewsletter">
                                        Newsletter and beauty tips
                                    </label>
                                </div>
                            </div>
                            <button type="button" class="btn btn-save">Save Changes</button>
                        </div>
                    </div>

                    <div class="settings-section">
                        <h3 class="section-title">Push Notifications</h3>
                        <div class="section-content">
                            <div class="form-group">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="pushAppointments" checked />
                                    <label class="form-check-label" for="pushAppointments">
                                        Upcoming appointments
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="pushMessages" checked />
                                    <label class="form-check-label" for="pushMessages">
                                        Messages from professionals
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="pushRecommendations" />
                                    <label class="form-check-label" for="pushRecommendations">
                                        Personalized recommendations
                                    </label>
                                </div>
                            </div>
                            <button type="button" class="btn btn-save">Save Changes</button>
                        </div>
                    </div>
                </div>

                <!-- Privacy Tab -->
                <div class="tab-pane fade" id="privacy" role="tabpanel">
                    <div class="settings-section">
                        <h3 class="section-title">Data Privacy</h3>
                        <div class="section-content">
                            <div class="privacy-item">
                                <h5>Data Collection</h5>
                                <p>We collect data to improve your experience and provide our services. You can control what data we collect.</p>
                                <a href="#" class="btn btn-privacy">Manage Data Collection</a>
                            </div>
                            <div class="privacy-item">
                                <h5>Location Services</h5>
                                <p>Allow access to your location to find nearby beauty professionals and salons.</p>
                                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                    <label class="btn btn-privacy active">
                                        <input type="radio" name="location" autocomplete="off" checked />
                                        Allow
                                    </label>
                                    <label class="btn btn-privacy">
                                        <input type="radio" name="location" autocomplete="off" />
                                        Deny
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="settings-section">
                        <h3 class="section-title">Connected Accounts</h3>
                        <div class="section-content">
                            <div class="connected-account">
                                <div class="account-info">
                                    <i class="fab fa-google"></i>
                                    <span>Google</span>
                                    <span class="account-email">john.doe@gmail.com</span>
                                </div>
                                <button type="button" class="btn btn-disconnect">Disconnect</button>
                            </div>
                            <div class="connected-account">
                                <div class="account-info">
                                    <i class="fab fa-facebook"></i>
                                    <span>Facebook</span>
                                    <span class="account-email">Not connected</span>
                                </div>
                                <button type="button" class="btn btn-connect">Connect</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="Settings.js"></script>
</asp:Content>
