<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Coffee Form</title>
		<link rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css" />
		<style>
			.form-container{
				max-width:500px;
				margin: 50px auto;
				padding:20px;
			}
			h2{
				text-align:center;
			}
		</style>
	</head>
	<body>
		<div class ="form-container">
		<h2>咖啡調配方法</h2>
		<form class= "pure-form" method ="POST" action = "/homework/coffee">
		<fieldset>
		<legend>Coffee Form</legend>
		</fieldset>
		</form>
		</div>	
	</body>
</html>