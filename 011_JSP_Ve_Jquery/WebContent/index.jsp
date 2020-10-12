<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
div {
	background: #def3ca;
	margin: 3px;
	width: 80px;
	display: none;
	float: left;
	text-align: center;
} 
</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>

	<button id="showr">Show</button>
	<button id="hidr">Hide</button>
	<div>Hello 3,</div>
	<div>how</div>
	<div>are</div>
	<div>you?</div>

	<script>
		$("#showr").click(function() {
			$("div").first().show("fast", function showNext() {
				$(this).next("div").show("fast", showNext);
			});
		});

		$("#hidr").click(function() {
			$("div").hide(1000);
		});
	</script>

</body>
</html>
