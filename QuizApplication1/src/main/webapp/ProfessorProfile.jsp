<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="includes/ProfessorHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<!-- Bootstrap 5 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom Styles -->
<style type="text/css" media="screen">
    /* Flexbox to make sure footer stays at the bottom */
    html, body {
        height: 100%;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
    }

    /* Ensuring container is scrollable when content overflows */
    .container {
        flex: 1;
        overflow-y: auto; /* Scroll bar for overflow */
        padding-bottom: 50px; /* To prevent footer from covering content */
    }

    .jumbotron {
        background-color: #343a40;
        color: white;
        padding: 40px 20px;
        border-radius: 10px;
        margin-bottom: 20px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    /* Customizing form fields */
    .form-control {
        border-radius: 20px;
        padding: 15px;
        font-size: 14px;
    }

    .btn-outline-primary {
        border-radius: 20px;
        padding: 10px 30px;
        font-size: 14px;
    }

    .btn-outline-primary:hover {
        background-color: #007bff;
        color: white;
    }

    h5 {
        color: #343a40;
        font-size: 24px;
        margin-bottom: 15px;
    }

    footer {
        background-color: #f8f9fa;
        padding: 20px;
        text-align: center;
        width: 100%;
        margin-top: auto; /* Push footer to the bottom */
    }
</style>
<script src="javascripts/professorProfile.js" type="text/javascript"></script>  
</head>
<body onload="dropdownSelect(document.getElementById('gender'),&quot;${professor.getGender()}&quot;, document.getElementById('dept'),&quot;${professor.getDept()}&quot;, document.getElementById('qualification'),&quot;${professor.getQualification()}&quot;)">
    <div class="jumbotron jumbotron-fluid">
      <div class="container">
        <h1 class="display-4">Welcome! ${professor.getFname()}</h1>
        <p class="lead">Here are your profile details. You can edit them as needed.</p>
      </div>
    </div>
    
    <div class="container">
        <form name="ProfileForm" action="" method="post">
          <h5>Professor Details</h5>
          <hr>  
          <div class="form-group">
            <label for="id">Professor ID</label>
            <input type="text" class="form-control" id="id" placeholder="Professor ID" value="${professor.getId()}" name="id" readonly>
          </div>
          <div class="form-group">
            <label for="dept">Department</label>
            <select class="form-control" id="dept" name="dept">
              <option value="cse">Computer Science (CSE)</option>
              <option value="it">Information Technology (IT)</option>
              <option value="ece">Electronics and Communication (ECE)</option>
              <option value="me">Mechanical (ME)</option>
              <option value="eee">Electrical and Electronics (EEE)</option>
              <option value="ce">Civil (CE)</option>
            </select>
          </div>
          <div class="form-group">
            <label for="fname">First Name</label>
            <input type="text" class="form-control" id="fname" placeholder="First Name" value="${professor.getFname()}" name="fname" readonly>
          </div>
          <div class="form-group">
            <label for="lname">Last Name</label>
            <input type="text" class="form-control" id="lname" placeholder="Last Name" value="${professor.getLname()}" name="lname" readonly>
          </div>
          <div class="form-group">
            <label for="gender">Gender</label>
            <select class="form-control" id="gender" name="gender">
              <option value="Male">Male</option>
              <option value="Female">Female</option>
              <option value="Others">Others</option>
            </select>
          </div>
          <div class="form-group">
            <label for="dob">Date of Birth (mm-dd-yyyy)</label>
            <input type="date" class="form-control" id="dob" value="${professor.getDob()}" name="dob">
          </div>
          <div class="form-group">
            <label for="qualification">Qualification</label>
            <select class="form-control" id="qualification" name="qualification">
                <option value="PG">Post Graduate (PG)</option>
                <option value="PHD">PhD: Doctor of Philosophy</option>
            </select>
          </div>
          <div class="form-group">
            <label for="mobile">Mobile</label>
            <input type="text" class="form-control" id="mobile" placeholder="Mobile" name="mobile" value="${professor.getMobile()}" pattern="[789][0-9]{9}">
          </div>
          <div class="form-group">
            <label for="email">Email</label>
            <input type="text" class="form-control" id="email" placeholder="Email" name="email" value="${professor.getEmail()}" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
          </div>
          
          <h5>Change Password</h5>
          <hr>
          <div class="form-group">
            <label for="currPassword">Current Password</label>
            <input type="password" class="form-control" id="currPassword" name="currPassword" placeholder="Current Password">
          </div>
          <div class="form-group">
            <label for="newPassword">New Password</label>
            <input type="password" class="form-control" id="newPassword" name="newPassword" placeholder="New Password">
          </div>
          <div class="form-group">
            <label for="confPassword">Confirm Password</label>
            <input type="password" class="form-control" id="confPassword" name="confPassword" placeholder="Confirm Password">
          </div>
          <button type="submit" class="btn btn-outline-primary" onclick="return validPass('${professor.getPassword()}')" name="submit" value="update">Submit</button>&nbsp;&nbsp;
          <button type="reset" class="btn btn-outline-primary">Reset</button>
        </form>
    </div>


</body>
</html>
