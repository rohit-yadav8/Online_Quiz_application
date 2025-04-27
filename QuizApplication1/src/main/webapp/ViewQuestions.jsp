<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@include file="includes/ProfessorHeader.jsp" %>
<%@page import = "com.wipro.quiz.bean.QuestionsBean" %>
<%@page import = "java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Questions</title>
    <link href="css/styles.css" rel="stylesheet" type="text/css"> <!-- Use a general styles.css for consistency -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fb;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 95%;
            margin: 40px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #007bff;
        }

        .table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        .table thead {
            background-color: #007bff;
            color: white;
        }

        .table th, .table td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .table tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .table tbody tr:hover {
            background-color: #f1f1f1;
        }

        .btn-action {
            background-color: #007bff;
            color: white;
            padding: 8px 15px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        .btn-action:hover {
            background-color: #0056b3;
        }

        .btn-action.delete {
            background-color: #dc3545;
        }

        .btn-action.delete:hover {
            background-color: #c82333;
        }

        .btn-container {
            display: flex;
            justify-content: center;
            gap: 20px;
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

        @media (max-width: 768px) {
            .table th, .table td {
                padding: 8px;
            }

            .table {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>View Questions</h1>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Question</th>
                    <th scope="col">Option 1</th>
                    <th scope="col">Option 2</th>
                    <th scope="col">Option 3</th>
                    <th scope="col">Option 4</th>
                    <th scope="col">Answer</th>
                    <th scope="col">Operation</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listOfQues}" var="quesBean">
                    <tr>
                        <th scope="row">${quesBean.getQuesid()}</th>
                        <td><pre>${quesBean.getQues()}</pre></td>
                        <td>${quesBean.getOp1()}</td>
                        <td>${quesBean.getOp2()}</td>
                        <td>${quesBean.getOp3()}</td>
                        <td>${quesBean.getOp4()}</td>
                        <td>${quesBean.getAns()}</td>
                        <td>
                            <div class="btn-container">
                                <a href="ProfessorController?editQues=${topic}&quesID=${quesBean.getQuesid()}" class="btn-action">Edit</a>
                                <a href="ProfessorController?deleteQues=${topic}&quesID=${quesBean.getQuesid()}" class="btn-action delete">Delete</a>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    
</body>
</html>
