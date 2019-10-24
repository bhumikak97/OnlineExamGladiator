<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<%
	if(session.getAttribute("user")==null)
		response.sendRedirect("index.jsp");
%>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Exam Portal-Remove Question</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen"
	href="resources/index.css" />
<script src="resources/main.js"></script>
</head>
<body>
	<nav id="nav_bar">
		<ul class="nav_ul">
			<li class="nav_list float_left"><a href="adminHome.htm"
				class="nav_link">Welcome ${user}</a></li>
			<li class="nav_list float_right"><a href="logout.htm"
				class="nav_link">Logout</a></li>
		</ul>
	</nav>
	<div>
		<h2 class="page_header">REMOVE QUESTION</h2>
		<form id="removeQuestionForm" class="form_table"
			action="remove_question.htm">

			<!--label class="form_field_label">Select Test:</label> <select
				class="test_select add_question_form_field" name="test">
				<option class="test_select_opt" value="" disabled selected>--Select--</option>
				<option class="test_select_opt" value="Java">Java</option>
				<option class="test_select_opt" value="SQL">SQL</option>
				<option class="test_select_opt" value="PHP">PHP</option>
				<option class="test_select_opt" value="C/C++">C/C++</option>
				<option class="test_select_opt" value="Python">Python</option>
				<option class="test_select_opt" value="C#/.net">C#/.net</option>
			</select><br> <label id="testSelectionError" class="error_fields"></label>
			 <br> <br> <label class="form_field_label">Level:
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> <select
				class="test_select add_question_form_field" name="studMinLevel">
				<option class="test_select_opt" value="" disabled selected>--Select--</option>
				<option class="test_select_opt" value="1">Level 1</option>
				<option class="test_select_opt" value="2">Level 2</option>
				<option class="test_select_opt" value="3">Level 3</option>
			</select><br> <label id="testLevelError" class="error_fields"></label>-->
			<br> <br>
			<table class="view_reports_table">
				<tr class="view_reports_table_tr">
					<th class="view_reports_table_td">ID</th>
					<th class="view_reports_table_td">Question</th>
					<th class="view_reports_table_td">Option 1</th>
					<th class="view_reports_table_td">Option 2</th>
					<th class="view_reports_table_td">Option 3</th>
					<th class="view_reports_table_td">Option 4</th>
					<th class="view_reports_table_td">Correct Answer</th>
					<th class="view_reports_table_td">Level</th>
				</tr>
				<c:forEach items="${requestScope.list}" var="ques">
					<tr class="view_reports_table_tr">
						<td class="view_reports_table_td">${ques.q_id}</td>
						<td class="view_reports_table_td">${ques.question}</td>
						<td class="view_reports_table_td">${ques.opt_1}</td>
						<td class="view_reports_table_td">${ques.opt_2}</td>
						<td class="view_reports_table_td">${ques.opt_3}</td>
						<td class="view_reports_table_td">${ques.opt_4}</td>
						<td class="view_reports_table_td">${ques.correct_answer}</td>
						<td class="view_reports_table_td">${ques.level}</td>
					</tr>
				</c:forEach>
			</table>
			<br> <br> <label class="form_field_label">Enter
				Question ID:</label> <input type="number"
				class="form_input add_question_form_field" name="q_id"
				placeholder="Enter ID of the question to be deleted "> <br>
			<label id="qIdError" class="error_fields"></label> <br> <br>
			<input type="submit" class="big_button" value="Remove">
		</form>
	</div>
</body>
</html>