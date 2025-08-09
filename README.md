# Total Transformation - Beauty Services Booking System

## Overview
Total Transformation bridges the gap between beauty service providers (students, entrepreneurs, and professionals) and clients looking to book beauty services.

---

- **For Clients**: Browse, book, and pay for services online
- **For Practitioners**: Manage bookings and grow your business
- **For Admins**: Monitor system operations and revenue

## Features

### For Clients (Users)
| Feature | Description |
|---------|-------------|
| Browse Services | View different beauty services offered |
| Book Appointments | Select service, date/time, and book |
| Pay Online | Secure payment processing |
| Account Management | Sign up, login, and view booking history |

### For Practitioners
| Feature | Description |
|---------|-------------|
| Profile Management | Set up profile and list services |
| Booking Requests | View and manage booking requests |
| Earnings Tracking | Monitor booked services and payments |

### For Admin
| Feature | Description |
|---------|-------------|
| User Management | Monitor all user types |
| Service Management | Approve/remove services |
| Revenue Reports | Track earnings and generate reports |
| System Oversight | Ensure smooth platform operations |

## How It Works
1. **Sign Up / Log In**: Clients and practitioners create accounts
2. **Browse & Book**: Clients search services and book appointments
3. **Payment**: Secure online payment processing
4. **Booking Confirmation**: Practitioners accept/reject bookings
5. **Admin Monitoring**: Track users, services, and revenue

## Technologies Used
| Category | Technologies |
|----------|-------------|
| Frontend | HTML, CSS, JavaScript, Bootstrap |
| Backend | C#, ASP.NET |
| Database | SQL Server |
| Payment | [To be integrated] |
| uthentication | ASP.NET Identity |

## Project Structure

                Tot-l-Transf0rm-tion/
                ├── Content/                         # Static content and Bootstrap files
                |
                ├── Images/ 
                |
                ├── Scripts/                         # JavaScript files and Bootstrap scripts
                |
                ├── Pages/
                |    ├── InMaster/                   # This works for pages after the users have signed in
                |    |    ├── InMaster.Master
                |    |    ├── InMaster.css
                |    |    └── InMaster.js
                |    |   
                |    ├── startPage/ 
                |    |    ├── startPage.apsx
                |    |    ├── startPage.css
                |    |    └── startPage.js
                |    |   
                |    ├── Signin/ 
                |    |    ├── Signin.apsx
                |    |    ├── Signin.css
                |    |    └── Signin.js
                |    |
                │    ├── Signup/ 
                |    |    ├── Signup.apsx
                |    |    ├── Signup.css
                |    |    └── Signup.js
                |    |
                │    ├── Client/                        # This is the content page from the InMaster.Master page
                |    |    ├── DashboardClient.apsx
                |    |    ├── DashboardClient.css
                |    |    ├── DashboardClient.js
                |    |    |
                |    |    ├── 
                |    |
                │    ├── Practitioner/                   # This is the content page from the InMaster.Master page
                |    |    ├── DashPractitioner.apsx
                |    |    ├── DashPractitioner.css
                |    |    ├── DashPractitioner.js
                |    |    |
                |    |    ├── 
                |    |
                │    └── Admin/                           # This is the content page from the InMaster.Master page
                |    |    ├── AdminDash.apsx
                |    |    ├── AdminDash.css
                |    |    ├──  AdminDash.js
                |    |    |   
                |    |    ├── 
                |   
                └── web.config 

