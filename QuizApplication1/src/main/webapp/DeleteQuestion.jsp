<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="includes/Header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="css/Home.css" rel="stylesheet" type="text/css">
    <link href="css/AddQuestion.css" rel="stylesheet" type="text/css">
    <title>Delete Question</title>
    <style>
        /* Add custom styling to make the page more attractive */
        body {
            background-color: #f8f9fa;
            font-family: 'Roboto', sans-serif;
        }
        .container {
            margin-top: 50px;
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        .btn-delete {
            background-color: #ff4d4d;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .btn-delete:hover {
            background-color: #ff1a1a;
        }
        .card {
            margin-top: 30px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .card-title {
            color: #343a40;
        }
        .card-body {
            background-color: #ffffff;
        }
        .footer {
            text-align: center;
            background-color: #343a40;
            color: white;
            padding: 20px;
            margin-top: 30px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="header">
        <h2 class="text-primary">Delete Question</h2>
        <p>Are you sure you want to delete this question?</p>
    </div>

    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Question to Delete</h5>
            <p class="card-text">Question content goes here. You can replace this text with the question to be deleted.</p>
            <button class="btn-delete" onclick="confirmDelete()">Delete Question</button>
        </div>
    </div>
</div>

<%@ include file="includes/Footer.jsp"%>

<script>
    function confirmDelete() {
        if (confirm("Are you sure you want to delete this question?")) {
            // Add logic for deletion
            alert("Question deleted successfully!");
        }
    }
</script>

</body>
</html>
