<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="DashboardClient.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Client Dashboard | Total Transformation
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="DashboardClient.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="SidebarContent" runat="server">
    <div class="menu-category">Menu</div>
    <a href="DashboardClient.aspx" class="menu-item active">
        <i class="fas fa-home"></i>
        <span class="menu-text">Dashboard</span>
    </a>
    <a href="#" class="menu-item">
        <i class="fas fa-calendar-alt"></i>
        <span class="menu-text">My Appointments</span>
    </a>
    <a href="#" class="menu-item">
        <i class="fas fa-cut"></i>
        <span class="menu-text">Book Services</span>
    </a>
    <a href="#" class="menu-item">
        <i class="fas fa-heart"></i>
        <span class="menu-text">Favorites</span>
    </a>
    <div class="menu-category">Account</div>
    <a href="#" class="menu-item">
        <i class="fas fa-user"></i>
        <span class="menu-text">Profile</span>
    </a>
    <a href="#" class="menu-item">
        <i class="fas fa-cog"></i>
        <span class="menu-text">Settings</span>
    </a>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PageHeaderContent" runat="server">
    <h1>Client Dashboard</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
        </ol>
    </nav>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-6 col-lg-3">
            <div class="dashboard-card stats-card">
                <div class="card-header">
                    <h5 class="card-title">Upcoming Appointments</h5>
                    <div class="card-icon primary">
                        <i class="fas fa-calendar-check"></i>
                    </div>
                </div>
                <div class="card-value">3</div>
                <div class="card-footer">2 confirmed, 1 pending</div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="dashboard-card stats-card">
                <div class="card-header">
                    <h5 class="card-title">Favorites</h5>
                    <div class="card-icon accent">
                        <i class="fas fa-heart"></i>
                    </div>
                </div>
                <div class="card-value">7</div>
                <div class="card-footer">5 stylists, 2 salons</div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="dashboard-card stats-card">
                <div class="card-header">
                    <h5 class="card-title">Total Spent</h5>
                    <div class="card-icon secondary">
                        <i class="fas fa-wallet"></i>
                    </div>
                </div>
                <div class="card-value">R1,250</div>
                <div class="card-footer">This month</div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="dashboard-card stats-card">
                <div class="card-header">
                    <h5 class="card-title">Reviews</h5>
                    <div class="card-icon primary">
                        <i class="fas fa-star"></i>
                    </div>
                </div>
                <div class="card-value">12</div>
                <div class="card-footer">Average 4.8 rating</div>
            </div>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-lg-8">
            <div class="dashboard-card chart-card">
                <div class="card-header">
                    <h5 class="card-title">Appointments Overview</h5>
                    <div class="dropdown">
                        <button class="btn btn-sm btn-outline-primary dropdown-toggle" type="button" data-toggle="dropdown">
                            This Month
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">This Week</a>
                            <a class="dropdown-item" href="#">This Month</a>
                            <a class="dropdown-item" href="#">This Year</a>
                        </div>
                    </div>
                </div>
                <canvas id="clientChart" height="250"></canvas>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="dashboard-card">
                <div class="card-header">
                    <h5 class="card-title">Recent Activity</h5>
                </div>
                <div class="activity-list">
                    <div class="activity-item">
                        <div class="activity-icon primary">
                            <i class="fas fa-calendar-check"></i>
                        </div>
                        <div class="activity-content">
                            <div class="activity-title">Appointment Confirmed</div>
                            <div class="activity-desc">Haircut with Style Studio</div>
                            <div class="activity-time">2 hours ago</div>
                        </div>
                    </div>
                    <div class="activity-item">
                        <div class="activity-icon accent">
                            <i class="fas fa-star"></i>
                        </div>
                        <div class="activity-content">
                            <div class="activity-title">Review Submitted</div>
                            <div class="activity-desc">For Nail Art by Jane</div>
                            <div class="activity-time">1 day ago</div>
                        </div>
                    </div>
                    <div class="activity-item">
                        <div class="activity-icon secondary">
                            <i class="fas fa-cut"></i>
                        </div>
                        <div class="activity-content">
                            <div class="activity-title">New Booking</div>
                            <div class="activity-desc">Manicure at Nail Haven</div>
                            <div class="activity-time">2 days ago</div>
                        </div>
                    </div>
                    <div class="activity-item">
                        <div class="activity-icon primary">
                            <i class="fas fa-heart"></i>
                        </div>
                        <div class="activity-content">
                            <div class="activity-title">Added to Favorites</div>
                            <div class="activity-desc">Beauty by Sarah</div>
                            <div class="activity-time">3 days ago</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-12">
            <div class="dashboard-card">
                <div class="card-header">
                    <h5 class="card-title">Upcoming Appointments</h5>
                    <a href="#" class="btn btn-sm btn-outline-primary">View All</a>
                </div>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Service</th>
                                <th>Professional</th>
                                <th>Date & Time</th>
                                <th>Location</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Haircut & Styling</td>
                                <td>Style Studio</td>
                                <td>Tomorrow, 10:00 AM</td>
                                <td>123 Beauty St</td>
                                <td><span class="badge badge-success">Confirmed</span></td>
                                <td><a href="#" class="btn btn-sm btn-outline-primary">Details</a></td>
                            </tr>
                            <tr>
                                <td>Manicure</td>
                                <td>Nail Haven</td>
                                <td>June 15, 2:00 PM</td>
                                <td>456 Glamour Ave</td>
                                <td><span class="badge badge-success">Confirmed</span></td>
                                <td><a href="#" class="btn btn-sm btn-outline-primary">Details</a></td>
                            </tr>
                            <tr>
                                <td>Makeup Session</td>
                                <td>Beauty by Sarah</td>
                                <td>June 20, 11:00 AM</td>
                                <td>789 Style Blvd</td>
                                <td><span class="badge badge-warning">Pending</span></td>
                                <td><a href="#" class="btn btn-sm btn-outline-primary">Details</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="DashboardClient.js"></script>
</asp:Content>
