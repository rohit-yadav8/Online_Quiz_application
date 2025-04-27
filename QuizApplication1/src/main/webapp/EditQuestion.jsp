<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="includes/ProfessorHeader.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import = "com.wipro.quiz.bean.QuestionsBean" %>
<%@page import = "com.wipro.quiz.bean.TopicsBean" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-pzjw8f+ua7Kw1TIq0Xs4BIViU4C3VgB8zW9sFYH1c6+h/s3UlbhFkmrJpn5ZMiZ3" crossorigin="anonymous">
    <link href="css/Home.css" rel="stylesheet" type="text/css">
    <link href="css/AddQuestion.css" rel="stylesheet" type="text/css">
    <title>Edit Question</title>
    <script src="javascripts/editQues.js" type="text/javascript"></script>

    <style>
        /* Custom styling */
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }

        /* Container settings */
        .container {
            margin-top: 50px;
        }

        /* Header styling */
        .header {
            text-align: center;
            margin-bottom: 30px;
        }

        /* Form label and input styling */
        .form-group label {
            font-weight: bold;
            color: #495057;
        }

        .form-control, select {
            border-radius: 10px;
            padding: 10px;
            font-size: 16px;
        }

        .form-control:focus {
            border-color: #5cb85c;
            box-shadow: 0 0 5px rgba(92, 184, 92, 0.7);
        }

        /* Buttons styling */
        .btn-submit {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 30px;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        .btn-submit:hover {
            background-color: #218838;
            transform: scale(1.05);
        }

        .btn-reset {
            background-color: #ffc107;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 30px;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        .btn-reset:hover {
            background-color: #e0a800;
            transform: scale(1.05);
        }

        .row {
            margin-bottom: 15px;
        }

        /* Card box shadow and hover effect */
        .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: scale(1.02);
        }

        /* Scrollable content */
        .scrollable-content {
            max-height: 80vh; /* Adjust this value to fit your needs */
            overflow-y: auto;
            padding-right: 15px; /* Ensure the scrollbar doesn't overlap */
        }
    </style>
</head>
<body onload="dropdownSelect(document.getElementById('topics'), &quot;${topic}&quot;, document.getElementById('ans'), &quot;${quesBean.getAns()}&quot;)">
    <div class="container">
        <div class="header">
            <h1 class="text-success">Edit Question</h1>
            <p class="lead">Modify the question details below</p>
        </div>

        <div class="card p-4 scrollable-content">
            <form name="EditQuesForm" action="ProfessorController" method="post">
                <div class="form-group row">
                    <label for="topics" class="col-3 col-form-label">Topic</label>
                    <div class="col-9">
                        <select name="topics" id="topics" class="form-control">
                            <c:forEach items="${topics}" var="topic">
                                <option value="${topic.getTopicName()}">${topic.getTopicName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="quesid" class="col-3 col-form-label">Question ID</label>
                    <div class="col-9">
                        <input type="text" name="quesid" value="${quesBean.getQuesid()}" class="form-control" placeholder="Enter Question ID">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="ques" class="col-3 col-form-label">Question</label>
                    <div class="col-9">
                        <textarea name="ques" class="form-control" placeholder="Type your question..." style="height: 150px">${quesBean.getQues()}</textarea>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="op1" class="col-3 col-form-label">Option 1</label>
                    <div class="col-9">
                        <input type="text" name="op1" value="${quesBean.getOp1()}" class="form-control" placeholder="Option 1">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="op2" class="col-3 col-form-label">Option 2</label>
                    <div class="col-9">
                        <input type="text" name="op2" value="${quesBean.getOp2()}" class="form-control" placeholder="Option 2">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="op3" class="col-3 col-form-label">Option 3</label>
                    <div class="col-9">
                        <input type="text" name="op3" value="${quesBean.getOp3()}" class="form-control" placeholder="Option 3">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="op4" class="col-3 col-form-label">Option 4</label>
                    <div class="col-9">
                        <input type="text" name="op4" value="${quesBean.getOp4()}" class="form-control" placeholder="Option 4">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="ans" class="col-3 col-form-label">Answer Option</label>
                    <div class="col-9">
                        <select name="ans" id="ans" class="form-control">
                            <option value="op1">Option 1</option>
                            <option value="op2">Option 2</option>
                            <option value="op3">Option 3</option>
                            <option value="op4">Option 4</option>
                        </select>
                    </div>
                </div>

                <div class="form-group row justify-content-center">
                    <div class="col-3">
                        <button type="submit" class="btn btn-submit" name="submit" value="editQues" onclick="return editQuesValidate()">Edit Question</button>
                    </div>
                    <div class="col-3">
                        <button type="reset" class="btn btn-reset" name="reset" value="Reset">Reset</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zyE2RmGfIbbVYUew+OrCXaRkfjk4n2w4wej3V4hS" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-xpD0/JhYH9DuaBtD+hvH0eqosI7eFE/dOPdy3XzgwSyPbNydONlA1IW9btOocwKn" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgRRE6ktoEptXjZ0cNmF3Kd8FdYOZLr1dF1pDsHovSttMlUq+Ml" crossorigin="anonymous"></script>
</body>
<%@ include file="includes/Footer.jsp"%>
</html>
