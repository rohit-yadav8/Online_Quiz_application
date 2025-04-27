<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@include file="includes/Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>About Us - Quiz World</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        html, body {
            margin: 0;
            padding: 0;
            height: 100%;
            overflow-y: auto; /* allows scroll when content exceeds viewport */
        }

        .about-section {
            background: #f8f9fa;
            padding: 60px 20px;
            min-height: 100vh; /* ensures full height at least */
        }

        .about-title {
            font-size: 3rem;
            font-weight: bold;
            margin-bottom: 20px;
            color: #343a40;
        }

        .about-text {
            font-size: 1.2rem;
            line-height: 1.8;
            color: #555;
        }

        .highlight {
            color: #007bff;
            font-weight: 600;
        }

        footer {
            background-color: #f1f1f1;
            padding: 15px 0;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="about-section text-center">
    <div class="container">
        <h1 class="about-title">Welcome to <span class="highlight">Quiz World</span></h1>
        <p class="about-text">
            Quiz World is a platform born from a blend of <span class="highlight">innovation</span> and <span class="highlight">simplicity</span>. 
            Our goal is to create a seamless experience for users to test and improve their coding skills and general knowledge in a user-friendly environment. 
            We believe in keeping things simple so participants can focus on learning and showcasing their expertise.
        </p>
        <p class="about-text">
            At <span class="highlight">Quiz World</span>, we are dedicated to delivering a <strong>thought-provoking</strong> and <strong>engaging</strong> experience. 
            This platform is crafted with the user in mind — no complex setup, no prior coding required — just a passion to learn and grow.
        </p>
        <p class="about-text">
            Our mission is to empower individuals by offering free and accessible tools for knowledge enhancement. 
            Whether you're a student, professional, or enthusiast, Quiz World is here to support your journey.
        </p>
    </div>
</div>

</body>
<%@include file="includes/Footer.jsp"%>
</html>
