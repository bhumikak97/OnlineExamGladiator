<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<%
	if(session.getAttribute("user")==null)
		response.sendRedirect("index.jsp");
%>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Exam Portal-Search Students</title>
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

	<div>
		<h2 class="page_header">SEARCH STUDENT</h2>
		<form id="filter_student_search_form" class="exam"
			action="filter_show_stud.htm">
			<table class="form_table">
				<tr>
					<td class="form_field_label"><strong>Technology:</strong></td>
					<td><select class="reg_select" name="studTestTaken"
						id="studTestTaken">
							<option class="test_select_opt" value="" disabled selected>--Select--</option>
							<option value="Java">Java</option>
							<option value="SQL">SQL</option>
							<option value="PHP">PHP</option>
							<option value="C/C++">C/C++</option>
							<option value="Python">Python</option>
							<option value="C#/.net">C#/.net</option>
					</select><br> <label id="stud_testSearch_err" class="error_fields"></label></td>
				</tr>
				<tr>
					<td class="form_field_label">State:</td>
					<td><select class="reg_select" id="state" name="studState"
						onchange="makeSubmenu(this.value)">
							<option value="" disabled selected>--Select--</option>
							<option value="Maharashtra">Maharashtra</option>
							<option value="Karnataka">Karnataka</option>
							<option value="Kerala">Kerala</option>
							<option value="TamilNadu">Tamil Nadu</option>
					</select><br> <label id="stud_state_err" class="error_fields"></label></td>

				</tr>
				<tr>
					<td class="form_field_label">City:</td>
					<td><select class="reg_select" id="city" name="studCity">
							<option value="" disabled selected>--Select--</option>
							<option value="Mumbai">Mumbai</option>
							<option value="Chennai">Chennai</option>
							<option value="Bengaluru">Bengaluru</option>
							<option value="Pune">Pune</option>
					</select><br> <label id="stud_city_err" class="error_fields"></label></td>
				</tr>
				<tr>
					<td class="form_field_label"><strong>Minimum Level:</strong></td>
					<td><select class="reg_select" name="studMinLevel">
							<option value="" disabled selected>--Select--</option>
							<option value="1">Level 1</option>
							<option value="2">Level 2</option>
							<option value="3">Level 3</option>
					</select><br> <label id="stud_minlevel_err" class="error_fields"></label></td>
				</tr>
				<tr>
					<td class="form_field_label"><strong>Marks:</strong></td>
					<td><select class="reg_select" name="studMarks">
							<option value="" disabled selected>--Select--</option>
							<option value="1">0-7</option>
							<option value="2">8-14</option>
							<option value="3">15-20</option>
					</select><br> <label id="stud_marksRange_err" class="error_fields"></label></td>
				</tr>
				<tr>
					<td colspan=2 class="add_question_td"><input type="submit" class="big_button"
						value="Search"></td>
				</tr>
			</table>
		</form>

	</div>

</body>
</html>