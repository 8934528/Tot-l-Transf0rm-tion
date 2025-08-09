<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    My Profile | Total Transformation
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Profile.css" rel="stylesheet" />
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
    <a href="Profile.aspx" class="menu-item active">
        <i class="fas fa-user"></i>
        <span class="menu-text">Profile</span>
    </a>
    <a href="../Settings/Settings.aspx" class="menu-item">
        <i class="fas fa-cog"></i>
        <span class="menu-text">Settings</span>
    </a>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PageHeaderContent" runat="server">
    <h1>My Profile</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../DashboardClient.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Profile</li>
        </ol>
    </nav>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="profile-container">
        <div class="profile-header">
            <div class="profile-avatar">
                <img src="../../Images/default-avatar.png" alt="Profile Avatar" />
                <button class="btn-change-avatar" data-toggle="tooltip" title="Change Photo">
                    <i class="fas fa-camera"></i>
                </button>
            </div>
            <div class="profile-info">
                <h2 class="profile-name">John Doe</h2>
                <div class="profile-joined">
                    <i class="far fa-calendar-alt"></i>Member since June 2022
                </div>
                <div class="profile-stats">
                    <div class="stat-item">
                        <div class="stat-value">12</div>
                        <div class="stat-label">Appointments</div>
                    </div>
                    <div class="stat-item">
                        <div class="stat-value">7</div>
                        <div class="stat-label">Favorites</div>
                    </div>
                    <div class="stat-item">
                        <div class="stat-value">4.8</div>
                        <div class="stat-label">Avg Rating</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="profile-content">
            <div class="profile-section">
                <h3 class="section-title">Personal Information</h3>
                <div class="section-content">
                    <form>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="firstName">First Name</label>
                                <input type="text" class="form-control" id="firstName" value="John" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="lastName">Last Name</label>
                                <input type="text" class="form-control" id="lastName" value="Doe" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email">Email Address</label>
                            <input type="email" class="form-control" id="email" value="john.doe@example.com" />
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone Number</label>
                            <input type="tel" class="form-control" id="phone" value="+27 12 345 6789" />
                        </div>
                        <div class="form-group">
                            <label for="birthday">Date of Birth</label>
                            <input type="date" class="form-control" id="birthday" value="1990-01-15" />
                        </div>
                        <div class="form-group">
                            <label for="gender">Gender</label>
                            <select class="form-control" id="gender">
                                <option>Male</option>
                                <option>Female</option>
                                <option>Other</option>
                                <option>Prefer not to say</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-save">Save Changes</button>
                    </form>
                </div>
            </div>

            <div class="profile-section">
                <h3 class="section-title">Address Information</h3>
                <div class="section-content">
                    <form>
                        <div class="form-group">
                            <label for="address">Street Address</label>
                            <input type="text" class="form-control" id="address" value="123 Main Street" />
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="city">City</label>
                                <input type="text" class="form-control" id="city" value="Pretoria" />
                            </div>
                            <div class="form-group col-md-4">
                                <label for="province">Province</label>
                                <select class="form-control" id="province">
                                    <option>Gauteng</option>
                                    <option>Western Cape</option>
                                    <option>KwaZulu-Natal</option>
                                    <option>Eastern Cape</option>
                                    <option>Limpopo</option>
                                    <option>Mpumalanga</option>
                                    <option>North West</option>
                                    <option>Free State</option>
                                    <option>Northern Cape</option>
                                </select>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="zip">Postal Code</label>
                                <input type="text" class="form-control" id="zip" value="0001" />
                            </div>
                        </div>
                        <button type="submit" class="btn btn-save">Save Changes</button>
                    </form>
                </div>
            </div>

            <div class="profile-section">
                <h3 class="section-title">Preferences</h3>
                <div class="section-content">
                    <form>
                        <div class="form-group">
                            <label>Notification Preferences</label>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="emailNotifications" checked />
                                <label class="form-check-label" for="emailNotifications">
                                    Email Notifications
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="smsNotifications" />
                                <label class="form-check-label" for="smsNotifications">
                                    SMS Notifications
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="pushNotifications" checked />
                                <label class="form-check-label" for="pushNotifications">
                                    Push Notifications
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="language">Preferred Language</label>
                            <select class="form-control" id="language">
                                <option>English</option>
                                <option>Afrikaans</option>
                                <option>Zulu</option>
                                <option>Xhosa</option>
                                <option>Sotho</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-save">Save Changes</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="Profile.js"></script>
</asp:Content>
