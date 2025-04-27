<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import = "com.wipro.quiz.bean.QuestionsBean" %>
<%@page import = "java.util.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <title>Assessment</title>

    <!-- Bootstrap 4 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- Custom Styles -->
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 30px;
            margin-bottom: 60px;
        }

        #showtime {
            font-weight: bold;
            font-size: 18px;
            color: green;
        }

        .breadcrumb-area {
            background-color: #fff;
            padding: 10px 20px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.05);
        }

        .question-card {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .form-check {
            margin-bottom: 15px;
        }

        .btn-custom {
            border-radius: 30px;
            padding: 10px 30px;
            transition: background-color 0.3s ease;
        }

        .btn-custom:hover {
            background-color: #007bff;
            color: #fff;
        }

        .timer {
            font-size: 24px;
            font-weight: bold;
            color: #dc3545;
        }

        footer {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 20px 0;
            margin-top: 60px;
        }

        pre {
            white-space: pre-wrap;
            word-wrap: break-word;
        }

    </style>

    <!-- jQuery and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="javascripts/timer.js" type="text/javascript"></script>

    <script>
        // Function to start the timer and continue it across page reloads
        function execute(min, sec) {
            var timer = setInterval(function () {
                if (sec > 0) {
                    sec--;
                } else if (min > 0) {
                    min--;
                    sec = 59;
                }

                // Update the timer display
                document.getElementById("showtime").innerText = min + ":" + (sec < 10 ? "0" + sec : sec);

                // When the timer runs out, stop it
                if (min === 0 && sec === 0) {
                    clearInterval(timer);
                    alert("Time is up!");
                    document.getElementById("finishTest").click(); // Auto finish test when time is up
                }

                // Update the hidden inputs with the current time
                document.getElementById("min").value = min;
                document.getElementById("sec").value = sec;
            }, 1000);
        }
    </script>

</head>

<body onload="execute(${min}, ${sec})">

    <div class="breadcrumb-area d-flex justify-content-between align-items-center">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item">
                    <a href="#" title="Question Navigator" data-toggle="popover" data-trigger="focus"
                        data-placement="bottom" data-html="true"
                        data-content="Question 1/10, Question 2/10, Question 3/10">
                        Question ${quesBean.getQuesid()}/10
                    </a>
                </li>
            </ol>
        </nav>
        <div id="showtime" class="timer"></div>
    </div>

    <form name="AssessmentForm" action="StudentController" method="post">
        <div class="container">

            <!-- Question Section -->
            <div class="question-card">
                <pre>${quesBean.getQuesid()}. ${quesBean.getQues()}</pre>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="ans" id="op1" value="op1">
                    <label class="form-check-label" for="op1">${quesBean.getOp1()}</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="ans" id="op2" value="op2">
                    <label class="form-check-label" for="op2">${quesBean.getOp2()}</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="ans" id="op3" value="op3">
                    <label class="form-check-label" for="op3">${quesBean.getOp3()}</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="ans" id="op4" value="op4">
                    <label class="form-check-label" for="op4">${quesBean.getOp4()}</label>
                </div>
            </div>

            <div class="d-flex justify-content-between">
                <button type="submit" name="submit" value="prevQues" class="btn btn-info btn-custom">Previous</button>
                <button type="submit" name="submit" value="nextQues" class="btn btn-info btn-custom">Next</button>
            </div>
            
            <div class="text-center mt-4">
                <button type="submit" name="submit" id="finishTest" value="finishTest" class="btn btn-success btn-custom">Finish Test</button>
            </div>

            <!-- Hidden Inputs for Timer -->
            <input type="hidden" name="min" id="min" value="${min}" />
            <input type="hidden" name="sec" id="sec" value="${sec}" />

        </div>
    </form>

</body>

</html>
