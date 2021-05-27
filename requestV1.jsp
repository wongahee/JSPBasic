<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String hobby[] = request.getParameterValues("hobby");
		String comment = request.getParameter("comment");
	%>
	<p>아이디: <%=userid %></p>
	<p>비밀번호: <%=passwd %></p>
	<p>이름: <%=name %></p>
	<p>전화번호: <%=tel1 %>-<%=tel2 %>-<%=tel3 %></p>
	<p>이메일: <%=email %></p>
	<p>취미: <%=hobby[0] %>,<%=hobby[1] %></p>
	<p>자기소개: <%=comment %></p>
</body>
</html>