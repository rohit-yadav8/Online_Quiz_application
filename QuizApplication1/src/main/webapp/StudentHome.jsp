<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="includes/StudentHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Home</title>

<!-- Bootstrap 4 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<style>
  body {
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', sans-serif;
    background: #f8f9fa;
  }

  .welcome-image {
    width: 100%;
    height: 80vh;
    object-fit: cover;
    border-bottom: 4px solid #007bff;
  }

  .carousel-item img {
    height: 85vh;
    object-fit: cover;
    border-radius: 10px;
  }

  .carousel-caption {
    background-color: rgba(0,0,0,0.5);
    padding: 15px 25px;
    border-radius: 10px;
  }

  .carousel-caption h5 {
    font-size: 2rem;
    font-weight: bold;
  }

  footer {
    background-color: #343a40;
    color: white;
    text-align: center;
    padding: 20px 0;
    margin-top: 50px;
  }
</style>
</head>
<body>



<!-- 🎠 Carousel -->
<div id="displayImages" class="carousel slide mt-4 container" data-ride="carousel" data-interval="4000">
  <ol class="carousel-indicators">
    <li data-target="#displayImages" data-slide-to="0" class="active"></li>
    <li data-target="#displayImages" data-slide-to="1"></li>
    <li data-target="#displayImages" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?auto=format&fit=crop&w=1600&q=80" alt="Welcome Student" class="welcome-image">
      <div class="carousel-caption d-none d-md-block">
        <h5>Welcome to the Quiz Portal</h5>
        <p>Test your skills and knowledge anytime!</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://images.unsplash.com/photo-1523580846011-d3a5bc25702b?auto=format&fit=crop&w=1600&q=80" class="d-block w-100" alt="Learning Online">
      <div class="carousel-caption d-none d-md-block">
        <h5>Learn & Compete</h5>
        <p>Challenge yourself with timed quizzes</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://images.unsplash.com/photo-1557324232-b8917d3c3dcb?auto=format&fit=crop&w=1600&q=80" class="d-block w-100" alt="Progress Report">
      <div class="carousel-caption d-none d-md-block">
        <h5>Track Your Growth</h5>
        <p>Monitor your results and improve consistently</p>
      </div>
    </div>
  </div>

  <a class="carousel-control-prev" href="#displayImages" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#displayImages" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<!-- Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

</body>
<%@include file="includes/Footer.jsp" %>
</html>
