<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>목록</h2>
<input type="button" value="등록" onclick="location.href='/member/write.do'">
<table border="1" width="700px">
	<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>연락처</td>
		<td>이메일</td>
		<td>가입일</td>
	</tr>
	<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.userid }</td>
			<td>${row.name }</td>
			<td>${row.phone }</td>
			<td>${row.email }</td>
			<td>${row.join_date }</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>