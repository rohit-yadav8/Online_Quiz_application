<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ include file="includes/StudentHeader.jsp" %>
<%@page import="com.wipro.quiz.bean.TopicsBean"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Topic</title>
    <link href="css/Home.css" rel="stylesheet" type="text/css">
    <link href="css/AddQuestion.css" rel="stylesheet" type="text/css">
    <style>
        /* Global Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 50px auto;
        }

        h1 {
            text-align: center;
            color: #007bff;
            font-size: 36px;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-size: 18px;
            color: #555;
        }

        select.form-control {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        button {
            background-color: #28a745;
            color: white;
            padding: 12px 20px;
            border: none;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #218838;
        }

        /* Media Queries for Responsiveness */
        @media (max-width: 768px) {
            h1 {
                font-size: 28px;
            }

            .container {
                padding: 20px;
            }

            select.form-control {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Select a Topic to View Progress</h1>
        <form action="" name="selectTopicForm" method="post">
            <div class="form-group">
                <label for="topic">Select a Topic:</label>
                <select class="form-control" id="topic" name="topic">
                    <c:forEach items="${topics}" var="topic">
                        <option value="${topic.getTopicName()}">${topic.getTopicName()}</option>
                    </c:forEach>
                </select>
            </div>

            <button type="submit" class="btn btn-outline-primary" name="submit" value="viewProgress">Submit</button>
        </form>
    </div>

  

</body>
</html>
