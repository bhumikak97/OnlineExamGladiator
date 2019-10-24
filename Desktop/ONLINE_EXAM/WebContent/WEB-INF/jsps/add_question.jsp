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
<title>Exam Portal-Add Question</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen"
	href="resources/index.css" />
<script src="resources/main.js"></script>
</head>
<body>
	<nav id="nav_bar">
		<ul class="nav_ul">
			<li class="nav_list float_left"><a
				href="adminHome.htm" class="nav_link">Welcome ${user}</a></li>
			<li class="nav_list float_right"><a href="logout.htm"
				class="nav_link">Logout</a></li>
		</ul>
	</nav>
	<p>Hello<c:out value="${requestScope.i}"/></p>
	<div>
		<form action="addQuestion.htm">
			<h2 class="page_header">ADD QUESTION</h2>
			<table id="add_quest_form" class="form_table">
				<!--  <tr>
					<td class="form_field_label">Select Test:</td>
					<td><select class="test_select add_question_form_field"
						name="test">
							<option class="test_select_opt" value="">--Select--</option>
							<option class="test_select_opt" value="Java">Java</option>
							<option class="test_select_opt" value="SQL">SQL</option>
							<option class="test_select_opt" value="PHP">PHP</option>
							<option class="test_select_opt" value="C/C++">C/C++</option>
							<option class="test_select_opt" value="Python">Python</option>
							<option class="test_select_opt" value="C#/.net">C#/.net</option>
					</select>
					<br><label id="testSelectionError" class="error_fields"></label>					
					</td>
					<td class="form_field_label">Level:</td>
					<td><input type="number"
						class="form_input add_question_form_field" name="level" min=1
						max=3 placeholder="Select level of test">
						<br><label id="testLevelError" class="error_fields"></label>
						</td>
				</tr>-->
				<tr>
					<td class="form_field_label">Question to be added:</td>
					<td colspan=3><input type="text"
						class="form_input form_input_question add_question_form_field"
						name="question" placeholder="Enter the question to be added">
						<br><label id="testQuestionError" class="error_fields"></label>
						</td>
				</tr>
				<tr>
					<td class="form_field_label">Option 1:</td>
					<td><input type="text"
						class="form_input add_question_form_field" name="opt1" placeholder="Enter the first option">
						<br><label id="option1Error" class="error_fields"></label>
						</td>
					<td class="form_field_label">Option 2:</td>
					<td><input type="text"
						class="form_input add_question_form_field" name="opt2" placeholder="Enter the second option">
						<br><label id="option2Error" class="error_fields"></label>
						</td>
				</tr>
				<tr>

					<td class="form_field_label">Option 3:</td>
					<td><input type="text"
						class="form_input add_question_form_field" name="opt3" placeholder="Enter the third option">
						<br><label id="option3Error" class="error_fields"></label></td>
					<td class="form_field_label">Option 4:</td>
					<td><input type="text"
						class="form_input add_question_form_field" name="opt4" placeholder="Enter the fourth option">
						<br><label id="option4Error" class="error_fields"></label></td>
				</tr>
				<tr>
					<td class="form_field_label">Correct Answer:</td>
					<td><select class="test_select add_question_form_field"
						name="correct_answer">
							<option class="test_select_opt" value="">--Select--</option>
							<option class="test_select_opt" value="opt1">Option 1</option>
							<option class="test_select_opt" value="opt2">Option 2</option>
							<option class="test_select_opt" value="opt3">Option 3</option>
							<option class="test_select_opt" value="opt4">Option 4</option>
					</select>
					<br><label id="correctAnsError" class="error_fields"></label>
					</td>
					<td colspan=2></td>
				<tr>
					<td colspan=4 class="add_question_td"><input type="submit" class="big_button"
						value="Add"></td>
				</tr>
			</table>
			
		</form>
	</div>
</body>
</html>