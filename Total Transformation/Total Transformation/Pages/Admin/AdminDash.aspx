<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="AdminDash.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Admin Dashboard | Total Transformation
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="AdminDash.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="SidebarContent" runat="server">
    <div class="menu-category">Menu</div>
    <a href="AdminDash.aspx" class="menu-item active">
        <i class="fas fa-home"></i>
        <span class="menu-text">Dashboard</span>
    </a>
    <a href="#" class="menu-item">
        <i class="fas fa-users"></i>
        <span class="menu-text">Users</span>
    </a>
    <a href="#" class="menu-item">
        <i class="fas fa-cut"></i>
        <span class="menu-text">Services</span>
    </a>
    <a href="#" class="menu-item">
        <i class="fas fa-calendar-alt"></i>
        <span class="menu-text">Bookings</span>
    </a>
    <a href="#" class="menu-item">
        <i class="fas fa-chart-pie"></i>
        <span class="menu-text">Reports</span>
    </a>
    <div class="menu-category">System</div>
    <a href="#" class="menu-item">
        <i class="fas fa-cog"></i>
        <span class="menu-text">Settings</span>
    </a>
    <a href="#" class="menu-item">
        <i class="fas fa-headset"></i>
        <span class="menu-text">Support</span>
    </a>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PageHeaderContent" runat="server">
    <h1>Admin Dashboard</h1>
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
                    <h5 class="card-title">Total Users</h5>
                    <div class="card-icon primary">
                        <i class="fas fa-users"></i>
                    </div>
                </div>
                <div class="card-value">1,245</div>
                <div class="card-footer">+12 this week</div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="dashboard-card stats-card">
                <div class="card-header">
                    <h5 class="card-title">Practitioners</h5>
                    <div class="card-icon accent">
                        <i class="fas fa-cut"></i>
                    </div>
                </div>
                <div class="card-value">186</div>
                <div class="card-footer">+5 this week</div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="dashboard-card stats-card">
                <div class="card-header">
                    <h5 class="card-title">Bookings</h5>
                    <div class="card-icon secondary">
                        <i class="fas fa-calendar-check"></i>
                    </div>
                </div>
                <div class="card-value">324</div>
                <div class="card-footer">This month</div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="dashboard-card stats-card">
                <div class="card-header">
                    <h5 class="card-title">Revenue</h5>
                    <div class="card-icon primary">
                        <i class="fas fa-wallet"></i>
                    </div>
                </div>
                <div class="card-value">R45,320</div>
                <div class="card-footer">This month</div>
            </div>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-lg-8">
            <div class="dashboard-card chart-card">
                <div class="card-header">
                    <h5 class="card-title">Platform Growth</h5>
                    <div class="dropdown">
                        <button class="btn btn-sm btn-outline-primary dropdown-toggle" type="button" data-toggle="dropdown">
                            Last 6 Months
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Last 3 Months</a>
                            <a class="dropdown-item" href="#">Last 6 Months</a>
                            <a class="dropdown-item" href="#">This Year</a>
                        </div>
                    </div>
                </div>
                <canvas id="adminChart" height="250"></canvas>
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
                            <i class="fas fa-user-plus"></i>
                        </div>
                        <div class="activity-content">
                            <div class="activity-title">New Practitioner</div>
                            <div class="activity-desc">Jane Smith registered</div>
                            <div class="activity-time">2 hours ago</div>
                        </div>
                    </div>
                    <div class="activity-item">
                        <div class="activity-icon accent">
                            <i class="fas fa-calendar-check"></i>
                        </div>
                        <div class="activity-content">
                            <div class="activity-title">New Booking</div>
                            <div class="activity-desc">Haircut by Style Studio</div>
                            <div class="activity-time">1 day ago</div>
                        </div>
                    </div>
                    <div class="activity-item">
                        <div class="activity-icon secondary">
                            <i class="fas fa-star"></i>
                        </div>
                        <div class="activity-content">
                            <div class="activity-title">New Review</div>
                            <div class="activity-desc">5 stars for Beauty by Sarah</div>
                            <div class="activity-time">2 days ago</div>
                        </div>
                    </div>
                    <div class="activity-item">
                        <div class="activity-icon primary">
                            <i class="fas fa-exclamation-circle"></i>
                        </div>
                        <div class="activity-content">
                            <div class="activity-title">Reported Issue</div>
                            <div class="activity-desc">Payment processing delay</div>
                            <div class="activity-time">3 days ago</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-lg-6">
            <div class="dashboard-card">
                <div class="card-header">
                    <h5 class="card-title">Recent Users</h5>
                    <a href="#" class="btn btn-sm btn-outline-primary">View All</a>
                </div>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Type</th>
                                <th>Joined</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Jane Smith</td>
                                <td>jane@example.com</td>
                                <td><span class="badge badge-primary">Practitioner</span></td>
                                <td>Today</td>
                                <td><a href="#" class="btn btn-sm btn-outline-primary">View</a></td>
                            </tr>
                            <tr>
                                <td>Michael Brown</td>
                                <td>michael@example.com</td>
                                <td><span class="badge badge-success">Client</span></td>
                                <td>1 day ago</td>
                                <td><a href="#" class="btn btn-sm btn-outline-primary">View</a></td>
                            </tr>
                            <tr>
                                <td>Sarah Johnson</td>
                                <td>sarah@example.com</td>
                                <td><span class="badge badge-success">Client</span></td>
                                <td>2 days ago</td>
                                <td><a href="#" class="btn btn-sm btn-outline-primary">View</a></td>
                            </tr>
                            <tr>
                                <td>David Wilson</td>
                                <td>david@example.com</td>
                                <td><span class="badge badge-primary">Practitioner</span></td>
                                <td>3 days ago</td>
                                <td><a href="#" class="btn btn-sm btn-outline-primary">View</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="dashboard-card">
                <div class="card-header">
                    <h5 class="card-title">Recent Bookings</h5>
                    <a href="#" class="btn btn-sm btn-outline-primary">View All</a>
                </div>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Client</th>
                                <th>Service</th>
                                <th>Date</th>
                                <th>Amount</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Michael Brown</td>
                                <td>Haircut</td>
                                <td>Today, 10:00 AM</td>
                                <td>R250</td>
                                <td><span class="badge badge-success">Completed</span></td>
                            </tr>
                            <tr>
                                <td>Sarah Johnson</td>
                                <td>Manicure</td>
                                <td>Today, 2:00 PM</td>
                                <td>R180</td>
                                <td><span class="badge badge-warning">Pending</span></td>
                            </tr>
                            <tr>
                                <td>Emily Davis</td>
                                <td>Makeup</td>
                                <td>Tomorrow, 11:00 AM</td>
                                <td>R350</td>
                                <td><span class="badge badge-info">Confirmed</span></td>
                            </tr>
                            <tr>
                                <td>Robert Taylor</td>
                                <td>Beard Trim</td>
                                <td>Tomorrow, 4:00 PM</td>
                                <td>R120</td>
                                <td><span class="badge badge-info">Confirmed</span></td>
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
    <script src="AdminDash.js"></script>
</asp:Content>
