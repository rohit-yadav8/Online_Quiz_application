<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="includes/Header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Contact Us - ADR</title>

    <!-- Bootstrap & Font Awesome -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <style>
        /* Ensure the body starts below the fixed navbar */
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f6f8;
        }

        /* Adjust the first section to have padding-top */
        .breadcrumbs-section {
            background-color: #007bff;
            color: white;
            padding: 30px 0;
            padding-top: 90px; /* Ensure padding-top is enough to push content below navbar */
        }

        .breadcrumbs-section h2 {
            margin: 0;
            font-weight: 600;
        }

        .breadcrumb a {
            color: #f1f1f1;
        }

        .breadcrumb-item.active {
            color: #e0e0e0;
        }

        .contact-card {
            background: #ffffff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 8px 24px rgba(0, 0, 0, 0.1);
            margin: 40px 0;
        }

        .contact-card h5 {
            color: #343a40;
            font-weight: 600;
            margin-top: 20px;
        }

        .contact-card p {
            font-size: 16px;
            margin-bottom: 15px;
        }

        .contact-card a {
            text-decoration: none;
            color: #007bff;
            transition: all 0.3s ease;
        }

        .contact-card a:hover {
            text-decoration: underline;
            color: #0056b3;
        }

        .contact-card i {
            margin-right: 10px;
            color: #007bff;
        }

        .section-intro {
            font-size: 18px;
            color: #555;
            margin-top: 20px;
        }
    </style>

</head>
<body>

<!-- Breadcrumb Header -->
<section class="breadcrumbs-section text-center">
    <div class="container">
        <h2>Contact Us</h2>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb justify-content-center bg-transparent">
                <li class="breadcrumb-item"><a href="Home.jsp">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Contact Us</li>
            </ol>
        </nav>
    </div>
</section>

<!-- Intro Text -->
<section class="section-intro text-center">
    <div class="container">
        <p>We are always here to help. Feel free to reach out anytime, our team will respond within 24 hours!</p>
        <hr style="width: 50px; border: 2px solid #007bff;">
    </div>
</section>

<!-- Contact Info Card -->
<section class="form-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 contact-card">
                <h5><i class="fas fa-phone-alt"></i> Call Us / WhatsApp</h5>
                <p><a href="tel:+919090909090">+91 90909 09090</a></p>

                <h5><i class="fas fa-envelope"></i> Email</h5>
                <p><a href="mailto:rohityad8817@gmail.com">adr8817@edu.com</a></p>

                <h5><i class="fas fa-globe"></i> Website</h5>
                <p><a href="https://www.rohityadav.tech" target="_blank">www.adr.tech</a></p>

                <h5><i class="fas fa-clock"></i> Working Hours</h5>
                <p>Mon - Fri: 9:00 AM - 6:00 PM IST</p>

                <h5><i class="fas fa-map-marker-alt"></i> Office Address</h5>
                <p>Bangalore, Karnataka - 560037</p>
            </div>
        </div>
    </div>
</section>

</body>
<%@ include file="includes/Footer.jsp"%>
</html>
