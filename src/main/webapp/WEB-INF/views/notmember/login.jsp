<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="resources/css/login.css" type="text/css">
	<script src="resources/js/login.js"></script>
	</head>
	<body>
		 <!-- css 적용하기 전입니다 -->
		<div class="block_00">
			<span><!--logo--></span>
		</div>
		<form name="login1" action="">
			<div class="logincss">
				<li><input type="text" name="id" value="" placeholder="아이디를 입력하세요."></li>
				<li><input type="password" name="pw" value="" placeholder="비밀번호를 입력하세요."></li>
				<li><button type="button" name="" onclick="location.href = '#' ">아이디 찾기</button></li>
				<li><button type="button" name="" onclick="location.href = '#' ">비밀번호 찾기</button></li>
				<li><input type="checkbox" name="auto_login"> 자동 로그인</li>
				<li><button type="button" name="login" onclick="">로그인</button></li>
				<li><button type="button" name="sign" onclick="loginChk()">아직 회원이 아니신가요? 회원가입</button></li>
				<br>
			</div>
		</form>
	</body>
</html>