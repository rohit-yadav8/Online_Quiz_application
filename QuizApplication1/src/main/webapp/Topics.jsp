<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@include file="includes/StudentHeader.jsp" %>  
<%@page import = "com.wipro.quiz.bean.TopicsBean" %>
<%@page import = "java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Topics</title>
    <link href="css/Home.css" rel="stylesheet" type="text/css">
    <style>
        /* Global Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fb;
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            margin-top: 40px;
            max-width: 90%;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .card {
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 250px;
            background-color: white;
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }

        .card-title {
            font-size: 22px;
            color: #007bff;
            margin-bottom: 15px;
        }

        .card-text {
            font-size: 16px;
            margin-bottom: 20px;
            color: #555;
        }

        .btn-primary {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 15px;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .card {
                width: 100%;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <c:forEach items="${topics}" var="topic">
            <div class="card">
                <h5 class="card-title">${topic.getTopicName()}</h5>
                <p class="card-text">Click below to take the ${topic.getTopicName()} test.</p>
                <a href="StudentController?takeTest=${topic.getTopicName()}" class="btn-primary">Take test</a>
            </div>
        </c:forEach>
    </div>

   

</body>
</html>
