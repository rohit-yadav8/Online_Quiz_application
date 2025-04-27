<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@include file="includes/Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register as Professor</title>
<link href="css/RegisterPage.css" rel="stylesheet" type="text/css">
<script src="javascripts/professorRegistration.js" type="text/javascript"></script>
<!-- Bootstrap 5 CDN for styling -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom Styles -->
<style type="text/css">
    /* Basic layout adjustments */
    body, html {
        height: 100%;
        margin: 0;
        padding: 0;
        font-family: 'Arial', sans-serif;
    }

    /* Navbar fixed to the top */
    .navbar {
        position: fixed;
        width: 100%;
        top: 0;
        left: 0;
        z-index: 1000;
    }

    /* Content starts below navbar */
    .navbar + .content {
        margin-top: 80px; /* Adjust based on your navbar height */
    }

    /* Body content */
    .content {
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: flex-start;
        padding: 20px;
        flex-direction: column;
    }

    /* Scrollable page content */
    .registerDiv {
        width: 100%;
        max-width: 600px;
        margin: auto;
        padding: 30px;
        background-color: #f8f9fa;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        height: auto;
    }

    h2 {
        text-align: center;
        color: #343a40;
        margin-bottom: 25px;
        font-size: 24px;
    }

    table {
        width: 100%;
        margin-bottom: 20px;
    }

    td {
        padding: 10px;
        font-size: 14px;
        color: #343a40;
    }

    /* Inputs and Selects */
    .form-control {
        border-radius: 25px;
        padding: 10px;
        font-size: 14px;
        margin-bottom: 15px;
    }

    select.form-control, input.form-control {
        margin-bottom: 15px;
    }

    /* Button styling */
    .btn {
        border-radius: 25px;
        padding: 10px 30px;
        font-size: 14px;
    }

    .btn-primary {
        background-color: #007bff;
        border-color: #007bff;
    }

    .btn-primary:hover {
        background-color: #0056b3;
        border-color: #0056b3;
    }

    /* Footer Styling */
    footer {
        background-color: #f8f9fa;
        padding: 20px;
        text-align: center;
        margin-top: auto;
        width: 100%;
    }

   

    .registerDiv {
        overflow-x: hidden;
    }
</style>
</head>
<body>
    <div class="navbar">
        <!-- Include your navbar here -->
    </div>

    <div class="content">
        <div class="registerDiv">
            <form name="ProfRegisterForm" action="ProfessorController" method="post">
                <h2>Register Here as Professor</h2>
                <table>
                    <tr>
                        <td>ID</td>
                        <td><input type="number" name="id" class="form-control" required></td>
                    </tr>
                    <tr>
                        <td>Department</td>
                        <td>
                            <select name="dept" class="form-control" required>
                                <option value="default" selected>Select your department</option>
                                <option value="cse">Computer Science (CSE)</option>
                                <option value="it">Information Technology (IT)</option>
                                <option value="ece">Electronics and Communication (ECE)</option>
                                <option value="me">Mechanical (ME)</option>
                                <option value="eee">Electrical and Electronics (EEE)</option>
                                <option value="ce">Civil (CE)</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" class="form-control" required></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" class="form-control" required></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>
                            <input type="radio" name="gender" value="Male" required>&nbsp;Male&nbsp;
                            <input type="radio" name="gender" value="Female" required>&nbsp;Female&nbsp;
                            <input type="radio" name="gender" value="Others">&nbsp;Others&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>Date of Birth</td>
                        <td><input type="date" name="dob" class="form-control" required></td>
                    </tr>
                    <tr>
                        <td>Qualification</td>
                        <td>
                            <select name="qualification" class="form-control" required>
                                <option value="default" selected>Select your qualification</option>
                                <option value="pg">Post Graduate (PG)</option>
                                <option value="phd">PhD: Doctor of Philosophy</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Mobile Number</td>
                        <td><input type="tel" name="mobile" class="form-control" maxlength="10" required></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="email" name="email" class="form-control" required></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" class="form-control" required></td>
                    </tr>
                    <tr>
                        <td>Re-type Password</td>
                        <td><input type="password" name="retypepassword" class="form-control" required></td>
                    </tr>
                </table>
                <div style="text-align: center;">
                    <button type="submit" class="btn btn-primary" onclick="return regValidate()" name="submit" value="register">Submit</button>&nbsp;&nbsp;
                    <button type="reset" class="btn btn-secondary">Reset</button>
                </div>
            </form>
        </div>
    </div>

    
</body>
</html>
