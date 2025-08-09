<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="Earnings.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm16" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Earnings | Practitioner
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Earnings.css" rel="stylesheet" />
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
    <a href="Earnings.aspx" class="menu-item active">
        <i class="fas fa-chart-line"></i>
        <span class="menu-text">Earnings</span>
    </a>
    <div class="menu-category">Account</div>
    <a href="../Profiles/Profiles.aspx" class="menu-item">
        <i class="fas fa-user"></i>
        <span class="menu-text">Profile</span>
    </a>
    <a href="../Settings/Settings.aspx" class="menu-item">
        <i class="fas fa-cog"></i>
        <span class="menu-text">Settings</span>
    </a>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PageHeaderContent" runat="server">
    <h1>Earnings</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../DashPractitioner.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Earnings</li>
        </ol>
    </nav>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="earnings-header">
        <div class="earnings-title">
            <h2>Your Earnings</h2>
            <p>Track your income and payment history</p>
        </div>
        <div class="earnings-period">
            <div class="dropdown">
                <button class="btn btn-outline-primary dropdown-toggle" type="button" data-toggle="dropdown">
                    Last 30 Days
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Today</a>
                    <a class="dropdown-item" href="#">Last 7 Days</a>
                    <a class="dropdown-item" href="#">Last 30 Days</a>
                    <a class="dropdown-item" href="#">This Month</a>
                    <a class="dropdown-item" href="#">Last Month</a>
                    <a class="dropdown-item" href="#">Custom Range</a>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 col-lg-3">
            <div class="dashboard-card stats-card">
                <div class="card-header">
                    <h5 class="card-title">Total Earnings</h5>
                    <div class="card-icon primary">
                        <i class="fas fa-wallet"></i>
                    </div>
                </div>
                <div class="card-value">R3,450</div>
                <div class="card-footer">+12% from last period</div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="dashboard-card stats-card">
                <div class="card-header">
                    <h5 class="card-title">Completed Services</h5>
                    <div class="card-icon accent">
                        <i class="fas fa-check-circle"></i>
                    </div>
                </div>
                <div class="card-value">24</div>
                <div class="card-footer">+3 from last period</div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="dashboard-card stats-card">
                <div class="card-header">
                    <h5 class="card-title">Average per Service</h5>
                    <div class="card-icon secondary">
                        <i class="fas fa-chart-bar"></i>
                    </div>
                </div>
                <div class="card-value">R143.75</div>
                <div class="card-footer">+R8.50 from last period</div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="dashboard-card stats-card">
                <div class="card-header">
                    <h5 class="card-title">Tips Received</h5>
                    <div class="card-icon primary">
                        <i class="fas fa-hand-holding-usd"></i>
                    </div>
                </div>
                <div class="card-value">R520</div>
                <div class="card-footer">21.6% of clients tipped</div>
            </div>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-lg-8">
            <div class="dashboard-card chart-card">
                <div class="card-header">
                    <h5 class="card-title">Earnings Overview</h5>
                    <div class="chart-legend">
                        <div class="legend-item">
                            <span class="legend-color" style="background-color: #F9629F;"></span>
                            <span class="legend-label">Service Fees</span>
                        </div>
                        <div class="legend-item">
                            <span class="legend-color" style="background-color: #EE82EE;"></span>
                            <span class="legend-label">Tips</span>
                        </div>
                    </div>
                </div>
                <canvas id="earningsChart" height="250"></canvas>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="dashboard-card">
                <div class="card-header">
                    <h5 class="card-title">Top Services</h5>
                </div>
                <div class="top-services">
                    <div class="service-item">
                        <div class="service-info">
                            <div class="service-name">Haircut & Styling</div>
                            <div class="service-stats">12 services · R1,440</div>
                        </div>
                        <div class="service-percentage">
                            <div class="progress">
                                <div class="progress-bar" style="width: 42%; background-color: #F9629F;"></div>
                            </div>
                            <span>42%</span>
                        </div>
                    </div>
                    <div class="service-item">
                        <div class="service-info">
                            <div class="service-name">Color Treatment</div>
                            <div class="service-stats">5 services · R1,250</div>
                        </div>
                        <div class="service-percentage">
                            <div class="progress">
                                <div class="progress-bar" style="width: 36%; background-color: #EE82EE;"></div>
                            </div>
                            <span>36%</span>
                        </div>
                    </div>
                    <div class="service-item">
                        <div class="service-info">
                            <div class="service-name">Beard Trim</div>
                            <div class="service-stats">4 services · R480</div>
                        </div>
                        <div class="service-percentage">
                            <div class="progress">
                                <div class="progress-bar" style="width: 17%; background-color: #9e1b32;"></div>
                            </div>
                            <span>17%</span>
                        </div>
                    </div>
                    <div class="service-item">
                        <div class="service-info">
                            <div class="service-name">Makeup</div>
                            <div class="service-stats">3 services · R900</div>
                        </div>
                        <div class="service-percentage">
                            <div class="progress">
                                <div class="progress-bar" style="width: 5%; background-color: #28a745;"></div>
                            </div>
                            <span>5%</span>
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
                    <h5 class="card-title">Recent Transactions</h5>
                    <a href="#" class="btn btn-sm btn-outline-primary">View All</a>
                </div>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Date</th>
                                <th>Client</th>
                                <th>Service</th>
                                <th>Amount</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Today, 09:00 AM</td>
                                <td>Sarah Johnson</td>
                                <td>Haircut & Styling</td>
                                <td>R120</td>
                                <td><span class="badge badge-success">Paid</span></td>
                                <td><a href="#" class="btn btn-sm btn-outline-primary">Details</a></td>
                            </tr>
                            <tr>
                                <td>Today, 10:30 AM</td>
                                <td>Michael Brown</td>
                                <td>Beard Trim</td>
                                <td>R80</td>
                                <td><span class="badge badge-success">Paid</span></td>
                                <td><a href="#" class="btn btn-sm btn-outline-primary">Details</a></td>
                            </tr>
                            <tr>
                                <td>Yesterday, 02:00 PM</td>
                                <td>Lisa Smith</td>
                                <td>Color Treatment</td>
                                <td>R250</td>
                                <td><span class="badge badge-success">Paid</span></td>
                                <td><a href="#" class="btn btn-sm btn-outline-primary">Details</a></td>
                            </tr>
                            <tr>
                                <td>Yesterday, 11:00 AM</td>
                                <td>David Wilson</td>
                                <td>Haircut</td>
                                <td>R100</td>
                                <td><span class="badge badge-warning">Pending</span></td>
                                <td><a href="#" class="btn btn-sm btn-outline-primary">Details</a></td>
                            </tr>
                            <tr>
                                <td>2 days ago, 04:00 PM</td>
                                <td>Emily Davis</td>
                                <td>Styling</td>
                                <td>R150</td>
                                <td><span class="badge badge-success">Paid</span></td>
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
    <script src="Earnings.js"></script>
</asp:Content>
