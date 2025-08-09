<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="DashPractitioner.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Practitioner Dashboard | Total Transformation
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="DashPractitioner.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="SidebarContent" runat="server">
    <div class="menu-category">Menu</div>
    <a href="DashPractitioner.aspx" class="menu-item active">
        <i class="fas fa-home"></i>
        <span class="menu-text">Dashboard</span>
    </a>
    <a href="#" class="menu-item">
        <i class="fas fa-calendar-alt"></i>
        <span class="menu-text">Appointments</span>
    </a>
    <a href="#" class="menu-item">
        <i class="fas fa-cut"></i>
        <span class="menu-text">Services</span>
    </a>
    <a href="#" class="menu-item">
        <i class="fas fa-chart-line"></i>
        <span class="menu-text">Earnings</span>
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
    <h1>Practitioner Dashboard</h1>
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
                    <h5 class="card-title">Today's Appointments</h5>
                    <div class="card-icon primary">
                        <i class="fas fa-calendar-day"></i>
                    </div>
                </div>
                <div class="card-value">5</div>
                <div class="card-footer">4 confirmed, 1 pending</div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="dashboard-card stats-card">
                <div class="card-header">
                    <h5 class="card-title">Total Earnings</h5>
                    <div class="card-icon accent">
                        <i class="fas fa-wallet"></i>
                    </div>
                </div>
                <div class="card-value">R3,450</div>
                <div class="card-footer">This month</div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="dashboard-card stats-card">
                <div class="card-header">
                    <h5 class="card-title">New Clients</h5>
                    <div class="card-icon secondary">
                        <i class="fas fa-user-plus"></i>
                    </div>
                </div>
                <div class="card-value">8</div>
                <div class="card-footer">This month</div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="dashboard-card stats-card">
                <div class="card-header">
                    <h5 class="card-title">Rating</h5>
                    <div class="card-icon primary">
                        <i class="fas fa-star"></i>
                    </div>
                </div>
                <div class="card-value">4.8</div>
                <div class="card-footer">From 24 reviews</div>
            </div>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-lg-8">
            <div class="dashboard-card chart-card">
                <div class="card-header">
                    <h5 class="card-title">Earnings Overview</h5>
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
                <canvas id="practitionerChart" height="250"></canvas>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="dashboard-card">
                <div class="card-header">
                    <h5 class="card-title">Recent Reviews</h5>
                </div>
                <div class="reviews-list">
                    <div class="review-item">
                        <div class="review-header">
                            <div class="reviewer">Sarah Johnson</div>
                            <div class="review-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                        <div class="review-content">
                            "Amazing haircut! Exactly what I wanted. Will definitely come back."
                        </div>
                        <div class="review-time">2 days ago</div>
                    </div>
                    <div class="review-item">
                        <div class="review-header">
                            <div class="reviewer">Michael Brown</div>
                            <div class="review-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                            </div>
                        </div>
                        <div class="review-content">
                            "Great service and attention to detail. The styling was perfect for my event."
                        </div>
                        <div class="review-time">1 week ago</div>
                    </div>
                    <div class="review-item">
                        <div class="review-header">
                            <div class="reviewer">Emily Davis</div>
                            <div class="review-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                        <div class="review-content">
                            "Love my new look! The stylist really understood what I wanted."
                        </div>
                        <div class="review-time">2 weeks ago</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-12">
            <div class="dashboard-card">
                <div class="card-header">
                    <h5 class="card-title">Today's Schedule</h5>
                    <a href="#" class="btn btn-sm btn-outline-primary">View All</a>
                </div>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Time</th>
                                <th>Client</th>
                                <th>Service</th>
                                <th>Duration</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>9:00 AM</td>
                                <td>Sarah Johnson</td>
                                <td>Haircut & Blowout</td>
                                <td>1 hour</td>
                                <td><span class="badge badge-success">Confirmed</span></td>
                                <td><a href="#" class="btn btn-sm btn-outline-primary">Details</a></td>
                            </tr>
                            <tr>
                                <td>10:30 AM</td>
                                <td>Michael Brown</td>
                                <td>Beard Trim</td>
                                <td>30 mins</td>
                                <td><span class="badge badge-success">Confirmed</span></td>
                                <td><a href="#" class="btn btn-sm btn-outline-primary">Details</a></td>
                            </tr>
                            <tr>
                                <td>12:00 PM</td>
                                <td>Lisa Smith</td>
                                <td>Color Treatment</td>
                                <td>2 hours</td>
                                <td><span class="badge badge-success">Confirmed</span></td>
                                <td><a href="#" class="btn btn-sm btn-outline-primary">Details</a></td>
                            </tr>
                            <tr>
                                <td>2:30 PM</td>
                                <td>David Wilson</td>
                                <td>Haircut</td>
                                <td>45 mins</td>
                                <td><span class="badge badge-success">Confirmed</span></td>
                                <td><a href="#" class="btn btn-sm btn-outline-primary">Details</a></td>
                            </tr>
                            <tr>
                                <td>4:00 PM</td>
                                <td>Emily Davis</td>
                                <td>Styling</td>
                                <td>1 hour</td>
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
    <script src="DashPractitioner.js"></script>
</asp:Content>
