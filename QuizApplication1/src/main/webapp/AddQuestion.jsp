<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="includes/ProfessorHeader.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ page import="com.wipro.quiz.bean.TopicsBean" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Question</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="javascripts/addQuestion.js" type="text/javascript"></script>
    <style>
        html, body {
            margin: 0;
            padding: 0;
            height: 100%;
            overflow-y: auto; /* Enables scrolling when content is large */
        }

        .container {
            padding-bottom: 40px; /* Extra space before footer */
        }

        footer {
            background-color: #f1f1f1;
            padding: 15px 0;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="text-center mb-4">
        <h2 class="fw-bold">Add New Question</h2>
        <p class="text-muted">Fill in the details below to add a new quiz question.</p>
    </div>

    <div class="card shadow-sm p-4">
        <form name="AddQuesForm" action="ProfessorController" method="post" onsubmit="return addQuesValidate();">
            
            <!-- Topic Dropdown -->
            <div class="mb-3">
                <label for="topics" class="form-label">Select Topic</label>
                <select name="topic" id="topics" class="form-select" required>
                    <c:forEach items="${topics}" var="topic">
                        <option value="${topic.getTopicName()}">${topic.getTopicName()}</option>
                    </c:forEach>
                </select>
            </div>

            <!-- Question ID -->
            <div class="mb-3">
                <label for="quesid" class="form-label">Question ID</label>
                <input type="text" class="form-control" name="quesid" placeholder="Enter unique Question ID..." required>
            </div>

            <!-- Question Text -->
            <div class="mb-3">
                <label for="ques" class="form-label">Question</label>
                <textarea class="form-control" name="ques" placeholder="Type your question here..." rows="4" required></textarea>
            </div>

            <!-- Options -->
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="op1" class="form-label">Option 1</label>
                    <input type="text" class="form-control" name="op1" placeholder="Option 1" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="op2" class="form-label">Option 2</label>
                    <input type="text" class="form-control" name="op2" placeholder="Option 2" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="op3" class="form-label">Option 3</label>
                    <input type="text" class="form-control" name="op3" placeholder="Option 3" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="op4" class="form-label">Option 4</label>
                    <input type="text" class="form-control" name="op4" placeholder="Option 4" required>
                </div>
            </div>

            <!-- Answer Option -->
            <div class="mb-3">
                <label for="ans" class="form-label">Correct Answer</label>
                <select name="ans" class="form-select" required>
                    <option value="op1">Option 1</option>
                    <option value="op2">Option 2</option>
                    <option value="op3">Option 3</option>
                    <option value="op4">Option 4</option>
                </select>
            </div>

            <!-- Buttons -->
            <div class="text-center">
                <button type="submit" class="btn btn-success px-4 me-2" name="submit" value="addQues">Add Question</button>
                <button type="reset" class="btn btn-outline-secondary px-4" name="reset" value="Reset">Reset</button>
            </div>
        </form>
    </div>
</div>

<%@ include file="includes/Footer.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
