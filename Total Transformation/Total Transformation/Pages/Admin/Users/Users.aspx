<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    User Management | Total Transformation
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Users.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="SidebarContent" runat="server">
    <div class="menu-category">Menu</div>
    <a href="../AdminDash.aspx" class="menu-item">
        <i class="fas fa-home"></i>
        <span class="menu-text">Dashboard</span>
    </a>
    <a href="Users.aspx" class="menu-item active">
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
    <h1>User Management</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../AdminDash.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Users</li>
        </ol>
    </nav>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard-card">
        <div class="card-header">
            <h5 class="card-title">All Users</h5>
            <div class="header-actions">
                <div class="search-box">
                    <input type="text" placeholder="Search users..." />
                    <button><i class="fas fa-search"></i></button>
                </div>
                <div class="dropdown">
                    <button class="btn btn-outline-primary dropdown-toggle" type="button" data-toggle="dropdown">
                        <i class="fas fa-filter"></i>Filter
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="#">All Users</a>
                        <a class="dropdown-item" href="#">Clients</a>
                        <a class="dropdown-item" href="#">Practitioners</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Active</a>
                        <a class="dropdown-item" href="#">Pending</a>
                        <a class="dropdown-item" href="#">Suspended</a>
                    </div>
                </div>
                <button class="btn btn-primary" data-toggle="modal" data-target="#newUserModal">
                    <i class="fas fa-plus"></i>Add User
                </button>
            </div>
        </div>
        <div class="table-responsive">
            <table class="table table-hover" id="usersTable">
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Type</th>
                        <th>Joined</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>USR-1001</td>
                        <td>
                            <div class="user-info">
                                <div class="user-avatar">
                                    <img src="../../Images/user1.jpg" alt="User" />
                                </div>
                                <div class="user-details">
                                    <div class="user-name">Sarah Johnson</div>
                                    <div class="user-phone">+27 83 123 4567</div>
                                </div>
                            </div>
                        </td>
                        <td>sarah@example.com</td>
                        <td><span class="badge badge-success">Client</span></td>
                        <td>Jan 15, 2023</td>
                        <td><span class="badge badge-success">Active</span></td>
                        <td>
                            <div class="dropdown">
                                <button class="btn btn-sm btn-outline-primary dropdown-toggle" type="button" data-toggle="dropdown">
                                    <i class="fas fa-ellipsis-v"></i>
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#"><i class="fas fa-eye"></i>View</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-edit"></i>Edit</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-lock"></i>Reset Password</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item text-danger" href="#"><i class="fas fa-ban"></i>Suspend</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>USR-1002</td>
                        <td>
                            <div class="user-info">
                                <div class="user-avatar">
                                    <img src="../../Images/user2.jpg" alt="User" />
                                </div>
                                <div class="user-details">
                                    <div class="user-name">Michael Brown</div>
                                    <div class="user-phone">+27 82 987 6543</div>
                                </div>
                            </div>
                        </td>
                        <td>michael@example.com</td>
                        <td><span class="badge badge-primary">Practitioner</span></td>
                        <td>Feb 2, 2023</td>
                        <td><span class="badge badge-success">Active</span></td>
                        <td>
                            <div class="dropdown">
                                <button class="btn btn-sm btn-outline-primary dropdown-toggle" type="button" data-toggle="dropdown">
                                    <i class="fas fa-ellipsis-v"></i>
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#"><i class="fas fa-eye"></i>View</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-edit"></i>Edit</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-lock"></i>Reset Password</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item text-danger" href="#"><i class="fas fa-ban"></i>Suspend</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>USR-1003</td>
                        <td>
                            <div class="user-info">
                                <div class="user-avatar">
                                    <img src="../../Images/user3.jpg" alt="User" />
                                </div>
                                <div class="user-details">
                                    <div class="user-name">Emily Davis</div>
                                    <div class="user-phone">+27 81 555 1234</div>
                                </div>
                            </div>
                        </td>
                        <td>emily@example.com</td>
                        <td><span class="badge badge-success">Client</span></td>
                        <td>Mar 10, 2023</td>
                        <td><span class="badge badge-success">Active</span></td>
                        <td>
                            <div class="dropdown">
                                <button class="btn btn-sm btn-outline-primary dropdown-toggle" type="button" data-toggle="dropdown">
                                    <i class="fas fa-ellipsis-v"></i>
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#"><i class="fas fa-eye"></i>View</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-edit"></i>Edit</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-lock"></i>Reset Password</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item text-danger" href="#"><i class="fas fa-ban"></i>Suspend</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>USR-1004</td>
                        <td>
                            <div class="user-info">
                                <div class="user-avatar">
                                    <img src="../../Images/user4.jpg" alt="User" />
                                </div>
                                <div class="user-details">
                                    <div class="user-name">David Wilson</div>
                                    <div class="user-phone">+27 84 777 8888</div>
                                </div>
                            </div>
                        </td>
                        <td>david@example.com</td>
                        <td><span class="badge badge-primary">Practitioner</span></td>
                        <td>Apr 5, 2023</td>
                        <td><span class="badge badge-warning">Pending</span></td>
                        <td>
                            <div class="dropdown">
                                <button class="btn btn-sm btn-outline-primary dropdown-toggle" type="button" data-toggle="dropdown">
                                    <i class="fas fa-ellipsis-v"></i>
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#"><i class="fas fa-eye"></i>View</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-edit"></i>Edit</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-lock"></i>Reset Password</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item text-success" href="#"><i class="fas fa-check"></i>Approve</a>
                                    <a class="dropdown-item text-danger" href="#"><i class="fas fa-ban"></i>Reject</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>USR-1005</td>
                        <td>
                            <div class="user-info">
                                <div class="user-avatar">
                                    <img src="../../Images/user5.jpg" alt="User" />
                                </div>
                                <div class="user-details">
                                    <div class="user-name">Robert Taylor</div>
                                    <div class="user-phone">+27 83 999 0000</div>
                                </div>
                            </div>
                        </td>
                        <td>robert@example.com</td>
                        <td><span class="badge badge-primary">Practitioner</span></td>
                        <td>May 20, 2023</td>
                        <td><span class="badge badge-danger">Suspended</span></td>
                        <td>
                            <div class="dropdown">
                                <button class="btn btn-sm btn-outline-primary dropdown-toggle" type="button" data-toggle="dropdown">
                                    <i class="fas fa-ellipsis-v"></i>
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#"><i class="fas fa-eye"></i>View</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-edit"></i>Edit</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-lock"></i>Reset Password</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item text-success" href="#"><i class="fas fa-check"></i>Activate</a>
                                </div>
                            </div>
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

    <!-- New User Modal -->
    <div class="modal fade" id="newUserModal" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Add New User</h5>
                    <button type="button" class="close" data-dismiss="modal">
                        <span>&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <ul class="nav nav-tabs" id="userTypeTabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="client-tab" data-toggle="tab" href="#client" role="tab">Client</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="practitioner-tab" data-toggle="tab" href="#practitioner" role="tab">Practitioner</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="userTypeTabsContent">
                        <div class="tab-pane fade show active" id="client" role="tabpanel">
                            <div class="row mt-3">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>First Name</label>
                                        <input type="text" class="form-control" placeholder="Enter first name" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Last Name</label>
                                        <input type="text" class="form-control" placeholder="Enter last name" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" placeholder="Enter email" />
                            </div>
                            <div class="form-group">
                                <label>Phone Number</label>
                                <input type="tel" class="form-control" placeholder="Enter phone number" />
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" placeholder="Enter password" />
                            </div>
                        </div>
                        <div class="tab-pane fade" id="practitioner" role="tabpanel">
                            <div class="row mt-3">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>First Name</label>
                                        <input type="text" class="form-control" placeholder="Enter first name" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Last Name</label>
                                        <input type="text" class="form-control" placeholder="Enter last name" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" placeholder="Enter email" />
                            </div>
                            <div class="form-group">
                                <label>Phone Number</label>
                                <input type="tel" class="form-control" placeholder="Enter phone number" />
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" placeholder="Enter password" />
                            </div>
                            <div class="form-group">
                                <label>Service Category</label>
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
                                <label>Business Name (if applicable)</label>
                                <input type="text" class="form-control" placeholder="Enter business name" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary">Add User</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="Users.js"></script>
</asp:Content>
