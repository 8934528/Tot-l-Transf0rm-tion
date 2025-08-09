<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Bookings Management | Total Transformation
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Bookings.css" rel="stylesheet" />
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
    <a href="Bookings.aspx" class="menu-item active">
        <i class="fas fa-calendar-alt"></i>
        <span class="menu-text">Bookings</span>
    </a>
    <a href="../Reports/Reports.aspx" class="menu-item">
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
    <h1>Bookings Management</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../AdminDash.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Bookings</li>
        </ol>
    </nav>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard-card">
        <div class="card-header">
            <h5 class="card-title">All Bookings</h5>
            <div class="header-actions">
                <div class="search-box">
                    <input type="text" placeholder="Search bookings..." />
                    <button><i class="fas fa-search"></i></button>
                </div>
                <div class="dropdown">
                    <button class="btn btn-outline-primary dropdown-toggle" type="button" data-toggle="dropdown">
                        <i class="fas fa-filter"></i>Filter
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="#">Today</a>
                        <a class="dropdown-item" href="#">This Week</a>
                        <a class="dropdown-item" href="#">This Month</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Pending</a>
                        <a class="dropdown-item" href="#">Confirmed</a>
                        <a class="dropdown-item" href="#">Completed</a>
                        <a class="dropdown-item" href="#">Cancelled</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="table-responsive">
            <table class="table table-hover" id="bookingsTable">
                <thead>
                    <tr>
                        <th>Booking ID</th>
                        <th>Client</th>
                        <th>Practitioner</th>
                        <th>Service</th>
                        <th>Date & Time</th>
                        <th>Amount</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>#TT-1001</td>
                        <td>Sarah Johnson</td>
                        <td>Style Studio</td>
                        <td>Haircut & Styling</td>
                        <td>Today, 10:00 AM</td>
                        <td>R250</td>
                        <td><span class="badge badge-success">Completed</span></td>
                        <td>
                            <button class="btn btn-sm btn-outline-primary">View</button>
                        </td>
                    </tr>
                    <tr>
                        <td>#TT-1002</td>
                        <td>Michael Brown</td>
                        <td>Nail Haven</td>
                        <td>Manicure</td>
                        <td>Today, 2:00 PM</td>
                        <td>R180</td>
                        <td><span class="badge badge-info">Confirmed</span></td>
                        <td>
                            <button class="btn btn-sm btn-outline-primary">View</button>
                        </td>
                    </tr>
                    <tr>
                        <td>#TT-1003</td>
                        <td>Emily Davis</td>
                        <td>Beauty by Sarah</td>
                        <td>Makeup Session</td>
                        <td>Tomorrow, 11:00 AM</td>
                        <td>R350</td>
                        <td><span class="badge badge-info">Confirmed</span></td>
                        <td>
                            <button class="btn btn-sm btn-outline-primary">View</button>
                        </td>
                    </tr>
                    <tr>
                        <td>#TT-1004</td>
                        <td>Robert Taylor</td>
                        <td>Barber Shop</td>
                        <td>Beard Trim</td>
                        <td>Tomorrow, 4:00 PM</td>
                        <td>R120</td>
                        <td><span class="badge badge-warning">Pending</span></td>
                        <td>
                            <button class="btn btn-sm btn-outline-primary">View</button>
                        </td>
                    </tr>
                    <tr>
                        <td>#TT-1005</td>
                        <td>Lisa Smith</td>
                        <td>Style Studio</td>
                        <td>Color Treatment</td>
                        <td>June 15, 12:00 PM</td>
                        <td>R420</td>
                        <td><span class="badge badge-info">Confirmed</span></td>
                        <td>
                            <button class="btn btn-sm btn-outline-primary">View</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="card-footer">
            <nav aria-label="Page navigation">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1">Previous</a>
                    </li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="Bookings.js"></script>
</asp:Content>
