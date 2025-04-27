<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="includes/Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<style type="text/css" media="screen">
    /* Ensure the container takes full height and body scrolls */
    html, body {
        height: 100%;
        margin: 0;
        display: flex;
        flex-direction: column;
        overflow: hidden; /* Hide extra space */
    }

    body {
        display: flex;
        flex-direction: column;
        flex: 1;
        overflow-y: auto; /* Allow scroll if content overflows */
    }

    /* Add padding-top to ensure content is below navbar */
    .container {
        flex-grow: 1;
        max-width: 400px;
        margin: auto;
        padding-top: 70px; /* Adjust this value depending on your navbar height */
        overflow-y: auto; /* Add vertical scroll if content overflows */
        max-height: calc(100vh - 140px); /* Ensure the content area takes full height minus navbar and footer */
    }

    /* Optional: Add some styling to the footer */
    footer {
        text-align: center;
        padding: 10px 0;
        background-color: #f1f1f1;
        margin-top: 20px;
        position: relative;
    }

    /* For responsive styling */
    @media (min-width: 1200px) {
        .container {
            max-width: 400px;
        }
    }

    /* Ensure footer stays at the bottom */
    footer {
        position: absolute;
        bottom: 0;
        width: 100%;
    }
</style>
<script src="javascripts/login.js" type="text/javascript"></script>
</head>

<body>
    <div class="container">
        <form name="LoginForm" action="login" method="post">
            <h3>Login</h3>
            <hr>
            <div class="form-group">
                <label for="userID">User ID</label>
                <input type="text" class="form-control" id="userID" name="id" onchange="selectLoginTypeOnUserID()" placeholder="UserID">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Password">
            </div>
            <div>
                <label for="loginType">Login as</label>
                <select class="custom-select" id="loginType" name="loginType">
                    <option value="student" selected>Student</option>
                    <option value="professor">Professor</option>
                </select>
            </div><br>
            <button type="submit" class="btn btn-primary" onclick="return validate()" name="submit" value="login">Login</button>&nbsp;&nbsp;
            <button type="reset" class="btn btn-primary">Reset</button>
            <a class="float-right" href="ForgotPassword.jsp">Forgot Password?</a>
        </form>
    </div>

</body>
<%@ include file="includes/Footer.jsp" %>

</html>
