<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="Total_Transformation.Pages.Signin.Signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login | Total Transformation</title>
    <link href="Signin.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Segoe+UI:wght@400;600;700&family=Tomorrow:wght@400;600&display=swap" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <div class="login-left">
                <div class="login-content">
                    <h1>Welcome Back!</h1>
                    <p>Login to access your account and book beauty services.</p>
                    <img src="../Images/login-image.png" alt="Beauty Services" class="img-fluid" />
                </div>
            </div>
            <div class="login-right">
                <div class="login-form">
                    <div class="logo">
                        <span>Total Transformation</span>
                    </div>
                    <h2>Sign In</h2>
                    
                    <div class="form-group">
                        <label for="txtEmail">Email Address</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email" TextMode="Email"></asp:TextBox>
                    </div>
                    
                    <div class="form-group">
                        <label for="txtPassword">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
                    </div>
                    
                    <div class="form-group form-check">
                        <asp:CheckBox ID="chkRemember" runat="server" CssClass="form-check-input" />
                        <label class="form-check-label" for="chkRemember">Remember me</label>
                        <a href="#" class="forgot-password">Forgot password?</a>
                    </div>
                    
                    <asp:Button ID="btnLogin" runat="server" Text="Sign In" CssClass="btn btn-login" />
                    
                    <div class="login-divider">
                        <span>or</span>
                    </div>
                    
                    <div class="social-login">
                        <button type="button" class="btn btn-social btn-google">
                            <i class="fab fa-google"></i> Sign in with Google
                        </button>
                        <button type="button" class="btn btn-social btn-facebook">
                            <i class="fab fa-facebook-f"></i> Sign in with Facebook
                        </button>
                    </div>
                    
                    <div class="signup-link">
                        Don't have an account? <a href="../Signup/Signup.aspx">Sign up</a>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script src="Signin.js"></script>
</body>
</html>
