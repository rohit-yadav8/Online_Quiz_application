<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="includes/StudentHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quiz Result</title>

<!-- Bootstrap & Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="css/stprogress.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

<style>
	body {
		font-family: 'Poppins', sans-serif;
		background: #f4f6f9;
		color: #333;
	}

	h2 {
		font-weight: 600;
		color: #343a40;
	}

	.result-card {
		box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
		border-radius: 15px;
		background: #fff;
		padding: 30px;
		margin: auto;
		width: 90%;
		max-width: 900px;
	}

	.table th, .table td {
		text-align: center;
		vertical-align: middle;
	}

	#result {
		font-size: 22px;
		font-weight: bold;
		display: block;
		text-align: center;
		margin-bottom: 20px;
	}

	.progressbar .circle {
		margin: 20px auto;
	}
</style>

<%
	// Get session attributes
	int correctAns = (Integer) session.getAttribute("correctAns");
	int totalQuestions = 10; // Total number of questions
	int wrongAns = totalQuestions - correctAns;
	int totalMarks = correctAns; // 1 mark per correct answer
	float percentage = ((float) totalMarks / totalQuestions) * 100;
	String result = (totalMarks < 5) ? "Failed" : "Passed";
	String resultColor = result.equals("Passed") ? "#28a745" : "#dc3545"; // For inline styling
%>
</head>
<body>

<br><br>
<div class="result-card">
	<h2 class="text-center">Final Result</h2>
	<span id="result" style="color: <%= resultColor %>;"><%= result %></span>

	<div class="row">
		<div class="col-md-7">
			<table class="table table-bordered table-hover mt-4">
				<thead class="thead-dark">
					<tr>
						<th>Total Questions</th>
						<th>Correct Answers</th>
						<th>Wrong Answers</th>
						<th>Total Marks</th>
						<th>Percentage</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><%= totalQuestions %></td>
						<td><%= correctAns %></td>
						<td><%= wrongAns %></td>
						<td><%= totalMarks %> / 10</td>
						<td><%= String.format("%.2f", percentage) %> %</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="col-md-5 d-flex align-items-center justify-content-center">
			<div class="progressbar text-center">
				<div class="second circle" data-percent="<%=percentage%>">
					<strong></strong>
					<div style="margin-top: 10px; color: #808080;">Percentage</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="javascripts/circle-progress.js"></script>
<script>
$(document).ready(function () {
    $('.progressbar').each(function () {
        var percent = $(this).find('.circle').attr('data-percent');
        $(this).find('.circle').circleProgress({
            startAngle: -Math.PI / 2,
            value: percent / 100,
            size: 180,
            thickness: 12,
            fill: {
                color: percent >= 50 ? '#28a745' : '#dc3545'
            }
        }).on('circle-animation-progress', function (event, progress, stepValue) {
            $(this).find('strong').text((stepValue * 100).toFixed(2) + "%");
        });
    });
});
</script>

</body>
</html>
