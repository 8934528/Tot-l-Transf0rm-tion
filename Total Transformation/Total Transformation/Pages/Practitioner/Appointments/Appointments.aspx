<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="Appointments.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Appointments | Practitioner
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Appointments.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="SidebarContent" runat="server">
    <div class="menu-category">Menu</div>
    <a href="../DashPractitioner.aspx" class="menu-item">
        <i class="fas fa-home"></i>
        <span class="menu-text">Dashboard</span>
    </a>
    <a href="Appointments.aspx" class="menu-item active">
        <i class="fas fa-calendar-alt"></i>
        <span class="menu-text">Appointments</span>
    </a>
    <a href="../Services/Services.aspx" class="menu-item">
        <i class="fas fa-cut"></i>
        <span class="menu-text">Services</span>
    </a>
    <a href="../Earnings/Earnings.aspx" class="menu-item">
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
    <h1>Appointments</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../DashPractitioner.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Appointments</li>
        </ol>
    </nav>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="appointments-header">
        <div class="appointments-title">
            <h2>Manage Appointments</h2>
            <p>View and manage your upcoming and past appointments</p>
        </div>
        <div class="appointments-actions">
            <div class="dropdown">
                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                    <i class="fas fa-filter"></i> Filter
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">All Appointments</a>
                    <a class="dropdown-item" href="#">Upcoming</a>
                    <a class="dropdown-item" href="#">Completed</a>
                    <a class="dropdown-item" href="#">Cancelled</a>
                </div>
            </div>
            <div class="date-picker">
                <input type="date" class="form-control" />
            </div>
        </div>
    </div>

    <div class="appointments-container">
        <div class="appointments-calendar">
            <div id="practitionerCalendar"></div>
        </div>
        <div class="appointments-list">
            <div class="appointments-list-header">
                <h3>Today's Appointments</h3>
                <span class="badge badge-primary">5</span>
            </div>
            <div class="appointment-items">
                <div class="appointment-item">
                    <div class="appointment-time">09:00 AM</div>
                    <div class="appointment-details">
                        <div class="appointment-client">
                            <div class="client-avatar">
                                <img src="../../../Images/avatar1.jpg" alt="Client" />
                            </div>
                            <div class="client-info">
                                <h4>Sarah Johnson</h4>
                                <p>Haircut & Styling</p>
                            </div>
                        </div>
                        <div class="appointment-status">
                            <span class="badge badge-success">Confirmed</span>
                        </div>
                    </div>
                    <div class="appointment-actions">
                        <button class="btn btn-sm btn-outline-primary"><i class="fas fa-eye"></i></button>
                        <button class="btn btn-sm btn-outline-secondary"><i class="fas fa-edit"></i></button>
                    </div>
                </div>
                <div class="appointment-item">
                    <div class="appointment-time">10:30 AM</div>
                    <div class="appointment-details">
                        <div class="appointment-client">
                            <div class="client-avatar">
                                <img src="../../../Images/avatar2.jpg" alt="Client" />
                            </div>
                            <div class="client-info">
                                <h4>Michael Brown</h4>
                                <p>Beard Trim</p>
                            </div>
                        </div>
                        <div class="appointment-status">
                            <span class="badge badge-success">Confirmed</span>
                        </div>
                    </div>
                    <div class="appointment-actions">
                        <button class="btn btn-sm btn-outline-primary"><i class="fas fa-eye"></i></button>
                        <button class="btn btn-sm btn-outline-secondary"><i class="fas fa-edit"></i></button>
                    </div>
                </div>
                <div class="appointment-item">
                    <div class="appointment-time">12:00 PM</div>
                    <div class="appointment-details">
                        <div class="appointment-client">
                            <div class="client-avatar">
                                <img src="../../../Images/avatar3.jpg" alt="Client" />
                            </div>
                            <div class="client-info">
                                <h4>Lisa Smith</h4>
                                <p>Color Treatment</p>
                            </div>
                        </div>
                        <div class="appointment-status">
                            <span class="badge badge-success">Confirmed</span>
                        </div>
                    </div>
                    <div class="appointment-actions">
                        <button class="btn btn-sm btn-outline-primary"><i class="fas fa-eye"></i></button>
                        <button class="btn btn-sm btn-outline-secondary"><i class="fas fa-edit"></i></button>
                    </div>
                </div>
                <div class="appointment-item">
                    <div class="appointment-time">02:30 PM</div>
                    <div class="appointment-details">
                        <div class="appointment-client">
                            <div class="client-avatar">
                                <img src="../../../Images/avatar4.jpg" alt="Client" />
                            </div>
                            <div class="client-info">
                                <h4>David Wilson</h4>
                                <p>Haircut</p>
                            </div>
                        </div>
                        <div class="appointment-status">
                            <span class="badge badge-warning">Pending</span>
                        </div>
                    </div>
                    <div class="appointment-actions">
                        <button class="btn btn-sm btn-outline-primary"><i class="fas fa-eye"></i></button>
                        <button class="btn btn-sm btn-outline-secondary"><i class="fas fa-edit"></i></button>
                    </div>
                </div>
                <div class="appointment-item">
                    <div class="appointment-time">04:00 PM</div>
                    <div class="appointment-details">
                        <div class="appointment-client">
                            <div class="client-avatar">
                                <img src="../../../Images/avatar5.jpg" alt="Client" />
                            </div>
                            <div class="client-info">
                                <h4>Emily Davis</h4>
                                <p>Styling</p>
                            </div>
                        </div>
                        <div class="appointment-status">
                            <span class="badge badge-danger">Cancelled</span>
                        </div>
                    </div>
                    <div class="appointment-actions">
                        <button class="btn btn-sm btn-outline-primary"><i class="fas fa-eye"></i></button>
                        <button class="btn btn-sm btn-outline-secondary"><i class="fas fa-edit"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css" rel="stylesheet" />
    <script src="Appointments.js"></script>
</asp:Content>
