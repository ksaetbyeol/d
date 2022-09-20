<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="resources/css/top.css" type="text/css">
	</head>
	<body>
		<c:set var="result" value="${param.result}"/>
		<c:choose>
			<c:when test="${result=='loginfail'}">
				<script type="text/javascript">
					window.onload=function(){
						alert("로그인 확인 해주세요!!");
					}
				</script>
			</c:when>
		</c:choose>
		
		<c:set var="check" value="${param.check}"/>
		<c:choose>
			<c:when test="${check=='nodata'}">
				<script type="text/javascript">
					window.onload=function(){
						alert("회원가입이 필요합니다!!");
					}
				</script>
			</c:when>
			</c:choose>
		
		<c:set var="finish" value="${param.finish}"/>
		<c:choose>
			<c:when test="${finish=='good'}">
				<script type="text/javascript">
					window.onload=function(){
						alert("회원가입이 완료되었습니다!!");
					}
				</script>
			</c:when>
			</c:choose>
		<header>
			<h1>UPDEV</h1>
			<c:choose>
				<c:when test="${loginState==true}">
					<c:choose>
					<c:when test="${member.m_id=='admin'}">
						<span>환영합니다!! 관리자님 :)</span>
						<a href="admin">마이페이지</a>
					</c:when>
					<c:otherwise>
						<a href=""><span>환영합니다!!${member.m_nick}님</span></a>&emsp;<a href="myp?m_nick=${member.m_nick }">마이페이지</a>
					</c:otherwise>
					</c:choose>
					<a href="logout">로그아웃</a>
				</c:when>
				<c:otherwise>
					<a href="signup">회원가입</a>&emsp;<a href="login">로그인</a>
				</c:otherwise>
			</c:choose>
		</header>
	</body>
</html>