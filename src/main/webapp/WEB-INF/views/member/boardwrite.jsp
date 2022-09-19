<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="writesave" method="post" enctype="multipart/form-data">
<input type="hidden" name="b_cate" value="일반">
<table>
<tr>
   <th>분류</th>
   <td><input type="text" name="b_kind"></td><!-- select 혹은 텍스트형식 두개 만들어놨습니당 -->
   <!-- <select name="b_kind">
   <option value="?">?</option>
   <option value="?">?</option>
   <option value="?">?</option>
   <option value="?">?</option>
   <option value="?">?</option>
   <option value="?">?</option>
   </select> -->
</tr>
<tr>
   <th>제목</th>
   <td><input type="text" name="b_title"></td>
</tr>
<tr>
   <th>작성자</th>
   <td><input type="text" name="m_nick"></td><!-- 자동으로 작성자(nick)이 hidden으로 들어가게 할 방법 구상중 -->
</tr>

<tr>
   <th>내용</th>
   <td><input type="text" name="b_content"></td><!-- summernote -->
</tr>
<tr>
   <th>첨부파일1</th>
   <td><input type="file" name="b_file1"></td><!-- summernote 사용 예정 -->
</tr>
<tr>
   <th>첨부파일2</th>
   <td><input type="file" name="b_file2"></td><!-- summernote 사용 예정 -->
</tr>
<tr>
   <th>태그</th>
   <td><input type="text" name="b_tag"></td>
</tr>
<tr>
   <td><input type="submit" value="등록"></td>
</tr>
</table>
</form>
</body>
</html>