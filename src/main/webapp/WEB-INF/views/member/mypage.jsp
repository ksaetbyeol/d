<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="write">�۾���</a><!-- �۾��� ��������ġ ���Ͻô°��� ����Ʈ �κ��̼� �����ؼ� �������ּ��� �̴�� ���� ��������ϴ�-->
<a href="myp?m_nick=${lista.m_nick }">���� ��</a>
<a href="#">���̾˸�</a>
<a href="#">��������</a>
<a href="proupdatecheck?m_nick=${lista.m_nick }">�����ʼ���</a>
<table>
<tr>
<td><img src="./resources/images/${lista.m_profile }" width="300" height="400"></td>
</tr>
<tr>
	<th>�г���</th>
	<td>${lista.m_nick }</td>
</tr>
<tr>
	<th>�̸���</th>
	<td>${lista.m_mail }</td>
</tr>
<tr>
	<th>�о�</th>
	<td>${lista.m_field }</td>
</tr>
<tr>
	<th>��������</th>
	<td>${lista.m_jdate }</td>
</tr>
</table>
<table>
<tr>
	<th>��ȣ</th>
	<th>�з�</th>
	<th>����</th>
	<th>�ۼ���</th>
	<th>���ƿ��</th>
	<th>��ȸ��</th>
	<th>���� / ����</th>
</tr>
<c:forEach items="${list }" var="a">
<tr>
	<td>${a.b_num }</td>
	<td>${a.b_kind }</td>
	<td>${a.b_title }</td>
	<td>${a.b_wdate }</td>
	<td>${a.b_likecnt }</td>
	<td>${a.b_readcnt }</td>
	<td>
	<input type="button" value="����" onclick="location.href='writeupdatecheck?b_num=${a.b_num}'">&emsp;
	<input type="button" value="����" onclick="location.href='writedelete?b_num=${a.b_num}'"><!-- ���� �����Ͻðڽ��ϱ� ��ȿ�� ���� Ȯ���ϸ� ���� �Ǵ� ��ɺ�Ź�մϴ� -->
	</td>
</tr>
</c:forEach>
</table>
</body>
</html>