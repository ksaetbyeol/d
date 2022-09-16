<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<table >
	<tr>
		<td>
				<h1>회원관리 프로그램ver2.0</h1>
		</td>
		<td width="300">
		
			<c:choose>
				<c:when test="${loginState==true}">
					<a href=""><span>환영합니다!!${member.m_id }님</span></a>&emsp;
					<a a href="logout">로그아웃</a>
				</c:when>
				<c:otherwise>
					<a href="signup">회원가입</a>&emsp;<a href="login">로그인</a>
				</c:otherwise>
			</c:choose>
		<!--  -->	
		  
		</td>				
	</tr>
</table>
</header>
</body>
</html>