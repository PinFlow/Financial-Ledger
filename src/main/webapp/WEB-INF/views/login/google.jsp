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
<div th:text="'TOKEN : ' + ${token}">Token : ${token}</div>
<div th:text="'Email : ' + ${email}">Email : ${email}</div>
<div><img src="${picture}"></img></div>
Picture url : ${picture}<br>
name : ${name}


</body>
</html>