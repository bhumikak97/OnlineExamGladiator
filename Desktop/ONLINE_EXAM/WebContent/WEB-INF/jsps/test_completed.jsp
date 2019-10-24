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
<title>Exam Portal-Test Completed!</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen"
	href="resources/index.css" />
<script src="resources/main.js"></script>
</head>
<body>
	<nav id="nav_bar">
		<ul class="nav_ul">
			<li class="nav_list float_left"><a href="userHome.htm"
				class="nav_link">Welcome ${user}</a></li>
			<li class="nav_list float_right"><a href="logout.htm"
				class="nav_link">Logout</a></li>
		</ul>
	</nav>
	<form class="form_table report_border">
		<h2 class="page_header">Thank You!!!</h2>
		<p class="page_header big_labels">
			You have cleared Level <label id="student_level_cleared">1</label>
		</p>
		<p class="page_header big_labels">
			You can proceed to Level <label id="student_next_level">2</label>
		</p>
		<input type="submit" id="student_view_report"
			class="big_button test_completed_buttons" value="View Report"
			onclick="action='report_card.htm'"><br> <input
			type="submit" id="go_to_next_level"
			class="big_button test_completed_buttons" value="Next Level"
			onclick="action='test.htm'">
	</form>
</body>
</html>