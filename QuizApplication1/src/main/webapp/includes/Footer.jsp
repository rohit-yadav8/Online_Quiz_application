<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Footer</title>
    <style>
        /* Footer Styling */
        .footer {
            background: linear-gradient(135deg, #2c3e50, #34495e); /* Gradient background */
            color: #fff;
            padding: 20px 0; /* Added top and bottom padding */
            border-top: 1px solid #ddd;
            text-align: center;
        }

        .footer a {
            color: #f39c12;
            text-decoration: none;
            font-weight: bold;
        }

        .footer a:hover {
            color: #f1c40f;
            text-decoration: underline;
        }

        .footer p {
            margin: 5px 0;
            font-size: 1.1rem;
        }

        .footer .footer-copyright {
            font-size: 1.2rem;
            font-weight: 600;
        }

        /* Removing unnecessary white space around the footer */
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
        }

        /* Centering the footer */
        .footer-content {
            max-width: 1200px;
            margin: 0 auto;
        }

        .footer .footer-social {
            margin: 10px 0;
        }

        .footer .footer-social a {
            margin: 0 10px;
            font-size: 1.5rem;
            color: #fff;
        }
    </style>
</head>
<body>
    <!-- Footer Section -->
    <div class="footer">
        <div class="footer-content">
            <div class="footer-copyright text-center py-3">
                © 2025 Copyright:
                <a href="#">ADR </a>
            </div>
            <p>Developed by: Quiz World Team</p>
            <p>
                Contact Information: <a href="mailto:rohityad8817@gmail.com">adr8817@edu.com</a>
            </p>

            <!-- Social Media Links (Optional) -->
            <div class="footer-social">
                <a href="https://www.facebook.com" target="_blank">Facebook</a> |
                <a href="https://www.twitter.com" target="_blank">Twitter</a> |
                <a href="https://www.linkedin.com" target="_blank">LinkedIn</a>
            </div>
        </div>
    </div>
</body>
</html>
