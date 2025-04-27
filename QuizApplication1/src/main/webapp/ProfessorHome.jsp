<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="includes/ProfessorHeader.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Professor Home</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-pzjw8f+ua7Kw1TIq0Xs4BIViU4C3VgB8zW9sFYH1c6+h/s3UlbhFkmrJpn5ZMiZ3" crossorigin="anonymous">
<style type="text/css">
    /* Overall background and page setup */
    html, body {
        height: 100%;
        margin: 0;
        padding: 0;
        font-family: 'Arial', sans-serif;
        display: flex;
        flex-direction: column;
    }

    /* Header Styles */
    header {
        background-color: #2c3e50;
        color: white;
        padding: 20px 0;
        text-align: center;
    }

    header h1 {
        font-size: 2.5rem;
        font-weight: bold;
    }

    /* Hero section with a background image */
    .hero {
        position: relative;
        background: url('images/professor_background.jpg') no-repeat center center/cover;
        height: 60vh;
        color: white;
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
    }

    .hero h2 {
        font-size: 3rem;
        font-weight: 700;
        text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.7);
    }

    /* Content Section */
    .content {
        padding: 50px 20px;
        background-color: #fff;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        margin-top: -30px;
        border-radius: 10px;
        flex-grow: 1;  /* Allow content to expand */
    }

    .content h3 {
        font-size: 2rem;
        margin-bottom: 20px;
    }

    .content p {
        font-size: 1.2rem;
        line-height: 1.6;
        color: #555;
    }

    .btn-primary {
        background-color: #3498db;
        border: none;
        padding: 10px 20px;
        font-size: 1.1rem;
        border-radius: 30px;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }

    .btn-primary:hover {
        background-color: #2980b9;
        transform: scale(1.05);
    }

    /* Footer Styles */
    .footer {
        background-color: #2c3e50;
        color: white;
        text-align: center;
        padding: 20px 0;
        position: relative;
        bottom: 0;
        width: 100%;
    }

    /* Ensures page is scrollable and footer is after content */
    body {
        overflow-y: auto;
        flex: 1;
    }

    /* Media Queries for Responsive Design */
    @media (max-width: 768px) {
        .hero h2 {
            font-size: 2rem;
        }

        .content h3 {
            font-size: 1.5rem;
        }

        .content p {
            font-size: 1rem;
        }
    }
</style>
</head>
<body>

<header>
    <h1>Welcome Professor</h1>
</header>

<div class="hero">
    <h2>Your Learning Management Dashboard</h2>
</div>

<div class="content container">
    <h3>Welcome to your dashboard</h3>
    <p>This is where you can manage your courses, quizzes, assignments, and much more. Get started with creating your courses or reviewing your student submissions.</p>
    <button class="btn btn-primary">Start Now</button>
</div>



</body>

<%@ include file="includes/Footer.jsp"%>


</html>
