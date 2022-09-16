<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="resources/css/signup.css" type="text/css" />
	</head>
	<body>
		<table>
			<form action="insert" method="post">
				<table style="width: 400px">
					<tr>
						<td><input type="hidden" name="m_profile" value="./image/fantasy.jpg"></td>
					</tr>
					<tr>
						<td>아이디</td>
						<td><input type="text" name="m_id"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="m_pw"></td>
					</tr>
					<tr>
						<td>비밀번호확인</td>
						<td><input type="password" name="m_pw"></td>
					</tr>
					<tr>
						<td>닉네임</td>
						<td><input type="text" name="m_nick"></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="m_name"></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td><input type="text" name="m_mail"></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td><input type="text" name="m_tel"></td>
					</tr>
					<tr>
						<td>분야</td>
						<td><input type="text" name="m_field"></td>
					</tr>
					<tr>
						<td>등급</td>
						<td><input type="hidden" name="m_grade" value="회원"></td>
					</tr>
					
					<tr>
						<td>개인정보제공동의</td>
						<td><input type="checkbox" name="agree" value="">개인 정보
							수집 및 이용에 동의 합니다</td>
					</tr>
	
				</table>
				<br> <input type="submit" value="회원가입"> <input
					type="reset" value="취소">
			</form>
		</table>
	</body>
</html>