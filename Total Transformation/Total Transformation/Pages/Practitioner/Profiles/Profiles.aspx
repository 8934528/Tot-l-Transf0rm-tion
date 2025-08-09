<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="Profiles.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Profile | Practitioner
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Profiles.css" rel="stylesheet" />
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
    <a href="../Earnings/Earnings.aspx" class="menu-item">
        <i class="fas fa-chart-line"></i>
        <span class="menu-text">Earnings</span>
    </a>
    <div class="menu-category">Account</div>
    <a href="Profiles.aspx" class="menu-item active">
        <i class="fas fa-user"></i>
        <span class="menu-text">Profile</span>
    </a>
    <a href="../Settings/Settings.aspx" class="menu-item">
        <i class="fas fa-cog"></i>
        <span class="menu-text">Settings</span>
    </a>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PageHeaderContent" runat="server">
    <h1>Profile</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../DashPractitioner.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Profile</li>
        </ol>
    </nav>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="profile-container">
        <div class="profile-sidebar">
            <div class="profile-card">
                <div class="profile-avatar">
                    <img src="../../../Images/practitioner-avatar.jpg" alt="Profile" />
                    <button class="btn btn-sm btn-primary change-avatar">
                        <i class="fas fa-camera"></i> Change
                    </button>
                </div>
                <div class="profile-info">
                    <h3>Jane Doe</h3>
                    <p class="profile-title">Professional Hair Stylist</p>
                    <div class="profile-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                        <span>4.5 (24 reviews)</span>
                    </div>
                    <div class="profile-stats">
                        <div class="stat-item">
                            <div class="stat-value">186</div>
                            <div class="stat-label">Clients</div>
                        </div>
                        <div class="stat-item">
                            <div class="stat-value">324</div>
                            <div class="stat-label">Services</div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="profile-menu">
                <a href="#personal-info" class="menu-item active">
                    <i class="fas fa-user-circle"></i>
                    <span>Personal Info</span>
                </a>
                <a href="#professional-info" class="menu-item">
                    <i class="fas fa-briefcase"></i>
                    <span>Professional Info</span>
                </a>
                <a href="#portfolio" class="menu-item">
                    <i class="fas fa-images"></i>
                    <span>Portfolio</span>
                </a>
                <a href="#reviews" class="menu-item">
                    <i class="fas fa-star"></i>
                    <span>Reviews</span>
                </a>
                <a href="#social-links" class="menu-item">
                    <i class="fas fa-share-alt"></i>
                    <span>Social Links</span>
                </a>
            </div>
        </div>
        
        <div class="profile-content">
            <div class="profile-section active" id="personal-info">
                <div class="section-header">
                    <h2>Personal Information</h2>
                    <button class="btn btn-sm btn-outline-primary edit-btn">
                        <i class="fas fa-edit"></i> Edit
                    </button>
                </div>
                <div class="section-content">
                    <form>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>First Name</label>
                                <input type="text" class="form-control" value="Jane" readonly />
                            </div>
                            <div class="form-group col-md-6">
                                <label>Last Name</label>
                                <input type="text" class="form-control" value="Doe" readonly />
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" class="form-control" value="jane.doe@example.com" readonly />
                        </div>
                        <div class="form-group">
                            <label>Phone Number</label>
                            <input type="tel" class="form-control" value="+27 12 345 6789" readonly />
                        </div>
                        <div class="form-group">
                            <label>Date of Birth</label>
                            <input type="date" class="form-control" value="1985-06-15" readonly />
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <textarea class="form-control" rows="3" readonly>123 Beauty Street, Pretoria, 0001</textarea>
                        </div>
                        <div class="form-group">
                            <label>Bio</label>
                            <textarea class="form-control" rows="5" readonly>Professional hairstylist with over 10 years of experience specializing in modern cuts, coloring, and styling. Passionate about helping clients look and feel their best.</textarea>
                        </div>
                        <div class="form-actions">
                            <button type="button" class="btn btn-primary save-btn" style="display: none;">Save Changes</button>
                            <button type="button" class="btn btn-outline-secondary cancel-btn" style="display: none;">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>
            
            <div class="profile-section" id="professional-info">
                <div class="section-header">
                    <h2>Professional Information</h2>
                    <button class="btn btn-sm btn-outline-primary edit-btn">
                        <i class="fas fa-edit"></i> Edit
                    </button>
                </div>
                <div class="section-content">
                    <form>
                        <div class="form-group">
                            <label>Professional Title</label>
                            <input type="text" class="form-control" value="Professional Hair Stylist" readonly />
                        </div>
                        <div class="form-group">
                            <label>Specialization</label>
                            <select class="form-control" disabled>
                                <option>Hair Stylist</option>
                                <option>Barber</option>
                                <option>Makeup Artist</option>
                                <option>Nail Technician</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Years of Experience</label>
                            <input type="number" class="form-control" value="10" readonly />
                        </div>
                        <div class="form-group">
                            <label>Certifications</label>
                            <textarea class="form-control" rows="3" readonly>• Certified Hair Stylist (2010)
