<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<%
	if (session.getAttribute("user") == null)
		response.sendRedirect("index.jsp");
%>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Exam Portal-Test</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen"
	href="resources/index.css" />
<!--script src="resources/main.js"></script-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>

<body id="element">

	<div id="overlay">
		<button id="overlay_button" class="big_button" onclick="off()">Start
			Test</button>
	</div>
	<div id="startTest">
		<label class="usernameDisplay">Logged in as: <strong>${user}</strong>
		</label>
		<h2 class="page_header" id="testLevel">Level ${levelNo}</h2>
		<div id="showtime">
			Time Left : <input id="minutes" type="text"> : <input
				id="seconds" type="text">
		</div>
		<br>
		<form method="POST">
			<div class="question_paper">
				<div id="questions_map">
					<div id="color_code_div">
						&nbsp;
						<button class="color_code" id="blue" disabled></button>
						Unattempted
						<button class="color_code" id="green" disabled></button>
						Attempted
						<button class="color_code" id="orange" disabled></button>
						Marked for Review
					</div>
					<button class="big_button question_number_map" id="btn1">1</button>
					<button class="big_button question_number_map" id="btn2">2</button>
					<button class="big_button question_number_map" id="btn3">3</button>
					<br>
					<button class="big_button question_number_map" id="btn4">4</button>
					<button class="big_button question_number_map" id="btn5">5</button>
					<button class="big_button question_number_map" id="btn6">6</button>
					<br>
					<button class="big_button question_number_map" id="btn7">7</button>
					<button class="big_button question_number_map" id="btn8">8</button>
					<button class="big_button question_number_map" id="btn9">9</button>
					<br>
					<button class="big_button question_number_map" id="btn10">10</button>
				</div>
			</div>
			<div id="questionSectionBorder">
				<div class="question_section" id="first">
					<div id="review_box">
						<input type="checkbox" name="review" value="review"><strong>Review</strong><br>
					</div>
					<br> <br> <br>
					<c:forEach items="${requestScope.list}" var="exam"
						varStatus="loopCounter" begin="0" end="0">
						<p class="qtn_no">
							Question <label id="qno">1</label>/10
						</p>
						<p class="question">
							<c:out value="${exam.question}"></c:out>
						</p>
						<div class="options">
							<input type="radio" name="option" value="option1">
							<c:out value="${exam.opt_1}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option2">
							<c:out value="${exam.opt_2}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option3">
							<c:out value="${exam.opt_3}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option4">
							<c:out value="${exam.opt_4}"></c:out>
							</input> <br> <br>
						</div>
					</c:forEach>
					<!--  input type="submit" name="btn" class="big_button next_button"
				value="Next"-->
					<button class="big_button next_button" id="first_btn">Next</button>
				</div>

				<div class="question_section" id="second">
					<div id="review_box">
						<input type="checkbox" name="review" value="review"><strong>Review</strong><br>
					</div>
					<br> <br> <br>
					<c:forEach items="${requestScope.list}" var="exam"
						varStatus="loopCounter" begin="1" end="1">
						<p class="qtn_no">
							Question <label id="qno">2</label>/10
						</p>
						<p class="question">
							<c:out value="${exam.question}"></c:out>
						</p>
						<div class="options">
							<input type="radio" name="option" value="option1">
							<c:out value="${exam.opt_1}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option2">
							<c:out value="${exam.opt_2}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option3">
							<c:out value="${exam.opt_3}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option4">
							<c:out value="${exam.opt_4}"></c:out>
							</input> <br> <br>
						</div>
					</c:forEach>
					<button class="big_button next_button" id="second_btn">Next</button>
				</div>

				<div class="question_section" id="third">
					<div id="review_box">
						<input type="checkbox" name="review" value="review"><strong>Review</strong><br>
					</div>
					<br> <br> <br>
					<c:forEach items="${requestScope.list}" var="exam"
						varStatus="loopCounter" begin="2" end="2">
						<p class="qtn_no">
							Question <label id="qno">3</label>/10
						</p>
						<p class="question">
							<c:out value="${exam.question}"></c:out>
						</p>
						<div class="options">
							<input type="radio" name="option" value="option1">
							<c:out value="${exam.opt_1}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option2">
							<c:out value="${exam.opt_2}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option3">
							<c:out value="${exam.opt_3}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option4">
							<c:out value="${exam.opt_4}"></c:out>
							</input> <br> <br>
						</div>
					</c:forEach>
					<button class="big_button next_button" id="third_btn">Next</button>
				</div>

				<div class="question_section" id="fourth">
					<div id="review_box">
						<input type="checkbox" name="review" value="review"><strong>Review</strong><br>
					</div>
					<br> <br> <br>
					<c:forEach items="${requestScope.list}" var="exam"
						varStatus="loopCounter" begin="3" end="3">
						<p class="qtn_no">
							Question <label id="qno">4</label>/10
						</p>
						<p class="question">
							<c:out value="${exam.question}"></c:out>
						</p>
						<div class="options">
							<input type="radio" name="option" value="option1">
							<c:out value="${exam.opt_1}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option2">
							<c:out value="${exam.opt_2}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option3">
							<c:out value="${exam.opt_3}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option4">
							<c:out value="${exam.opt_4}"></c:out>
							</input> <br> <br>
						</div>
					</c:forEach>
					<button class="big_button next_button" id="fourth_btn">Next</button>
				</div>

				<div class="question_section" id="fifth">
					<div id="review_box">
						<input type="checkbox" name="review" value="review"><strong>Review</strong><br>
					</div>
					<br> <br> <br>
					<c:forEach items="${requestScope.list}" var="exam"
						varStatus="loopCounter" begin="4" end="4">
						<p class="qtn_no">
							Question <label id="qno">5</label>/10
						</p>
						<p class="question">
							<c:out value="${exam.question}"></c:out>
						</p>
						<div class="options">
							<input type="radio" name="option" value="option1">
							<c:out value="${exam.opt_1}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option2">
							<c:out value="${exam.opt_2}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option3">
							<c:out value="${exam.opt_3}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option4">
							<c:out value="${exam.opt_4}"></c:out>
							</input> <br> <br>
						</div>
					</c:forEach>
					<button class="big_button next_button" id="fifth_btn">Next</button>
				</div>

				<div class="question_section" id="sixth">
					<div id="review_box">
						<input type="checkbox" name="review" value="review"><strong>Review</strong><br>
					</div>
					<br> <br> <br>
					<c:forEach items="${requestScope.list}" var="exam"
						varStatus="loopCounter" begin="5" end="5">
						<p class="qtn_no">
							Question <label id="qno">6</label>/10
						</p>
						<p class="question">
							<c:out value="${exam.question}"></c:out>
						</p>
						<div class="options">
							<input type="radio" name="option" value="option1">
							<c:out value="${exam.opt_1}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option2">
							<c:out value="${exam.opt_2}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option3">
							<c:out value="${exam.opt_3}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option4">
							<c:out value="${exam.opt_4}"></c:out>
							</input> <br> <br>
						</div>
					</c:forEach>
					<button class="big_button next_button" id="sixth_btn">Next</button>
				</div>

				<div class="question_section" id="seventh">
					<div id="review_box">
						<input type="checkbox" name="review" value="review"><strong>Review</strong><br>
					</div>
					<br> <br> <br>
					<c:forEach items="${requestScope.list}" var="exam"
						varStatus="loopCounter" begin="6" end="6">
						<p class="qtn_no">
							Question <label id="qno">7</label>/10
						</p>
						<p class="question">
							<c:out value="${exam.question}"></c:out>
						</p>
						<div class="options">
							<input type="radio" name="option" value="option1">
							<c:out value="${exam.opt_1}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option2">
							<c:out value="${exam.opt_2}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option3">
							<c:out value="${exam.opt_3}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option4">
							<c:out value="${exam.opt_4}"></c:out>
							</input> <br> <br>
						</div>
					</c:forEach>
					<button class="big_button next_button" id="seventh_btn">Next</button>
				</div>

				<div class="question_section" id="eighth">
					<div id="review_box">
						<input type="checkbox" name="review" value="review"><strong>Review</strong><br>
					</div>
					<br> <br> <br>
					<c:forEach items="${requestScope.list}" var="exam"
						varStatus="loopCounter" begin="7" end="7">
						<p class="qtn_no">
							Question <label id="qno">8</label>/10
						</p>
						<p class="question">
							<c:out value="${exam.question}"></c:out>
						</p>
						<div class="options">
							<input type="radio" name="option" value="option1">
							<c:out value="${exam.opt_1}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option2">
							<c:out value="${exam.opt_2}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option3">
							<c:out value="${exam.opt_3}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option4">
							<c:out value="${exam.opt_4}"></c:out>
							</input> <br> <br>
						</div>
					</c:forEach>
					<button class="big_button next_button" id="eighth_btn">Next</button>
				</div>

				<div class="question_section" id="ninth">
					<div id="review_box">
						<input type="checkbox" name="review" value="review"><strong>Review</strong><br>
					</div>
					<br> <br> <br>
					<c:forEach items="${requestScope.list}" var="exam"
						varStatus="loopCounter" begin="8" end="8">
						<p class="qtn_no">
							Question <label id="qno">9</label>/10
						</p>
						<p class="question">
							<c:out value="${exam.question}"></c:out>
						</p>
						<div class="options">
							<input type="radio" name="option" value="option1">
							<c:out value="${exam.opt_1}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option2">
							<c:out value="${exam.opt_2}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option3">
							<c:out value="${exam.opt_3}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option4">
							<c:out value="${exam.opt_4}"></c:out>
							</input> <br> <br>
						</div>
					</c:forEach>
					<button class="big_button next_button" id="ninth_btn">Next</button>
				</div>

				<div class="question_section" id="tenth">
					<div id="review_box">
						<input type="checkbox" name="review" value="review"><strong>Review</strong><br>
					</div>
					<br> <br> <br>
					<c:forEach items="${requestScope.list}" var="exam"
						varStatus="loopCounter" begin="9" end="9">
						<p class="qtn_no">
							Question <label id="qno">10</label>/10
						</p>
						<p class="question">
							<c:out value="${exam.question}"></c:out>
						</p>
						<div class="options">
							<input type="radio" name="option" value="option1">
							<c:out value="${exam.opt_1}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option2">
							<c:out value="${exam.opt_2}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option3">
							<c:out value="${exam.opt_3}"></c:out>
							</input> <br> <br> <input type="radio" name="option"
								value="option4">
							<c:out value="${exam.opt_4}"></c:out>
							</input> <br> <br>
						</div>
					</c:forEach>
				</div>
			</div>
			<input type="submit" class="big_button test_submit_button"
				value="Submit Test" onclick="action='test_completed.htm'">
		</form>
	</div>
	<script type="text/javascript">
		var mins = 1;

		//calculate the seconds 
		var secs = mins * 60;

		//countdown function is evoked when page is loaded 
		function countdown() {
			setTimeout('Decrement()', 60);
		}

		//Decrement function decrement the value. 
		function Decrement() {
			if (document.getElementById) {
				minutes = document.getElementById("minutes");
				seconds = document.getElementById("seconds");

				//if less than a minute remaining 
				//Display only seconds value. 
				if (seconds < 59) {
					seconds.value = secs;
				}

				//Display both minutes and seconds 
				//getminutes and getseconds is used to 
				//get minutes and seconds 
				else {
					minutes.value = getminutes();
					seconds.value = getseconds();
				}
				//when less than a minute remaining 
				//colour of the minutes and seconds 
				//changes to red 
				if (mins < 5) {
					minutes.style.color = "red";
					seconds.style.color = "red";
				}
				//if seconds becomes zero, 
				//then page alert time up 
				if (mins < 0) {
					alert('Time Up!');
					minutes.value = 0;
					seconds.value = 0;
					location.href = "test_completed.htm";
				}
				//if seconds > 0 then seconds is decremented 
				else {
					secs--;
					setTimeout('Decrement()', 1000);
				}
			}
		}

		function getminutes() {
			//minutes is seconds divided by 60, rounded down 
			mins = Math.floor(secs / 60);
			return mins;
		}

		function getseconds() {
			//take minutes remaining (as seconds) away  
			//from total seconds remaining 
			return secs - Math.round(mins * 60);
		}

		document.oncontextmenu = document.body.oncontextmenu = function() {
			return false;
		}

		var testSection = document.getElementById("startTest");
		document.onkeypress = function(event) {
			event.preventDefault();
			testSection.requestFullscreen();
			return false;
		}

		function off() {
			document.getElementById("overlay").style.display = "none";
			testSection.requestFullscreen();
			testSection.style.display = "block";
			countdown();
		}

		//hide show

		$(".question_section").hide();

		$("#first").show();
		
		/*$("#first.options.radio").change(function() {
			$("#btn1").css("background-color", "green");
		}); 
		
		$("#first.#review_box.checkbox").change(function(){
			if(this.checked) {
				$("#btn1").css("background-color", "#F37A0F");
	        }
		});*/

		/*
		if ($('#first.options.radio:checked')) {
				$("#btn1").css("background-color", "green");
			}
			if ($('#first.#review_box.checkbox:checked')) {
				$("#btn1").css("background-color", "#F37A0F");
			}
		
		if ($('#second.options.radio:checked')) {
			$("#btn2").css("background-color", "green");
		}
		if ($('#second.#review_box.checkbox:checked')) {
			$("#btn2").css("background-color", "#F37A0F");
		}

		if ($('#third.options.radio:checked')) {
			$("#btn3").css("background-color", "green");
		}
		if ($('#third.#review_box.checkbox:checked')) {
			$("#btn3").css("background-color", "#F37A0F");
		}

		if ($('#fourth.options.radio:checked')) {
			$("#btn4").css("background-color", "green");
		}
		if ($('#fourth.#review_box.checkbox:checked')) {
			$("#btn4").css("background-color", "#F37A0F");
		}

		if ($('#fifth.options.radio:checked')) {
			$("#btn5").css("background-color", "green");
		}
		if ($('#fifth.#review_box.checkbox:checked')) {
			$("#btn5").css("background-color", "#F37A0F");
		}

		if ($('#sixth.options.radio:checked')) {
			$("#btn6").css("background-color", "green");
		}
		if ($('#sixth.#review_box.checkbox:checked')) {
			$("#btn6").css("background-color", "#F37A0F");
		}

		if ($('#seventh.options.radio:checked')) {
			$("#btn7").css("background-color", "green");
		}
		if ($('#seventh.#review_box.checkbox:checked')) {
			$("#btn7").css("background-color", "#F37A0F");
		}

		if ($('#eighth.options.radio:checked')) {
			$("#btn8").css("background-color", "green");
		}
		if ($('#eighth.#review_box.checkbox:checked')) {
			$("#btn8").css("background-color", "#F37A0F");
		}

		if ($('#ninth.options.radio:checked')) {
			$("#btn9").css("background-color", "green");
		}
		if ($('#ninth.#review_box.checkbox:checked')) {
			$("#btn9").css("background-color", "#F37A0F");
		}

		if ($('#tenth.options.radio:checked')) {
			$("#btn10").css("background-color", "green");
		}
		if ($('#tenth.#review_box.checkbox:checked')) {
			$("#btn10").css("background-color", "#F37A0F");
		}*/
		
		if(($('#first .options input[type="radio"]').prop("checked")==true) && 
				$('#first #review_box input[type="checkbox"]').prop("checked")==true){
					$('#btn1').css("background-color","F37A0F")
		}
		
		else if(($('#first .options input[type="radio"]').prop("checked")==true) && 
				$('#first #review_box input[type="checkbox"]').prop("checked")==false){
					$('#btn1').css("background-color","green")
		}
				
		else if(($('#first .options input[type="radio"]').prop("checked")==false) && 
				$('#first #review_box input[type="checkbox"]').prop("checked")==false){
					$('#btn1').css("background-color","#9FB3E0")
		}
		
		
		
		$("#first_btn").click(function(e) {
			e.preventDefault();
			$("#first").hide();
			$("#second").show();
		});

		$("#second_btn").click(function(e) {
			e.preventDefault();
			$("#second").hide();
			$("#third").show();
		});

		$("#third_btn").click(function(e) {
			e.preventDefault();
			$("#third").hide();
			$("#fourth").show();
		});

		$("#fourth_btn").click(function(e) {
			e.preventDefault();
			$("#fourth").hide();
			$("#fifth").show();
		});

		$("#fifth_btn").click(function(e) {
			e.preventDefault();
			$("#fifth").hide();
			$("#sixth").show();
		});
		$("#sixth_btn").click(function(e) {
			e.preventDefault();
			$("#sixth").hide();
			$("#seventh").show();
		});
		$("#seventh_btn").click(function(e) {
			e.preventDefault();
			$("#seventh").hide();
			$("#eighth").show();
		});

		$("#eighth_btn").click(function(e) {
			e.preventDefault();
			$("#eighth").hide();
			$("#ninth").show();
		});

		$("#ninth_btn").click(function(e) {
			e.preventDefault();
			$("#ninth").hide();
			$("#tenth").show();
		});

		$("#btn1").click(function(e) {
			e.preventDefault();
			$(".question_section").hide();
			$("#first").show();
		});

		$("#btn2").click(function(e) {
			e.preventDefault();
			$(".question_section").hide();
			$("#second").show();
		});

		$("#btn3").click(function(e) {
			e.preventDefault();
			$(".question_section").hide();
			$("#third").show();
		});

		$("#btn4").click(function(e) {
			e.preventDefault();
			$(".question_section").hide();
			$("#fourth").show();
		});

		$("#btn5").click(function(e) {
			e.preventDefault();
			$(".question_section").hide();
			$("#fifth").show();
		});

		$("#btn6").click(function(e) {
			e.preventDefault();
			$(".question_section").hide();
			$("#sixth").show();
		});
		$("#btn7").click(function(e) {
			e.preventDefault();
			$(".question_section").hide();
			$("#seventh").show();
		});

		$("#btn8").click(function(e) {
			e.preventDefault();
			$(".question_section").hide();
			$("#eighth").show();
		});

		$("#btn9").click(function(e) {
			e.preventDefault();
			$(".question_section").hide();
			$("#ninth").show();
		});

		$("#btn10").click(function(e) {
			e.preventDefault();
			$(".question_section").hide();
			$("#tenth").show();
		});
	</script>
</body>
</html>