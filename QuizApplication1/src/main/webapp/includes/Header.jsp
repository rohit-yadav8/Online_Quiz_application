<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

    <style>
       body {
    padding-top: 80px; /* Adjust padding based on your navbar height */
    font-family: 'Arial', sans-serif;
    background-color: #121212; /* Dark background for the entire page */
    color: #f1f1f1; /* Light text color */
}
       
        /* Navbar */
        .navbar {
            background: #212529; /* Dark navbar background */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .navbar-brand {
            font-size: 24px;
            font-weight: 700;
            color: #fff !important;
        }

        .navbar-brand i {
            color: #f8d210;
            margin-right: 10px;
            font-size: 1.5rem;
        }

        .nav-link {
            color: #f1f1f1 !important;
            font-weight: 500;
            transition: all 0.3s ease;
            font-size: 1.1rem;
        }

        .nav-link:hover {
            color: #f8d210 !important;
            transform: translateY(-5px); /* Smooth hover effect */
        }

        .nav-item.dropdown:hover .dropdown-menu {
            display: block;
            animation: slideDown 0.4s ease;
        }

        /* Dropdown menu */
        .dropdown-menu {
            background-color: #343a40; /* Darker background for dropdown */
            border-radius: 8px;
            border: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
            animation: fadeIn 0.3s ease-in-out;
        }

        .dropdown-item {
            color: #f1f1f1; /* Light text for dropdown items */
            font-weight: 500;
            transition: background-color 0.3s ease;
        }

        .dropdown-item:hover {
            background-color: #495057; /* Darker hover effect */
            color: #f8d210;
        }

        /* Toggler button */
        .navbar-toggler {
            border: none;
        }

        .navbar-toggler:focus {
            box-shadow: none;
        }

        /* Hover and animation effects */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes slideDown {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Mobile responsiveness */
        .navbar-toggler-icon {
            background-color: #fff;
        }
    </style>
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="Home.jsp">
                    <i class="fas fa-graduation-cap"></i> Quiz World
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="Home.jsp"><i class="fas fa-home"></i> Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="AboutUs.jsp"><i class="fas fa-info-circle"></i> About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Login.jsp"><i class="fas fa-sign-in-alt"></i> Login</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
                                <i class="fas fa-user-plus"></i> Register
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end">
                                <li><a class="dropdown-item" href="StudentRegistration.jsp"><i class="fas fa-user-graduate"></i> Student</a></li>
                                <li><a class="dropdown-item" href="ProfessorRegistration.jsp"><i class="fas fa-chalkboard-teacher"></i> Professor</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ContactUs.jsp"><i class="fas fa-envelope"></i> Contact Us</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
</body>
</html>
