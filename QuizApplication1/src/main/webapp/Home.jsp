<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="includes/Header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        /* Full Height Carousel */
        html, body {
            height: 100%;
            margin: 0;
        }

        .carousel, .carousel-inner, .carousel-item {
            height: 100vh;
        }

        .carousel-item img {
            object-fit: cover;
            width: 100%;
            height: 100%;
        }

        /* Overlay Text */
        .carousel-item {
            position: relative;
        }

        .carousel-item::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Dark overlay */
        }

        .carousel-caption {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 2;
            color: white;
            text-shadow: 2px 2px 5px rgba(0,0,0,0.7);
        }

        .carousel-caption h5 {
            font-size: 3.5rem;
            font-weight: bold;
            letter-spacing: 2px;
        }

        .carousel-caption p {
            font-size: 1.8rem;
        }

        /* Footer Styling */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 15px;
        }
    </style>
</head>

<body>

<!-- Carousel Section -->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://images.pexels.com/photos/3182763/pexels-photo-3182763.jpeg" class="d-block w-100" alt="Quiz Participants">
      <div class="carousel-caption d-none d-md-block">
        <h5>Challenge Your Knowledge</h5>
        <p>Join the quiz competition and put your skills to the test!</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://images.pexels.com/photos/3183199/pexels-photo-3183199.jpeg" class="d-block w-100" alt="Brain Teaser Quiz">
      <div class="carousel-caption d-none d-md-block">
        <h5>Brain Teasers</h5>
        <p>Ready for some tricky and fun questions?</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://images.pexels.com/photos/1660994/pexels-photo-1660994.jpeg" class="d-block w-100" alt="Quiz Time">
      <div class="carousel-caption d-none d-md-block">
        <h5>Test Your Memory</h5>
        <p>Sharpen your memory and get ready for exciting quizzes!</p>
      </div>
    </div>
  </div>

  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>





</body>
<%@ include file="includes/Footer.jsp" %>
</html>
