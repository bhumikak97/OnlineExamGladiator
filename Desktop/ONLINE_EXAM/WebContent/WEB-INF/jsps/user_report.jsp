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
    <title>Exam Portal-View Reports</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="resources/index.css" />
    <!--script src="main.js"></script>-->
</head>
<body>
	<nav id="nav_bar">
<ul class="nav_ul">
            <li class="nav_list float_left"><a href="userHome.htm" class="nav_link">Welcome ${user}</a></li>
			<li class="nav_list float_right"><a href="logout.htm" class="nav_link">Logout</a></li>
        </ul>
    </nav>
    <div id="user_view_reports_div">
    <form>
    	<h2 class="page_header">RESULTS</h2>
    	<table id="reports_table" class="view_reports_table">
    		<tr class="view_reports_table_tr">
    			<th class="view_reports_table_td">Sr. No.</th>
    			<th class="view_reports_table_td">Test</th>
    			<th class="view_reports_table_td">Level</th>
    			<th class="view_reports_table_td">Date</th>
    			<th></th>
    		</tr>
    		<tr class="view_reports_table_tr">
    			<td id="reportSrNo" class="view_reports_table_td"></td>
    			<td id="reportTestName" class="view_reports_table_td"></td>
    			<td id="reportTestLevel" class="view_reports_table_td"></td>
    			<td id="reportDate" class="view_reports_table_td"></td>
    			<td><input type="submit" value="View Report" class="small_button" onclick="action='report_card.htm'"></td>
    		</tr>
    	</table>
    	</form>
    </div>
</body>
</html>