<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="startPage.aspx.cs" Inherits="Total_Transformation.Pages.startPage.startPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Total Transformation - Beauty Services</title>
    <link href="startPage.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Segoe+UI:wght@400;600;700&family=Tomorrow:wght@400;600&display=swap" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <!-- Navigation Bar -->
            <nav class="navbar navbar-expand-lg navbar-dark">
                <a class="navbar-brand" href="#">
                    <span class="logo-text">Total Transformation</span>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Services</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../Signin/Signin.aspx">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn-signup" href="../Signup/Signup.aspx">Sign Up</a>
                        </li>
                    </ul>
                </div>
            </nav>

            <!-- Hero Section -->
            <div class="hero-section">
                <div class="row align-items-center">
                    <div class="col-md-6 hero-content">
                        <h1>Transform Your Look With Ease</h1>
                        <p class="lead">Book beauty services from top professionals in your area with just a few clicks.</p>
                        <div class="hero-buttons">
                            <a href="../Signup/Signup.aspx" class="btn btn-primary btn-lg">Book a Service</a>
                            <a href="../Signup/Signup.aspx" class="btn btn-outline-light btn-lg">Join as Professional</a>
                        </div>
                    </div>
                    <div class="col-md-6 hero-image">
                        <img src="../Images/hero-image.png" alt="Beauty Services" class="img-fluid" />
                    </div>
                </div>
            </div>

            <!-- Services Section -->
            <div class="services-section">
                <h2>Our Services</h2>
                <div class="row">
                    <div class="col-md-4 service-card">
                        <div class="card">
                            <img src="../Images/hair-service.jpg" class="card-img-top" alt="Hair Services" />
                            <div class="card-body">
                                <h5 class="card-title">Hair Services</h5>
                                <p class="card-text">From cuts to coloring, find the perfect stylist for your hair needs.</p>
                                <a href="#" class="btn btn-service">Browse Stylists</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 service-card">
                        <div class="card">
                            <img src="../Images/nail-service.jpg" class="card-img-top" alt="Nail Services" />
                            <div class="card-body">
                                <h5 class="card-title">Nail Services</h5>
                                <p class="card-text">Manicures, pedicures, and nail art from talented technicians.</p>
                                <a href="#" class="btn btn-service">Browse Technicians</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 service-card">
                        <div class="card">
                            <img src="../Images/makeup-service.jpg" class="card-img-top" alt="Makeup Services" />
                            <div class="card-body">
                                <h5 class="card-title">Makeup Services</h5>
                                <p class="card-text">Professional makeup artists for any occasion.</p>
                                <a href="#" class="btn btn-service">Browse Artists</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <footer class="footer">
                <div class="row">
                    <div class="col-md-4">
                        <h5>Total Transformation</h5>
                        <p>Bridging the gap between beauty professionals and clients.</p>
                    </div>
                    <div class="col-md-4">
                        <h5>Quick Links</h5>
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Services</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h5>Contact Us</h5>
                        <p>Email: info@totaltransformation.com</p>
                        <p>Phone: (123) 456-7890</p>
                    </div>
                </div>
                <div class="copyright">
                    <p>&copy; 2023 Total Transformation. All rights reserved.</p>
                </div>
            </footer>
        </div>
    </form>

    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="startPage.js"></script>
</body>
</html>
