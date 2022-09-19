<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
nav {
	float: left;
	width: 150px;
	height: 1000px;
	font-size: 18px;
	/*
	background-image: linear-gradient(120deg, #a1c4fd 0%, #c2e9fb 100%);
	background-image: linear-gradient(120deg, #e0c3fc 0%, #8ec5fc 100%);
	background-image: linear-gradient(to top, #30cfd0 0%, #330867 100%);
	*/
	background-image: linear-gradient(to top, #5ee7df 0%, #b490ca 100%);
}
nav ul li{
    display: block;
    line-height: 100px;
    text-align: center;
}
nav ul li .on{
    text-decoration: underline;
}
nav ul li a{
	color: #ffffff;
	text-decoration: none;
}
section div{
	display: none;
}

section .show{
	display: block;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="./resources/js/nav.js"></script>
</head>
<body>
<nav>
	<ul>
		<li id="li"><a id="a" class="on" href="admin">마이페이지</a></li>
		<li id="li"><a id="a" href="/">게시판 관리</a></li>
		<li id="li"><a id="a" href="admin">신고 관리</a></li>
		<li id="li"><a id="a" href="admin">회원 관리</a></li>
	</ul>
</nav>
<section>
	<div id="test" class="show">마이페이지</div>
	<div id="test">게시판 관리</div>
	<div id="test">신고 관리</div>
	<div id="test">회원 관리</div>
</section>
</body>
</html>