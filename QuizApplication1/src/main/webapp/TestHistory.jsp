<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@include file="includes/ProfessorHeader.jsp" %>
<%@page import = "com.wipro.quiz.bean.ResultBean" %>
<%@page import = "com.wipro.quiz.bean.TopicsBean" %>
<%@page import = "java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Questions</title>
    <link href="css/Home.css" rel="stylesheet" type="text/css">
    <link href="css/AddQuestion.css" rel="stylesheet" type="text/css">
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 30px auto;
            max-width: 90%;
            overflow-x: auto;
        }

        h5 {
            text-align: center;
            font-size: 28px;
            color: #007bff;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: white;
            font-size: 18px;
        }

        td {
            font-size: 16px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e6f7ff;
        }

        .footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        @media (max-width: 768px) {
            h5 {
                font-size: 24px;
            }

            table {
                font-size: 14px;
            }

            th, td {
                padding: 10px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h5><u>Result History</u></h5>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Student ID</th>
                    <th scope="col">Topic</th>
                    <th scope="col">Level 1 <br>(correct questions)</th>
                    <th scope="col">Time</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listOfTests}" var="listOfTests">
                    <tr>
                        <td>${listOfTests.getStuid()}</td>
                        <td>${listOfTests.getTopic()}</td>
                        <td>${listOfTests.getLevel1()}</td>
                        
                        <td>${listOfTests.getTime()}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <div class="container">
        <h5><u>Attempt Analysis</u></h5>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Topic</th>
                    <th scope="col">No. of Attempts</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${topics}" var="topic">
                    <tr>
                        <td>${topic.getTopicName()}</td>
                        <td>${noOfAttempts.get(topic.getTopicName())}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

   

</body>
</html>
