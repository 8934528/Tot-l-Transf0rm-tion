<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Services Management | Total Transformation

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Services.css" rel="stylesheet" />
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
    <a href="Services.aspx" class="menu-item active">
        <i class="fas fa-cut"></i>
        <span class="menu-text">Services</span>
    </a>
    <a href="../Bookings/Bookings.aspx" class="menu-item">
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
    <h1>Services Management</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../AdminDash.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Services</li>
        </ol>
    </nav>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard-card">
        <div class="card-header">
            <h5 class="card-title">All Services</h5>
            <div class="header-actions">
                <div class="search-box">
                    <input type="text" placeholder="Search services..." />
                    <button><i class="fas fa-search"></i></button>
                </div>
                <button class="btn btn-primary" data-toggle="modal" data-target="#addServiceModal">
                    <i class="fas fa-plus"></i>Add Service
                </button>
            </div>
        </div>
        <div class="table-responsive">
            <table class="table table-hover" id="servicesTable">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Service Name</th>
                        <th>Category</th>
                        <th>Practitioners</th>
                        <th>Avg. Price</th>
                        <th>Bookings</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>SRV-001</td>
                        <td>Haircut & Styling</td>
                        <td>Hair Services</td>
                        <td>24</td>
                        <td>R250</td>
                        <td>156</td>
                        <td><span class="badge badge-success">Active</span></td>
                        <td>
                            <button class="btn btn-sm btn-outline-primary">Edit</button>
                        </td>
                    </tr>
                    <tr>
                        <td>SRV-002</td>
                        <td>Manicure</td>
                        <td>Nail Services</td>
                        <td>18</td>
                        <td>R180</td>
                        <td>98</td>
                        <td><span class="badge badge-success">Active</span></td>
                        <td>
                            <button class="btn btn-sm btn-outline-primary">Edit</button>
                        </td>
                    </tr>
                    <tr>
                        <td>SRV-003</td>
                        <td>Makeup Application</td>
                        <td>Makeup</td>
                        <td>12</td>
                        <td>R350</td>
                        <td>75</td>
                        <td><span class="badge badge-success">Active</span></td>
                        <td>
                            <button class="btn btn-sm btn-outline-primary">Edit</button>
                        </td>
                    </tr>
                    <tr>
                        <td>SRV-004</td>
                        <td>Beard Trim</td>
                        <td>Barber</td>
                        <td>15</td>
                        <td>R120</td>
                        <td>64</td>
                        <td><span class="badge badge-success">Active</span></td>
                        <td>
                            <button class="btn btn-sm btn-outline-primary">Edit</button>
                        </td>
                    </tr>
                    <tr>
                        <td>SRV-005</td>
                        <td>Facial Treatment</td>
                        <td>Spa</td>
                        <td>8</td>
                        <td>R400</td>
                        <td>32</td>
                        <td><span class="badge badge-warning">Pending</span></td>
                        <td>
                            <button class="btn btn-sm btn-outline-primary">Edit</button>
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

    <!-- Add Service Modal -->
    <div class="modal fade" id="addServiceModal" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Add New Service</h5>
                    <button type="button" class="close" data-dismiss="modal">
                        <span>&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Service Name</label>
                        <input type="text" class="form-control" placeholder="Enter service name" />
                    </div>
                    <div class="form-group">
                        <label>Category</label>
                        <select class="form-control">
                            <option>Hair Services</option>
                            <option>Nail Services</option>
                            <option>Makeup</option>
                            <option>Barber</option>
                            <option>Spa</option>
                            <option>Other</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <textarea class="form-control" rows="3" placeholder="Enter service description"></textarea>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Duration (minutes)</label>
                                <input type="number" class="form-control" placeholder="30" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Base Price (R)</label>
                                <input type="number" class="form-control" placeholder="250" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Service Image</label>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="serviceImage">
                            <label class="custom-file-label" for="serviceImage">Choose image</label>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary">Add Service</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="Services.js"></script>
</asp:Content>
