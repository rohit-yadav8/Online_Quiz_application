<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Topics</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- Font Awesome for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

<style>
    body {
        background: #f0f2f5;
        padding-top: 30px;
    }
    .card {
        transition: transform 0.2s, box-shadow 0.2s;
        border-radius: 12px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        margin-bottom: 30px;
    }
    .card:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 20px rgba(0,0,0,0.2);
    }
    .card-title {
        font-weight: bold;
        font-size: 1.2rem;
    }
    .btn-primary {
        border-radius: 20px;
        font-size: 0.9rem;
    }
    h2.page-title {
        text-align: center;
        margin-bottom: 40px;
        font-weight: bold;
        color: #333;
    }
</style>
</head>
<body>

<div class="container">
    <h2 class="page-title"><i class="fas fa-book"></i> Quiz Topics</h2>
    <div class="row justify-content-center">
        
        <!-- Topic Card -->
        <div class="col-md-4 col-sm-6">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">JAVA</h5>
                    <a href="#" class="btn btn-primary"><i class="fas fa-plus-circle"></i> Add Question</a>
                </div>
            </div>
        </div>

        <!-- Topic Card -->
        <div class="col-md-4 col-sm-6">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">PYTHON</h5>
                    <a href="#" class="btn btn-primary"><i class="fas fa-plus-circle"></i> Add Question</a>
                </div>
            </div>
        </div>

        <!-- Topic Card -->
        <div class="col-md-4 col-sm-6">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">PHP</h5>
                    <a href="#" class="btn btn-primary"><i class="fas fa-plus-circle"></i> Add Question</a>
                </div>
            </div>
        </div>

        <!-- Topic Card -->
        <div class="col-md-4 col-sm-6">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">HTML</h5>
                    <a href="#" class="btn btn-primary"><i class="fas fa-plus-circle"></i> Add Question</a>
                </div>
            </div>
        </div>

        <!-- Topic Card -->
        <div class="col-md-4 col-sm-6">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">SQL</h5>
                    <a href="#" class="btn btn-primary"><i class="fas fa-plus-circle"></i> Add Question</a>
                </div>
            </div>
        </div>

        <!-- Add New Topic Card -->
        <div class="col-md-4 col-sm-6">
            <div class="card text-center bg-light">
                <div class="card-body">
                    <h5 class="card-title">Create New Topic</h5>
                    <a href="#" class="btn btn-success"><i class="fas fa-plus"></i> Add Topic</a>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- Bootstrap JS & dependencies -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
