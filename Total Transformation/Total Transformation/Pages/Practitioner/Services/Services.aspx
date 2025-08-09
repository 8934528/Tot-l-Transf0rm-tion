<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm18" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Services | Practitioner
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Services.css" rel="stylesheet" />
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
    <a href="Services.aspx" class="menu-item active">
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
    <h1>Services</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../DashPractitioner.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Services</li>
        </ol>
    </nav>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="services-header">
        <div class="services-title">
            <h2>Your Services</h2>
            <p>Manage the services you offer to clients</p>
        </div>
        <div class="services-actions">
            <button class="btn btn-primary" data-toggle="modal" data-target="#addServiceModal">
                <i class="fas fa-plus"></i>Add Service
            </button>
        </div>
    </div>

    <div class="services-container">
        <div class="service-card">
            <div class="service-image">
                <img src="../../../Images/service1.jpg" alt="Haircut & Styling" />
            </div>
            <div class="service-content">
                <div class="service-header">
                    <h3>Haircut & Styling</h3>
                    <div class="service-price">R120</div>
                </div>
                <div class="service-duration">
                    <i class="fas fa-clock"></i>1 hour
                </div>
                <div class="service-description">
                    Professional haircut with blow-dry and styling. Includes consultation to determine the best style for your face shape and hair type.
                </div>
                <div class="service-stats">
                    <div class="stat-item">
                        <i class="fas fa-calendar-check"></i>12 bookings
                    </div>
                    <div class="stat-item">
                        <i class="fas fa-star"></i>4.8 (24 reviews)
                    </div>
                </div>
                <div class="service-actions">
                    <button class="btn btn-sm btn-outline-primary edit-service">
                        <i class="fas fa-edit"></i>Edit
                    </button>
                    <button class="btn btn-sm btn-outline-danger delete-service">
                        <i class="fas fa-trash"></i>Delete
                    </button>
                </div>
            </div>
        </div>

        <div class="service-card">
            <div class="service-image">
                <img src="../../../Images/service2.jpg" alt="Color Treatment" />
            </div>
            <div class="service-content">
                <div class="service-header">
                    <h3>Color Treatment</h3>
                    <div class="service-price">R250</div>
                </div>
                <div class="service-duration">
                    <i class="fas fa-clock"></i>2 hours
                </div>
                <div class="service-description">
                    Full color service including consultation, application, and styling. We use high-quality, ammonia-free color products.
                </div>
                <div class="service-stats">
                    <div class="stat-item">
                        <i class="fas fa-calendar-check"></i>5 bookings
                    </div>
                    <div class="stat-item">
                        <i class="fas fa-star"></i>5.0 (8 reviews)
                    </div>
                </div>
                <div class="service-actions">
                    <button class="btn btn-sm btn-outline-primary edit-service">
                        <i class="fas fa-edit"></i>Edit
                    </button>
                    <button class="btn btn-sm btn-outline-danger delete-service">
                        <i class="fas fa-trash"></i>Delete
                    </button>
                </div>
            </div>
        </div>

        <div class="service-card">
            <div class="service-image">
                <img src="../../../Images/service3.jpg" alt="Beard Trim" />
            </div>
            <div class="service-content">
                <div class="service-header">
                    <h3>Beard Trim</h3>
                    <div class="service-price">R80</div>
                </div>
                <div class="service-duration">
                    <i class="fas fa-clock"></i>30 mins
                </div>
                <div class="service-description">
                    Professional beard shaping and trimming with hot towel treatment. Includes mustache grooming.
                </div>
                <div class="service-stats">
                    <div class="stat-item">
                        <i class="fas fa-calendar-check"></i>4 bookings
                    </div>
                    <div class="stat-item">
                        <i class="fas fa-star"></i>4.5 (6 reviews)
                    </div>
                </div>
                <div class="service-actions">
                    <button class="btn btn-sm btn-outline-primary edit-service">
                        <i class="fas fa-edit"></i>Edit
                    </button>
                    <button class="btn btn-sm btn-outline-danger delete-service">
                        <i class="fas fa-trash"></i>Delete
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- Add Service Modal -->
    <div class="modal fade" id="addServiceModal" tabindex="-1" role="dialog" aria-labelledby="addServiceModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addServiceModalLabel">Add New Service</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label>Service Name</label>
                            <input type="text" class="form-control" placeholder="e.g. Haircut, Manicure, etc." />
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Price (ZAR)</label>
                                <input type="number" class="form-control" placeholder="0.00" />
                            </div>
                            <div class="form-group col-md-6">
                                <label>Duration</label>
                                <select class="form-control">
                                    <option>15 minutes</option>
                                    <option>30 minutes</option>
                                    <option>45 minutes</option>
                                    <option selected>1 hour</option>
                                    <option>1.5 hours</option>
                                    <option>2 hours</option>
                                    <option>2.5 hours</option>
                                    <option>3 hours</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Category</label>
                            <select class="form-control">
                                <option>Hair</option>
                                <option>Beard</option>
                                <option>Makeup</option>
                                <option>Nails</option>
                                <option>Other</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea class="form-control" rows="4" placeholder="Describe the service in detail"></textarea>
                        </div>
                        <div class="form-group">
                            <label>Service Image</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="serviceImage">
                                <label class="custom-file-label" for="serviceImage">Choose image</label>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary">Save Service</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Edit Service Modal -->
    <div class="modal fade" id="editServiceModal" tabindex="-1" role="dialog" aria-labelledby="editServiceModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editServiceModalLabel">Edit Service</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label>Service Name</label>
                            <input type="text" class="form-control" value="Haircut & Styling" />
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Price (ZAR)</label>
                                <input type="number" class="form-control" value="120" />
                            </div>
                            <div class="form-group col-md-6">
                                <label>Duration</label>
                                <select class="form-control">
                                    <option>15 minutes</option>
                                    <option>30 minutes</option>
                                    <option>45 minutes</option>
                                    <option selected>1 hour</option>
                                    <option>1.5 hours</option>
                                    <option>2 hours</option>
                                    <option>2.5 hours</option>
                                    <option>3 hours</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Category</label>
                            <select class="form-control">
                                <option selected>Hair</option>
                                <option>Beard</option>
                                <option>Makeup</option>
                                <option>Nails</option>
                                <option>Other</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea class="form-control" rows="4">Professional haircut with blow-dry and styling. Includes consultation to determine the best style for your face shape and hair type.</textarea>
                        </div>
                        <div class="form-group">
                            <label>Service Image</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="editServiceImage">
                                <label class="custom-file-label" for="editServiceImage">Choose new image</label>
                            </div>
                            <small class="form-text text-muted">Current image:</small>
                            <img src="../../../Images/service1.jpg" alt="Current Service" class="img-thumbnail mt-2" style="max-height: 100px;" />
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary">Update Service</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="Services.js"></script>
</asp:Content>
