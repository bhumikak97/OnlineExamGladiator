<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Exam Portal-Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen"
	href="resources/index.css" />
<script src="resources/main.js"></script>
</head>
<body>
	<nav id="nav_bar">
		<ul class="nav_ul">
			<li class="nav_list float_left"><a href="index.jsp"
				class="nav_link">Home</a></li>
			<li class="nav_list float_left"><a href="about.htm"
				class="nav_link">About Us</a></li>
			<li class="nav_list nav_link float_right dropdown active">Login
				<div class="dropdown-content nav_list r">
					<a class="nav_link" href="admin_login.htm">Login as Admin</a> <a
						class="nav_link" href="#">Login as User</a>
				</div>
			</li>
			<li class="nav_list float_right"><a href="register.htm"
				class="nav_link">Register</a></li>
		</ul>
	</nav>

	<div>
		<h2 class="page_header login_header">LOGIN</h2>
		<form action="loginProcess.htm" id="login_form" name="login_form" method="POST">
			<table class="form_table">
				<tr>
					<td class="form_field_label">Email Id:</td>
					<td><input type="email" id="loginId" name="email"
						class="form_input" placeholder="Enter your registered Email Id">
						<br><label id="loginId_error" class="error_fields"></label></td>
				</tr>
				<tr id="pwd_row">
					<td class="form_field_label">Password:</td>
					<td><input type="password" id="loginPassword"
						name="password" class="form_input"
						placeholder="Enter your password"><br><label id="loginPassword_error" class="error_fields"></label></td>
				</tr>
				<tr>
					<td colspan=2><input type="submit" value="Login"
						id="login_button" class="big_button"></td>
				</tr>
				<tr>
					<td colspan=2><a href="forgotPassword.htm" id="forgotPassword" class="form_field_label page_link">Forgot Password?</a>
						<br> <br>
						<label class="form_field_label">Don't have an account? <a href="register.htm" class="form_field_label page_link">Register here</a></label>
						<br><br>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>