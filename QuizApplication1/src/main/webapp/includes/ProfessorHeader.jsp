<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Professor Home</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    
    <!-- Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">

    <!-- Bootstrap JS & jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" 
            crossorigin="anonymous"></script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" 
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" 
            crossorigin="anonymous"></script>
    
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" 
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" 
            crossorigin="anonymous"></script>

    <script type="text/javascript">
        function validateID() {
            var id = document.getElementById('stuid').value;
            if (id >= 1001 && id <= 1999) {
                return true;
            }
            alert('Please enter a valid student id.');
            return false;
        }
    </script>

    <style>
        /* Navbar Custom Styling */
        .navbar {
            background-color: white; /* White background for navbar */
            color: black; /* Black text in navbar */
        }

        .navbar-nav .nav-item .navbar-brand {
            font-size: 18px;
            font-weight: bold;
            color: black; /* Black text for navbar links */
            padding-left: 20px;
        }

        .navbar-nav .nav-item {
            margin-right: 25px;
        }

        .navbar-nav .nav-item a {
            color: black !important; /* Black text for navbar links */
            font-size: 16px;
            padding-left: 10px;
            padding-right: 10px;
        }

        /* Hover Effect for Navbar Links */
        .navbar-nav .nav-item a:hover {
            color: #FFD700; /* Gold hover color */
            transition: color 0.3s ease; /* Smooth color transition */
        }

        .navbar-nav .nav-item a i {
            color: black; /* Black icons */
            margin-right: 8px; /* Space between icon and text */
            transition: transform 0.3s ease; /* Smooth icon hover effect */
        }

        .navbar-nav .nav-item a:hover i {
            transform: scale(1.2); /* Icon scaling effect */
            color: #FFD700; /* Gold hover color */
        }

        /* Dropdown Menu Styling */
        .navbar-nav .nav-item .dropdown-menu {
            background-color: white;
            border: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .navbar-nav .nav-item .dropdown-menu a {
            color: black; /* Black text for dropdown links */
            font-size: 16px;
        }

        .navbar-nav .nav-item .dropdown-menu a:hover {
            background-color: #FFD700; /* Gold background on hover */
            color: black;
        }

        /* Search Form Button and Input Styles */
        .form-inline .form-control {
            width: 250px;
            border-radius: 20px;
            padding: 10px;
            background-color: #f8f9fa; /* Light background for input */
            color: black; /* Black text in input */
        }

        .form-inline .btn-outline-success {
            color: black; /* Black text for button */
            border-color: black;
            border-radius: 20px;
            padding: 10px 20px;
        }

        .form-inline .btn-outline-success:hover {
            background-color: #FFD700;
            border-color: #FFD700;
            transition: all 0.3s ease;
        }

        /* Additional Spacing and Styling */
        body {
            background-color: #121212; /* Dark background for the rest of the page */
            color: white; /* White text for the rest of the page */
        }

        .navbar-collapse {
            display: flex;
            align-items: center;
        }
    </style>
</head>

<body>
    <%
        String id = Integer.toString((Integer) session.getAttribute("id"));
    %>
    
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <!-- Home Link -->
                <a class="navbar-brand" href="ProfessorHome.jsp"><i class="fas fa-home"></i> Home</a>
                
                <!-- Profile Link -->
                <a class="navbar-brand" href="ProfessorController?id=<%=id%>"><i class="fas fa-user-circle"></i> Profile</a>
                
                <!-- Topics Dropdown -->
                <li class="nav-item dropdown">
                    <a class="navbar-brand dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-book"></i> Topics
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="AddTopic.jsp"><i class="fas fa-plus-circle"></i> Add Topic</a>
                        <a class="dropdown-item" href="ProfessorController?param=viewTopics"><i class="fas fa-eye"></i> View Topic</a>
                    </div>
                </li>
                
                <!-- Questions Dropdown -->
                <li class="nav-item dropdown">
                    <a class="navbar-brand dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-question-circle"></i> Questions
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="ProfessorController?param=addQues"><i class="fas fa-plus-circle"></i> Add Question</a>
                        <a class="dropdown-item" href="ProfessorController?param=selectTopic"><i class="fas fa-eye"></i> View Question</a>
                    </div>
                </li>
                
                <!-- Logout Link -->
                <a class="navbar-brand" href="Logout.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
            </ul>
            
            <!-- Search Form -->
            <form class="form-inline my-2 my-lg-0" action="ProfessorController" method="post">
                <input class="form-control mr-sm-2" type="search" name="stuid" id="stuid" placeholder="Search a student by ID.." aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="submit" onclick="return validateID()" value="searchStu"><i class="fas fa-search"></i> Search</button>
            </form>
        </div>
    </nav>
    
</body>
</html>
