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
<div th:text="'TOKEN : ' + ${token}">${token}</div>
<div th:text="'Email : ' + ${email}">${email}</div>
<div><img th:src="${picture}"></img></div>
${picture}



</body>
</html>