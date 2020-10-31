<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>HELLO OAUTH</title>
</head>
<body>
	<h1>Google Login 완료</h1>
	<h3>받아오는 데이터</h3>
토큰 : ${token}
이메일 : ${email}
<div><img src="${picture}"></img></div>
사진 url : ${picture}<br>
이름 : ${name}

</body>
</html>