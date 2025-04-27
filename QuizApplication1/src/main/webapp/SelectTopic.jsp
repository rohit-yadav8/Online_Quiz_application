<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ include file="includes/ProfessorHeader.jsp" %>
<%@page import="com.wipro.quiz.bean.TopicsBean"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Topic</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<style>
	html, body {
		height: 100%;
		margin: 0;
		padding: 0;
	}

	body {
		display: flex;
		flex-direction: column;
		background: #f8f9fa;
		font-family: 'Segoe UI', sans-serif;
	}

	main {
		flex: 1;
		display: flex;
		align-items: center;
		justify-content: center;
		padding: 20px;
	}

	.container-box {
		background: white;
		padding: 30px 40px;
		border-radius: 12px;
		box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
		width: 100%;
		max-width: 500px;
	}

	h1 {
		color: #007bff;
		margin-bottom: 30px;
		text-align: center;
	}

	button {
		border-radius: 30px;
		padding: 10px 25px;
	}
	button:hover {
		box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
	}

	footer {
		background-color: #343a40;
		color: white;
		text-align: center;
		padding: 15px 0;
	}
</style>

<%
	List<TopicsBean> topics = (ArrayList<TopicsBean>) request.getAttribute("topics");
	String redirectTo = (String) request.getAttribute("redirectTo");
%>	

</head>
<body>

<main>
	<div class="container-box">
		<h1>Select a Topic</h1>
		<form action="ProfessorController" name="selectTopicForm" method="post">
			<div class="form-group">
				<label for="topic"><strong>Select a topic</strong></label> 
				<select class="form-control" id="topic" name="topic">
					<c:forEach items="${topics}" var="topic">
						<option value="${topic.getTopicName()}">${topic.getTopicName()}</option>
					</c:forEach>
				</select>
			</div>
			<div class="text-center mt-4">
				<button type="submit" class="btn btn-primary" name="submit" value="viewQues">Submit</button>
				&nbsp;
				<button type="reset" class="btn btn-secondary">Reset</button>
			</div>
		</form>
	</div>
</main>

<footer>
	<%@ include file="includes/Footer.jsp" %>
</footer>

</body>
</html>
