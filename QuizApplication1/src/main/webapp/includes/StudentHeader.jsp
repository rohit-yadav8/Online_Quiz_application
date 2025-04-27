<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Header</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- Bootstrap Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style>
  .navbar {
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
  }
  .navbar-brand {
    font-weight: bold;
    font-size: 1.5rem;
    color: #007bff !important;
  }
  .nav-link {
    font-weight: 500;
    transition: all 0.3s ease;
  }
  .nav-link:hover {
    color: #0056b3 !important;
  }
  .nav-item .bi {
    margin-right: 6px;
  }
</style>
</head>
<body>
<%
  String id = Integer.toString((Integer)session.getAttribute("id"));
%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="StudentHome.jsp"><i class="bi bi-lightning-fill"></i> Quiz World</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" 
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ml-auto">

      <li class="nav-item active">
        <a class="nav-link" href="StudentHome.jsp">
          <i class="bi bi-house-door-fill"></i> Home
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="StudentController?param=viewTopics">
          <i class="bi bi-journal-text"></i> Assessment
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="StudentController?param=viewProgress">
          <i class="bi bi-graph-up"></i> Progress Card
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="StudentController?id=<%=id%>">
          <i class="bi bi-person-circle"></i> Profile
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="Logout.jsp">
          <i class="bi bi-box-arrow-right"></i> Logout
        </a>
      </li>

    </ul>
  </div>
</nav>

</body>
</html>
