<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./resources/css/info_update.css">
</head>
<body>
	<div>
		<div class="title">
			<span></span>
			<p>정보수정</p>
		</div>
		<div class="content">
			<c:forEach items="${list}" var="list">
				<div class=""></div>
			</c:forEach>
		
		</div>
	</div>
</body>
</html>