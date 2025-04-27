<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@include file="includes/ProfessorHeader.jsp" %>
<%@page import="com.wipro.quiz.bean.TopicsBean" %>
<%@page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Topics</title>
    <link href="css/styles.css" rel="stylesheet" type="text/css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #121212; /* Dark background */
            color: white; /* White text */
            margin: 0;
            padding: 0;
        }

        .jumbotron {
            background-color: #333; /* Dark background for the jumbotron */
            color: white;
            margin-bottom: 30px;
            padding: 40px 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5); /* Subtle shadow */
        }

        .container {
            max-width: 100%;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            font-size: 2.5rem;
            text-align: center;
            color: #ff6347; /* Vibrant red for contrast */
        }

        p {
            font-size: 1.2rem;
            text-align: center;
            color: #aaa; /* Slightly faded text */
        }

        h5 {
            font-size: 1.5rem;
            margin-bottom: 20px;
            color: #fff; /* White for heading */
        }

        .topics-list {
            list-style-type: none;
            padding-left: 0;
        }

        .topics-list li {
            background-color: #333; /* Dark background for list items */
            margin: 10px 0;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Slight shadow */
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 1.1rem;
        }

        .topics-list li a {
            color: #dc3545; /* Red color for links */
            font-weight: bold;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .topics-list li a:hover {
            color: #ff6347; /* Slightly brighter red on hover */
        }

        .no-topics-message {
            text-align: center;
            font-size: 1.3rem;
            color: #ff6347; /* Highlight message in red */
        }

        footer {
            background-color: #333; /* Dark footer */
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 50px;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        @media (max-width: 768px) {
            h1 {
                font-size: 2rem;
            }

            .topics-list li {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>

    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Welcome, ${sessionScope.id}!</h1>
            <p class="lead">Here, you can view and manage topics for the quiz.</p>
        </div>
    </div>

    <div class="container">
        <h5>Topics List</h5>
        <hr>    

        <c:choose>
            <c:when test="${not empty topics}">
                <ul class="topics-list">
                    <c:forEach items="${topics}" var="topic">
                        <li>
                            <span>${topic.getTopicName()}</span>
                            <a href="ProfessorController?deleteTopic=${topic.getTopicName()}"
                               onclick="return confirm('Are you sure you want to delete this topic?');">
                               Delete
                            </a>
                        </li>
                    </c:forEach>
                </ul>
            </c:when>
            <c:otherwise>
                <p class="no-topics-message">No topics available. Please add new topics.</p>
            </c:otherwise>
        </c:choose>
    </div>


</body>
</html>
