<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Reports | Total Transformation

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Reports.css" rel="stylesheet" />
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
    <a href="Reports.aspx" class="menu-item active">
        <i class="fas fa-chart-pie"></i>
        <span class="menu-text">Reports</span>
    </a>
    <div class="menu-category">System</div>
    <a href="../Settings/Settings.aspx" class="menu-item">
        <i class="fas fa-cog"></i>
        <span class="menu-text">Settings</span>
    </a>
    <a href="../Support/Support.aspx" class="menu-item">
        <i class="fas fa-headset"></i>
        <span class="menu-text">Support</span>
    </a>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PageHeaderContent" runat="server">
    <h1>Reports</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../AdminDash.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Reports</li>
        </ol>
    </nav>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-6">
            <div class="dashboard-card chart-card">
                <div class="card-header">
                    <h5 class="card-title">Revenue Overview</h5>
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
                <canvas id="revenueChart" height="250"></canvas>
            </div>
        </div>
        <div class="col-md-6">
            <div class="dashboard-card chart-card">
                <div class="card-header">
                    <h5 class="card-title">User Growth</h5>
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
                <canvas id="usersChart" height="250"></canvas>
            </div>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-md-6">
            <div class="dashboard-card chart-card">
                <div class="card-header">
                    <h5 class="card-title">Service Popularity</h5>
                </div>
                <canvas id="servicesChart" height="250"></canvas>
            </div>
        </div>
        <div class="col-md-6">
            <div class="dashboard-card">
                <div class="card-header">
                    <h5 class="card-title">Generate Report</h5>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label>Report Type</label>
                        <select class="form-control">
                            <option>Revenue Report</option>
                            <option>User Activity Report</option>
                            <option>Booking Statistics</option>
                            <option>Service Performance</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Date Range</label>
                        <div class="row">
                            <div class="col-md-6">
                                <input type="date" class="form-control" placeholder="From Date" />
                            </div>
                            <div class="col-md-6">
                                <input type="date" class="form-control" placeholder="To Date" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Format</label>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="format" id="pdf" checked>
                            <label class="form-check-label" for="pdf">PDF</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="format" id="excel">
                            <label class="form-check-label" for="excel">Excel</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="format" id="csv">
                            <label class="form-check-label" for="csv">CSV</label>
                        </div>
                    </div>
                    <button class="btn btn-primary">Generate Report</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="Reports.js"></script>
</asp:Content>
