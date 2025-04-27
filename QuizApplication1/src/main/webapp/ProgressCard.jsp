<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="includes/StudentHeader.jsp" %>
<%@page import = "com.wipro.quiz.bean.ResultBean" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Progress Card</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="css/stprogress.css" rel="stylesheet" type="text/css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    <%
        ResultBean result = (ResultBean) request.getAttribute("result");
        float level1 = ((float)result.getLevel1()/10)*100;
        float level2 = ((float)result.getLevel2()/10)*100;
        float level3 = ((float)result.getLevel3()/10)*100;
    %>

    <style>
        body {
            background-color: #f4f7fc;
            font-family: 'Arial', sans-serif;
        }

        .container {
            margin-top: 50px;
            margin-bottom: 50px;
        }

        h2 {
            color: #333;
            font-size: 2rem;
            font-weight: 600;
            text-align: center;
            margin-bottom: 30px;
        }

        .progressbar {
            position: relative;
            width: 100%;
            text-align: center;
            margin-bottom: 30px;
        }

        .circle {
            margin: 0 auto;
            position: relative;
            display: block;
            width: 200px;
            height: 200px;
            border-radius: 50%;
            background-color: #e5e5e5;
        }

        .circle strong {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 1.5rem;
            font-weight: bold;
            color: #663399;
        }

        .circle span {
            position: absolute;
            bottom: 10px;
            left: 50%;
            transform: translateX(-50%);
            font-size: 1rem;
            color: #808080;
        }

        .row {
            display: flex;
            justify-content: center;
            gap: 30px;
        }

        .col-sm-4 {
            max-width: 300px;
        }

        .progressbar:hover .circle {
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.2);
            transform: scale(1.05);
            transition: all 0.3s ease-in-out;
        }

        .progressbar .circle {
            background-color: #f7f7f7;
        }

        .progressbar .circle[data-percent="0"] {
            background-color: #e5e5e5;
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            font-size: 0.9rem;
            color: #888;
        }

        .test-date {
            font-size: 1.2rem;
            font-weight: bold;
            text-decoration: underline;
            color: #663399;
        }

        .test-date u {
            text-decoration: none;
        }
    </style>

</head>

<body>

<div class="container">
    <h2>${result.getTopic()}</h2>

    <div class="row text-center">
        <div class="col-sm-4">
            <div class="progressbar">
                <div class="circle" data-percent="<%=level1%>">
                    <strong style="margin-top:40px"></strong>
                    <span>Level 1</span>
                </div>
            </div>
        </div>

        

       
    </div>

    <div class="text-center">
        <h6 class="test-date"><u>Test date</u>: ${result.getTime()}</h6>
    </div>
</div>

<script src="javascripts/circle-progress.js"></script>
<script>
$(document).ready(function ($) {
    function animateElements() {
        $('.progressbar').each(function () {
            var elementPos = $(this).offset().top;
            var topOfWindow = $(window).scrollTop();
            var percent = $(this).find('.circle').attr('data-percent');
            var animate = $(this).data('animate');
            if (elementPos < topOfWindow + $(window).height() - 30 && !animate) {
                $(this).data('animate', true);
                $(this).find('.circle').circleProgress({
                    value: percent / 100,
                    size: 200,
                    thickness: 12,
                    fill: {
                        color: '#663399'
                    }
                }).on('circle-animation-progress', function (event, progress, stepValue) {
                    $(this).find('strong').text((stepValue*100).toFixed(2) + "%");
                }).stop();
            }
        });
    }

    animateElements();
    $(window).scroll(animateElements);
});
</script>

</body>
</html>
