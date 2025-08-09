<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/InMaster/InMaster.Master" AutoEventWireup="true" CodeBehind="Support.aspx.cs" Inherits="Total_Transformation.Pages.InMaster.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Support | Total Transformation
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Support.css" rel="stylesheet" />
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
    <a href="Support.aspx" class="menu-item active">
        <i class="fas fa-headset"></i>
        <span class="menu-text">Support</span>
    </a>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PageHeaderContent" runat="server">
    <h1>Support Center</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="../AdminDash.aspx">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Support</li>
        </ol>
    </nav>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-lg-8">
            <div class="dashboard-card">
                <div class="card-header">
                    <h5 class="card-title">Recent Support Tickets</h5>
                    <button class="btn btn-primary" data-toggle="modal" data-target="#newTicketModal">
                        <i class="fas fa-plus"></i>New Ticket
                    </button>
                </div>
                <div class="table-responsive">
                    <table class="table table-hover" id="ticketsTable">
                        <thead>
                            <tr>
                                <th>Ticket ID</th>
                                <th>Subject</th>
                                <th>User</th>
                                <th>Status</th>
                                <th>Last Updated</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>#TKT-1001</td>
                                <td>Payment issue</td>
                                <td>Sarah Johnson</td>
                                <td><span class="badge badge-success">Resolved</span></td>
                                <td>2 days ago</td>
                                <td>
                                    <button class="btn btn-sm btn-outline-primary">View</button>
                                </td>
                            </tr>
                            <tr>
                                <td>#TKT-1002</td>
                                <td>Booking cancellation</td>
                                <td>Michael Brown</td>
                                <td><span class="badge badge-info">In Progress</span></td>
                                <td>1 day ago</td>
                                <td>
                                    <button class="btn btn-sm btn-outline-primary">View</button>
                                </td>
                            </tr>
                            <tr>
                                <td>#TKT-1003</td>
                                <td>Account verification</td>
                                <td>Emily Davis</td>
                                <td><span class="badge badge-warning">Pending</span></td>
                                <td>3 hours ago</td>
                                <td>
                                    <button class="btn btn-sm btn-outline-primary">View</button>
                                </td>
                            </tr>
                            <tr>
                                <td>#TKT-1004</td>
                                <td>Service listing</td>
                                <td>David Wilson</td>
                                <td><span class="badge badge-info">In Progress</span></td>
                                <td>1 hour ago</td>
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
        </div>
        <div class="col-lg-4">
            <div class="dashboard-card">
                <div class="card-header">
                    <h5 class="card-title">Knowledge Base</h5>
                </div>
                <div class="knowledge-base">
                    <div class="kb-category">
                        <h6><i class="fas fa-users"></i>User Management</h6>
                        <ul>
                            <li><a href="#">How to verify a user</a></li>
                            <li><a href="#">Managing user roles</a></li>
                            <li><a href="#">Deactivating accounts</a></li>
                        </ul>
                    </div>
                    <div class="kb-category">
                        <h6><i class="fas fa-cut"></i>Service Management</h6>
                        <ul>
                            <li><a href="#">Approving new services</a></li>
                            <li><a href="#">Editing service details</a></li>
                            <li><a href="#">Handling service disputes</a></li>
                        </ul>
                    </div>
                    <div class="kb-category">
                        <h6><i class="fas fa-calendar-alt"></i>Booking System</h6>
                        <ul>
                            <li><a href="#">Managing cancellations</a></li>
                            <li><a href="#">Rescheduling bookings</a></li>
                            <li><a href="#">Refund processing</a></li>
                        </ul>
                    </div>
                    <div class="kb-category">
                        <h6><i class="fas fa-chart-pie"></i>Reports</h6>
                        <ul>
                            <li><a href="#">Generating revenue reports</a></li>
                            <li><a href="#">User activity analysis</a></li>
                            <li><a href="#">Exporting data</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- New Ticket Modal -->
    <div class="modal fade" id="newTicketModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Create New Support Ticket</h5>
                    <button type="button" class="close" data-dismiss="modal">
                        <span>&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Subject</label>
                        <input type="text" class="form-control" placeholder="Enter ticket subject" />
                    </div>
                    <div class="form-group">
                        <label>Category</label>
                        <select class="form-control">
                            <option>Technical Issue</option>
                            <option>Payment Problem</option>
                            <option>Account Help</option>
                            <option>Booking Assistance</option>
                            <option>Other</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Priority</label>
                        <select class="form-control">
                            <option>Low</option>
                            <option>Medium</option>
                            <option>High</option>
                            <option>Critical</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <textarea class="form-control" rows="5" placeholder="Describe your issue in detail"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Attachments</label>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="ticketAttachment" multiple>
                            <label class="custom-file-label" for="ticketAttachment">Choose files</label>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary">Submit Ticket</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="Support.js"></script>
</asp:Content>
