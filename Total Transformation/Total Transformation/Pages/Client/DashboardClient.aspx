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
    <h1>Welcome,
        <asp:Literal ID="litUserName" runat="server" />!</h1>
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
                <div class="card-value">
                    <asp:Literal ID="litUpcomingAppointments" runat="server" /></div>
                <div class="card-footer">
                    <asp:Literal ID="litAppointmentStatus" runat="server" />
                </div>
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
                <div class="card-value">
                    <asp:Literal ID="litFavorites" runat="server" /></div>
                <div class="card-footer">Your favorite practitioners</div>
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
                <div class="card-value">R<asp:Literal ID="litTotalSpent" runat="server" /></div>
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
                <div class="card-value">
                    <asp:Literal ID="litReviews" runat="server" /></div>
                <div class="card-footer">
                    Average
                    <asp:Literal ID="litAvgRating" runat="server" />
                    rating
                </div>
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
                    <asp:Repeater ID="rptRecentActivity" runat="server">
                        <ItemTemplate>
                            <div class="activity-item">
                                <div class="activity-icon primary">
                                    <i class="fas fa-<%# Eval("Icon") %>"></i>
                                </div>
                                <div class="activity-content">
                                    <div class="activity-title"><%# Eval("Title") %></div>
                                    <div class="activity-desc"><%# Eval("Description") %></div>
                                    <div class="activity-time"><%# Eval("TimeAgo") %></div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-12">
            <div class="dashboard-card">
                <div class="card-header">
                    <h5 class="card-title">Upcoming Appointments</h5>
                    <a href="Appointments/Appointments.aspx" class="btn btn-sm btn-outline-primary">View All</a>
                </div>
                <div class="table-responsive">
                    <asp:GridView ID="gvUpcomingAppointments" runat="server" AutoGenerateColumns="false"
                        CssClass="table table-hover" GridLines="None">
                        <Columns>
                            <asp:BoundField DataField="ServiceName" HeaderText="Service" />
                            <asp:BoundField DataField="PractitionerName" HeaderText="Professional" />
                            <asp:BoundField DataField="FormattedDateTime" HeaderText="Date & Time" />
                            <asp:BoundField DataField="Location" HeaderText="Location" />
                            <asp:TemplateField HeaderText="Status">
                                <ItemTemplate>
                                    <span class='badge <%# GetStatusClass(Eval("Status").ToString()) %>'>
                                        <%# Eval("Status") %>
                                    </span>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <a href='Appointments/AppointmentDetails.aspx?id=<%# Eval("BookingID") %>'
                                        class="btn btn-sm btn-outline-primary">Details</a>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <div class="text-center p-4">
                                <i class="fas fa-calendar-times fa-3x text-muted"></i>
                                <p class="mt-2">No upcoming appointments</p>
                            </div>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="DashboardClient.js"></script>
</asp:Content>