• Advanced Coloring Techniques (2015)
• Modern Hair Cutting (2018)</textarea>
                        </div>
                        <div class="form-group">
                            <label>Hourly Rate (ZAR)</label>
                            <input type="number" class="form-control" value="250" readonly />
                        </div>
                        <div class="form-actions">
                            <button type="button" class="btn btn-primary save-btn" style="display: none;">Save Changes</button>
                            <button type="button" class="btn btn-outline-secondary cancel-btn" style="display: none;">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>
            
            <div class="profile-section" id="portfolio">
                <div class="section-header">
                    <h2>Portfolio</h2>
                    <button class="btn btn-sm btn-primary">
                        <i class="fas fa-plus"></i> Add Photo
                    </button>
                </div>
                <div class="section-content">
                    <div class="portfolio-grid">
                        <div class="portfolio-item">
                            <img src="../../../Images/portfolio1.jpg" alt="Portfolio" />
                            <div class="portfolio-overlay">
                                <button class="btn btn-sm btn-outline-light"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-sm btn-outline-light"><i class="fas fa-trash"></i></button>
                            </div>
                        </div>
                        <div class="portfolio-item">
                            <img src="../../../Images/portfolio2.jpg" alt="Portfolio" />
                            <div class="portfolio-overlay">
                                <button class="btn btn-sm btn-outline-light"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-sm btn-outline-light"><i class="fas fa-trash"></i></button>
                            </div>
                        </div>
                        <div class="portfolio-item">
                            <img src="../../../Images/portfolio3.jpg" alt="Portfolio" />
                            <div class="portfolio-overlay">
                                <button class="btn btn-sm btn-outline-light"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-sm btn-outline-light"><i class="fas fa-trash"></i></button>
                            </div>
                        </div>
                        <div class="portfolio-item">
                            <img src="../../../Images/portfolio4.jpg" alt="Portfolio" />
                            <div class="portfolio-overlay">
                                <button class="btn btn-sm btn-outline-light"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-sm btn-outline-light"><i class="fas fa-trash"></i></button>
                            </div>
                        </div>
                        <div class="portfolio-item">
                            <img src="../../../Images/portfolio5.jpg" alt="Portfolio" />
                            <div class="portfolio-overlay">
                                <button class="btn btn-sm btn-outline-light"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-sm btn-outline-light"><i class="fas fa-trash"></i></button>
                            </div>
                        </div>
                        <div class="portfolio-item">
                            <img src="../../../Images/portfolio6.jpg" alt="Portfolio" />
                            <div class="portfolio-overlay">
                                <button class="btn btn-sm btn-outline-light"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-sm btn-outline-light"><i class="fas fa-trash"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="profile-section" id="reviews">
                <div class="section-header">
                    <h2>Client Reviews</h2>
                </div>
                <div class="section-content">
                    <div class="review-item">
                        <div class="review-header">
                            <div class="reviewer-avatar">
                                <img src="../../../Images/avatar1.jpg" alt="Client" />
                            </div>
                            <div class="reviewer-info">
                                <h4>Sarah Johnson</h4>
                                <div class="review-rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </div>
                            <div class="review-time">2 days ago</div>
                        </div>
                        <div class="review-content">
                            "Jane gave me the perfect haircut! She really listened to what I wanted and delivered exactly that. The salon was clean and comfortable, and Jane was professional yet friendly. Will definitely be coming back!"
                        </div>
                    </div>
                    
                    <div class="review-item">
                        <div class="review-header">
                            <div class="reviewer-avatar">
                                <img src="../../../Images/avatar2.jpg" alt="Client" />
                            </div>
                            <div class="reviewer-info">
                                <h4>Michael Brown</h4>
                                <div class="review-rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                </div>
                            </div>
                            <div class="review-time">1 week ago</div>
                        </div>
                        <div class="review-content">
                            "Great beard trim and styling. Jane knows exactly how to shape a beard to complement the face shape. Only reason for 4.5 instead of 5 is that I had to wait about 10 minutes past my appointment time."
                        </div>
                    </div>
                    
                    <div class="review-item">
                        <div class="review-header">
                            <div class="reviewer-avatar">
                                <img src="../../../Images/avatar3.jpg" alt="Client" />
                            </div>
                            <div class="reviewer-info">
                                <h4>Lisa Smith</h4>
                                <div class="review-rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </div>
                            <div class="review-time">2 weeks ago</div>
                        </div>
                        <div class="review-content">
                            "Absolutely love my new color! Jane took the time to understand exactly what I wanted and recommended a shade that would work well with my skin tone. The whole experience was wonderful and I've received so many compliments!"
                        </div>
                    </div>
                    
                    <div class="review-pagination">
                        <nav>
                            <ul class="pagination">
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
            </div>
            
            <div class="profile-section" id="social-links">
                <div class="section-header">
                    <h2>Social Links</h2>
                    <button class="btn btn-sm btn-outline-primary edit-btn">
                        <i class="fas fa-edit"></i> Edit
                    </button>
                </div>
                <div class="section-content">
                    <form>
                        <div class="form-group">
                            <label><i class="fab fa-facebook-f"></i> Facebook</label>
                            <input type="url" class="form-control" value="https://facebook.com/janedoe" readonly />
                        </div>
                        <div class="form-group">
                            <label><i class="fab fa-instagram"></i> Instagram</label>
                            <input type="url" class="form-control" value="https://instagram.com/janedoe" readonly />
                        </div>
                        <div class="form-group">
                            <label><i class="fab fa-twitter"></i> Twitter</label>
                            <input type="url" class="form-control" value="https://twitter.com/janedoe" readonly />
                        </div>
                        <div class="form-group">
                            <label><i class="fab fa-pinterest-p"></i> Pinterest</label>
                            <input type="url" class="form-control" value="https://pinterest.com/janedoe" readonly />
                        </div>
                        <div class="form-group">
                            <label><i class="fab fa-youtube"></i> YouTube</label>
                            <input type="url" class="form-control" value="https://youtube.com/janedoe" readonly />
                        </div>
                        <div class="form-actions">
                            <button type="button" class="btn btn-primary save-btn" style="display: none;">Save Changes</button>
                            <button type="button" class="btn btn-outline-secondary cancel-btn" style="display: none;">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="Profiles.js"></script>
</asp:Content>
