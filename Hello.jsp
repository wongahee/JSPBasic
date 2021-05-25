<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Hello, World!!</title>
	</head>
	<body>
		<h1>Hello, World!!</h1>
		<%
			Date today = new Date();
			//out.println(today);
		%>
		<%=today %>
		<p>Mon May 24 11:00:36 KST 2021</p>
	</body>
</html>