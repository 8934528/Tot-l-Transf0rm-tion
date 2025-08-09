<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Total_Transformation.Pages.Signup.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up | Total Transformation</title>
    <link href="Signup.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Segoe+UI:wght@400;600;700&family=Tomorrow:wght@400;600&display=swap" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="signup-container">
            <div class="signup-left">
                <div class="signup-content">
                    <h1>Join Our Community!</h1>
                    <p>Create an account to book beauty services or offer your professional skills.</p>
                    <img src="../Images/signup-image.png" alt="Beauty Services" class="img-fluid" />
                </div>
            </div>
            <div class="signup-right">
                <div class="signup-form">
                    <div class="logo">
                        <span>Total Transformation</span>
                    </div>
                    <h2>Create Account</h2>
                    
                    <div class="user-type-toggle">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-user-type active">
                                <input type="radio" name="userType" id="client" autocomplete="off" checked /> Client
                            </label>
                            <label class="btn btn-user-type">
                                <input type="radio" name="userType" id="practitioner" autocomplete="off" /> Practitioner
                            </label>
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="txtFirstName">First Name</label>
                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="First name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="txtLastName">Last Name</label>
                            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Last name"></asp:TextBox>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="txtEmail">Email Address</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email" TextMode="Email"></asp:TextBox>
                    </div>
                    
                    <div class="form-group">
                        <label for="txtPhone">Phone Number</label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Enter your phone number" TextMode="Phone"></asp:TextBox>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="txtPassword">Password</label>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Create password" TextMode="Password"></asp:TextBox>
                            <small class="form-text text-muted">At least 8 characters</small>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="txtConfirmPassword">Confirm Password</label>
                            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" placeholder="Confirm password" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="form-check">
                            <asp:CheckBox ID="chkTerms" runat="server" CssClass="form-check-input" />
                            <label class="form-check-label" for="chkTerms">
                                I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a>
                            </label>
                        </div>
                    </div>
                    
                    <asp:Button ID="btnSignup" runat="server" Text="Sign Up" CssClass="btn btn-signup" />
                    
                    <div class="login-link">
                        Already have an account? <a href="../Signin/Signin.aspx">Log in</a>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="Signup.js"></script>
</body>
