<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="BookServices.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Book Services | Total Transformation
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="BookServices.css" rel="stylesheet" />
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
    <a href="BookServices.aspx" class="menu-item active">
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
    <h1>Book Services</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../DashboardClient.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Book Services</li>
        </ol>
    </nav>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="book-services-container">
        <div class="booking-steps">
            <div class="step active" data-step="1">
                <div class="step-number">1</div>
                <div class="step-title">Choose Service</div>
            </div>
            <div class="step" data-step="2">
                <div class="step-number">2</div>
                <div class="step-title">Select Professional</div>
            </div>
            <div class="step" data-step="3">
                <div class="step-number">3</div>
                <div class="step-title">Pick Date & Time</div>
            </div>
            <div class="step" data-step="4">
                <div class="step-number">4</div>
                <div class="step-title">Confirm Booking</div>
            </div>
        </div>

        <div class="booking-content">
            <!-- Step 1: Choose Service -->
            <div class="booking-step active" id="step-1">
                <div class="service-categories">
                    <div class="category-filter">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-category active">
                                <input type="radio" name="category" autocomplete="off" checked />
                                All
                            </label>
                            <label class="btn btn-category">
                                <input type="radio" name="category" autocomplete="off" />
                                Hair
                            </label>
                            <label class="btn btn-category">
                                <input type="radio" name="category" autocomplete="off" />
                                Nails
                            </label>
                            <label class="btn btn-category">
                                <input type="radio" name="category" autocomplete="off" />
                                Makeup
                            </label>
                            <label class="btn btn-category">
                                <input type="radio" name="category" autocomplete="off" />
                                Other
                            </label>
                        </div>
                    </div>
                    <div class="service-search">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search services..." />
                            <div class="input-group-append">
                                <button class="btn btn-search" type="button"><i class="fas fa-search"></i></button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="services-list">
                    <div class="service-card">
                        <div class="service-img">
                            <img src="../../Images/hair-service.jpg" alt="Haircut & Styling" />
                            <button class="btn-favorite"><i class="far fa-heart"></i></button>
                        </div>
                        <div class="service-body">
                            <h5 class="service-title">Haircut & Styling</h5>
                            <div class="service-price">R250 - R400</div>
                            <div class="service-duration"><i class="far fa-clock"></i>45-60 mins</div>
                            <div class="service-description">
                                Professional haircut and styling tailored to your preferences and face shape.
                            </div>
                            <button class="btn btn-select">Select</button>
                        </div>
                    </div>

                    <div class="service-card">
                        <div class="service-img">
                            <img src="../../Images/nail-service.jpg" alt="Manicure" />
                            <button class="btn-favorite"><i class="far fa-heart"></i></button>
                        </div>
                        <div class="service-body">
                            <h5 class="service-title">Manicure</h5>
                            <div class="service-price">R180 - R250</div>
                            <div class="service-duration"><i class="far fa-clock"></i>45 mins</div>
                            <div class="service-description">
                                Basic manicure including nail shaping, cuticle care, and polish application.
                            </div>
                            <button class="btn btn-select">Select</button>
                        </div>
                    </div>

                    <div class="service-card">
                        <div class="service-img">
                            <img src="../../Images/makeup-service.jpg" alt="Makeup Application" />
                            <button class="btn-favorite"><i class="far fa-heart"></i></button>
                        </div>
                        <div class="service-body">
                            <h5 class="service-title">Makeup Application</h5>
                            <div class="service-price">R350 - R500</div>
                            <div class="service-duration"><i class="far fa-clock"></i>60-90 mins</div>
                            <div class="service-description">
                                Professional makeup application for special occasions or everyday wear.
                            </div>
                            <button class="btn btn-select">Select</button>
                        </div>
                    </div>

                    <div class="service-card">
                        <div class="service-img">
                            <img src="../../Images/beard-trim.jpg" alt="Beard Trim" />
                            <button class="btn-favorite"><i class="far fa-heart"></i></button>
                        </div>
                        <div class="service-body">
                            <h5 class="service-title">Beard Trim</h5>
                            <div class="service-price">R120 - R180</div>
                            <div class="service-duration"><i class="far fa-clock"></i>30 mins</div>
                            <div class="service-description">
                                Precision beard trimming and shaping to maintain your desired look.
                            </div>
                            <button class="btn btn-select">Select</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Step 2: Select Professional (hidden initially) -->
            <div class="booking-step" id="step-2">
                <!-- Content will be loaded dynamically -->
            </div>

            <!-- Step 3: Pick Date & Time (hidden initially) -->
            <div class="booking-step" id="step-3">
                <!-- Content will be loaded dynamically -->
            </div>

            <!-- Step 4: Confirm Booking (hidden initially) -->
            <div class="booking-step" id="step-4">
                <!-- Content will be loaded dynamically -->
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="BookServices.js"></script>
</asp:Content>
