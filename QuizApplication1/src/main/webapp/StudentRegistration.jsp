<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="includes/Header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register as Student</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: url('https://images.unsplash.com/photo-1601597111530-503f24b63817?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
        }

        .main-content {
            margin-top: 80px; /* Adjust according to your navbar height */
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .registerDiv {
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            padding: 40px;
            border-radius: 20px;
            width: 100%;
            max-width: 600px;
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            color: #000;
            animation: slideUp 0.8s ease-out;
        }

        @keyframes slideUp {
            from { transform: translateY(50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        h2 {
            text-align: center;
            color: #0d6efd;
            margin-bottom: 30px;
            font-weight: bold;
        }

        table {
            width: 100%;
        }

        td {
            padding: 8px 0;
            color: #000;
            font-weight: 500;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: rgba(255, 255, 255, 0.8);
            font-size: 16px;
            outline: none;
        }

        input[type="radio"] {
            width: auto;
        }

        .button-group {
            text-align: center;
            margin-top: 15px;
        }

        button {
            background-color: #0d6efd;
            color: #fff;
            border: none;
            padding: 12px 20px;
            font-size: 16px;
            border-radius: 10px;
            margin: 5px;
            width: 45%;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button[type="reset"] {
            background-color: #dc3545;
        }

        button:hover {
            background-color: #0056b3;
        }

        button[type="reset"]:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>

<div class="main-content">
    <div class="registerDiv">
        <form name="StuRegisterForm" action="StudentController" method="post">
            <h2>Student Registration</h2>
            <table>
                <tr><td>ID</td><td><input type="number" name="id" required></td></tr>
                <tr><td>First Name</td><td><input type="text" name="fname" required></td></tr>
                <tr><td>Last Name</td><td><input type="text" name="lname" required></td></tr>
                <tr><td>Gender</td><td>
                    <input type="radio" name="gender" value="Male" required> Male
                    <input type="radio" name="gender" value="Female" required> Female
                </td></tr>
                <tr><td>Date of Birth</td><td><input type="date" name="dob" required></td></tr>
                <tr><td>Mobile</td><td><input type="number" name="mobile" required></td></tr>
                <tr><td>Email</td><td><input type="email" name="email" required></td></tr>
                <tr><td>Password</td><td><input type="password" name="password" required></td></tr>
                <tr><td>Confirm Password</td><td><input type="password" name="retypepassword" required></td></tr>
            </table>
            <div class="button-group">
                <button type="submit">Submit</button>
                <button type="reset">Reset</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
