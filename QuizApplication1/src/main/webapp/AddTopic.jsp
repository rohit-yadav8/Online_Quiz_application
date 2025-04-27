<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="includes/ProfessorHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add New Topic</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Make the body take full height and use flexbox */
        html, body {
            margin: 0;
            padding: 0;
            height: 100%;
            display: flex;
            flex-direction: column; /* Stack elements vertically */
        }

        .container {
            flex: 1; /* Allow the container to grow and fill available space */
            overflow-y: auto; /* Enable scroll if content overflows */
        }

        .form-card {
            max-width: 500px;
            margin: 60px auto 80px auto;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 10px;
            background-color: #ffffff;
        }

        .form-title {
            text-align: center;
            font-weight: bold;
            font-size: 28px;
            margin-bottom: 25px;
        }

        footer {
            background-color: #f8f9fa;
            padding: 20px 0;
            text-align: center;
            width: 100%;
            margin-top: auto; /* Push footer to the bottom */
        }
    </style>

    <script type="text/javascript">
        function addTopicValidate() {
            var top = document.addTopicForm.topicName.value.trim();
            if (top.length === 0) {
                alert("Topic name cannot be empty!");
                return false;
            }
            return true;
        }
    </script>
</head>

<body>

<div class="container">
    <div class="form-card">
        <div class="form-title">Add New Topic</div>
        <form name="addTopicForm" action="ProfessorController" method="post" onsubmit="return addTopicValidate();">
            <div class="mb-3">
                <label for="topicName" class="form-label">Topic Name</label>
                <input type="text" class="form-control" name="topicName" placeholder="Enter topic name..." required>
            </div>

            <div class="d-flex justify-content-center">
                <button type="submit" class="btn btn-success me-3" name="submit" value="addTopic">Add Topic</button>
                <button type="reset" class="btn btn-outline-secondary" name="reset" value="Reset">Reset</button>
            </div>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
<%@ include file="includes/Footer.jsp"%>
</html>
