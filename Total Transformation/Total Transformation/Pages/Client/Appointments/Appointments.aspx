<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="Appointments.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    My Appointments | Total Transformation
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Appointments.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="SidebarContent" runat="server">
    <div class="menu-category">Menu</div>
    <a href="../DashboardClient.aspx" class="menu-item">
        <i class="fas fa-home"></i>
        <span class="menu-text">Dashboard</span>
    </a>
    <a href="Appointments.aspx" class="menu-item active">
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
    <a href="../Settings/Settings.aspx" class="menu-item">
        <i class="fas fa-cog"></i>
        <span class="menu-text">Settings</span>
    </a>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PageHeaderContent" runat="server">
    <h1>My Appointments</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../DashboardClient.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Appointments</li>
        </ol>
    </nav>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="appointments-container">
        <div class="appointments-header">
            <div class="appointments-filter">
                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                    <label class="btn btn-filter active">
                        <input type="radio" name="filter" autocomplete="off" checked />
                        All
                    </label>
                    <label class="btn btn-filter">
                        <input type="radio" name="filter" autocomplete="off" />
                        Upcoming
                    </label>
                    <label class="btn btn-filter">
                        <input type="radio" name="filter" autocomplete="off" />
                        Past
                    </label>
                    <label class="btn btn-filter">
                        <input type="radio" name="filter" autocomplete="off" />
                        Cancelled
                    </label>
                </div>
            </div>
            <div class="appointments-search">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search appointments..." />
                    <div class="input-group-append">
                        <button class="btn btn-search" type="button"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </div>
        </div>

        <div class="appointments-list">
            <div class="appointment-card upcoming">
                <div class="appointment-header">
                    <div class="appointment-date">
                        <div class="date-day">15</div>
                        <div class="date-month">Jun</div>
                    </div>
                    <div class="appointment-info">
                        <div class="appointment-title">Haircut & Styling</div>
                        <div class="appointment-practitioner">Style Studio</div>
                    </div>
                    <div class="appointment-time">
                        <i class="far fa-clock"></i>10:00 AM - 11:30 AM
                    </div>
                    <div class="appointment-status">
                        <span class="badge badge-success">Confirmed</span>
                    </div>
                    <div class="appointment-actions">
                        <button class="btn btn-action" data-toggle="tooltip" title="View Details"><i class="fas fa-eye"></i></button>
                        <button class="btn btn-action" data-toggle="tooltip" title="Cancel"><i class="fas fa-times"></i></button>
                    </div>
                </div>
                <div class="appointment-footer">
                    <div class="appointment-location">
                        <i class="fas fa-map-marker-alt"></i>123 Beauty St, City
                    </div>
                    <div class="appointment-price">
                        R250
                    </div>
                </div>
            </div>

            <div class="appointment-card upcoming">
                <div class="appointment-header">
                    <div class="appointment-date">
                        <div class="date-day">18</div>
                        <div class="date-month">Jun</div>
                    </div>
                    <div class="appointment-info">
                        <div class="appointment-title">Manicure</div>
                        <div class="appointment-practitioner">Nail Haven</div>
                    </div>
                    <div class="appointment-time">
                        <i class="far fa-clock"></i>2:00 PM - 3:00 PM
                    </div>
                    <div class="appointment-status">
                        <span class="badge badge-success">Confirmed</span>
                    </div>
                    <div class="appointment-actions">
                        <button class="btn btn-action" data-toggle="tooltip" title="View Details"><i class="fas fa-eye"></i></button>
                        <button class="btn btn-action" data-toggle="tooltip" title="Cancel"><i class="fas fa-times"></i></button>
                    </div>
                </div>
                <div class="appointment-footer">
                    <div class="appointment-location">
                        <i class="fas fa-map-marker-alt"></i>456 Glamour Ave, City
                    </div>
                    <div class="appointment-price">
                        R180
                    </div>
                </div>
            </div>

            <div class="appointment-card past">
                <div class="appointment-header">
                    <div class="appointment-date">
                        <div class="date-day">05</div>
                        <div class="date-month">Jun</div>
                    </div>
                    <div class="appointment-info">
                        <div class="appointment-title">Makeup Session</div>
                        <div class="appointment-practitioner">Beauty by Sarah</div>
                    </div>
                    <div class="appointment-time">
                        <i class="far fa-clock"></i>11:00 AM - 12:30 PM
                    </div>
                    <div class="appointment-status">
                        <span class="badge badge-secondary">Completed</span>
                    </div>
                    <div class="appointment-actions">
                        <button class="btn btn-action" data-toggle="tooltip" title="View Details"><i class="fas fa-eye"></i></button>
                        <button class="btn btn-action" data-toggle="tooltip" title="Book Again"><i class="fas fa-calendar-plus"></i></button>
                        <button class="btn btn-action" data-toggle="tooltip" title="Leave Review"><i class="fas fa-star"></i></button>
                    </div>
                </div>
                <div class="appointment-footer">
                    <div class="appointment-location">
                        <i class="fas fa-map-marker-alt"></i>789 Style Blvd, City
                    </div>
                    <div class="appointment-price">
                        R350
                    </div>
                </div>
            </div>

            <div class="appointment-card cancelled">
                <div class="appointment-header">
                    <div class="appointment-date">
                        <div class="date-day">10</div>
                        <div class="date-month">Jun</div>
                    </div>
                    <div class="appointment-info">
                        <div class="appointment-title">Beard Trim</div>
                        <div class="appointment-practitioner">Gentleman's Grooming</div>
                    </div>
                    <div class="appointment-time">
                        <i class="far fa-clock"></i>4:00 PM - 4:30 PM
                    </div>
                    <div class="appointment-status">
                        <span class="badge badge-danger">Cancelled</span>
                    </div>
                    <div class="appointment-actions">
                        <button class="btn btn-action" data-toggle="tooltip" title="View Details"><i class="fas fa-eye"></i></button>
                        <button class="btn btn-action" data-toggle="tooltip" title="Book Again"><i class="fas fa-calendar-plus"></i></button>
                    </div>
                </div>
                <div class="appointment-footer">
                    <div class="appointment-location">
                        <i class="fas fa-map-marker-alt"></i>321 Barber St, City
                    </div>
                    <div class="appointment-price">
                        R120
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="Appointments.js"></script>
</asp:Content>
