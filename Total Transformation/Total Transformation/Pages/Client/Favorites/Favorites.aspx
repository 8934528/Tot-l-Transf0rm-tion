<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="Favorites.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    My Favorites | Total Transformation
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Favorites.css" rel="stylesheet" />
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
    <a href="Favorites.aspx" class="menu-item active">
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
    <h1>My Favorites</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../DashboardClient.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Favorites</li>
        </ol>
    </nav>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="favorites-container">
        <div class="favorites-filter">
            <div class="btn-group btn-group-toggle" data-toggle="buttons">
                <label class="btn btn-filter active">
                    <input type="radio" name="filter" autocomplete="off" checked />
                    All
                </label>
                <label class="btn btn-filter">
                    <input type="radio" name="filter" autocomplete="off" />
                    Professionals
                </label>
                <label class="btn btn-filter">
                    <input type="radio" name="filter" autocomplete="off" />
                    Services
                </label>
                <label class="btn btn-filter">
                    <input type="radio" name="filter" autocomplete="off" />
                    Salons
                </label>
            </div>
        </div>

        <div class="favorites-list">
            <div class="favorite-card professional">
                <div class="favorite-img">
                    <img src="../../Images/professional1.jpg" alt="Sarah Johnson" />
                    <button class="btn-remove"><i class="fas fa-times"></i></button>
                </div>
                <div class="favorite-info">
                    <h5 class="favorite-title">Sarah Johnson</h5>
                    <div class="favorite-specialty">Hair Stylist</div>
                    <div class="favorite-rating">
                        <i class="fas fa-star"></i>4.8 (24 reviews)
                    </div>
                    <div class="favorite-location">
                        <i class="fas fa-map-marker-alt"></i>2 km away
                    </div>
                    <div class="favorite-actions">
                        <button class="btn btn-book">Book Now</button>
                        <button class="btn btn-view">View Profile</button>
                    </div>
                </div>
            </div>

            <div class="favorite-card service">
                <div class="favorite-img">
                    <img src="../../Images/nail-service.jpg" alt="Manicure" />
                    <button class="btn-remove"><i class="fas fa-times"></i></button>
                </div>
                <div class="favorite-info">
                    <h5 class="favorite-title">Manicure</h5>
                    <div class="favorite-practitioner">Nail Haven</div>
                    <div class="favorite-rating">
                        <i class="fas fa-star"></i>4.6 (18 reviews)
                    </div>
                    <div class="favorite-price">R180 - R250</div>
                    <div class="favorite-actions">
                        <button class="btn btn-book">Book Now</button>
                        <button class="btn btn-view">View Details</button>
                    </div>
                </div>
            </div>

            <div class="favorite-card salon">
                <div class="favorite-img">
                    <img src="../../Images/salon1.jpg" alt="Style Studio" />
                    <button class="btn-remove"><i class="fas fa-times"></i></button>
                </div>
                <div class="favorite-info">
                    <h5 class="favorite-title">Style Studio</h5>
                    <div class="favorite-specialty">Hair Salon</div>
                    <div class="favorite-rating">
                        <i class="fas fa-star"></i>4.7 (42 reviews)
                    </div>
                    <div class="favorite-location">
                        <i class="fas fa-map-marker-alt"></i>1.5 km away
                    </div>
                    <div class="favorite-actions">
                        <button class="btn btn-book">Book Now</button>
                        <button class="btn btn-view">View Salon</button>
                    </div>
                </div>
            </div>

            <div class="favorite-card professional">
                <div class="favorite-img">
                    <img src="../../Images/professional2.jpg" alt="Michael Brown" />
                    <button class="btn-remove"><i class="fas fa-times"></i></button>
                </div>
                <div class="favorite-info">
                    <h5 class="favorite-title">Michael Brown</h5>
                    <div class="favorite-specialty">Barber</div>
                    <div class="favorite-rating">
                        <i class="fas fa-star"></i>4.6 (15 reviews)
                    </div>
                    <div class="favorite-location">
                        <i class="fas fa-map-marker-alt"></i>3 km away
                    </div>
                    <div class="favorite-actions">
                        <button class="btn btn-book">Book Now</button>
                        <button class="btn btn-view">View Profile</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="Favorites.js"></script>
</asp:Content>
