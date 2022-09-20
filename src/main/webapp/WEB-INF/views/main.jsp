<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
		<link rel="stylesheet" href="resources/css/main.css" type="text/css">
		<script src="resources/js/main.js"></script>
		<script src="resources/js/login.js"></script>
	</head>
	<body>
		<div class="top2">
			<div class="top3">
				<form action="" method="post" name="top_search_form">
					<input class="main_search" type="text" name="search" placeholder="검색">
					<button class="search-btn" type="button" onclick="SearchChk()"></button>
				</form>
			</div>
		</div>
			<img src="./resources/images/fantasy.jpg" width="300" height="400">
		<div class="login">
			<form name="login1" action="">
				<input class="login" type="text" name="id" value="" placeholder="id">
				<input class="input" type="password" name="pw" value="" placeholder="pw">
				<div class="button1">
					<button class="button" type="button" name="sign" onclick="location.href = 'signup' ">회원가입</button>
					<button class="button" type="button" name="login" onclick="loginChk()">로그인</button>
				</div>
			</form>
		</div>
	</body>
</html>