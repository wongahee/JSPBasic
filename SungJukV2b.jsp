<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- SungJukV2b.html => SungJukV2b.jsp --%>

<jsp:useBean id="sj" class="gahee.SungJuk"/> 
<%--SungJuk sj = new SungJuk(); 과 같음.--%>

<%--
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int mat = Integer.parseInt(request.getParameter("mat"));
	아래 한줄로 간추림
--%>
<jsp:setProperty name="sj" property="*" />

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>성적처리프로그램v2b</title>
	</head>
	<body>
		<h1>성적처리프로그램v2b</h1>
		<p>이름: <jsp:getProperty name="sj" property="name" /></p>
 		<p>국어: <jsp:getProperty name="sj" property="kor" /></p>
		<p>영어: <jsp:getProperty name="sj" property="eng" /></p>
		<p>수학: <jsp:getProperty name="sj" property="mat" /></p>
		<p>총점: <jsp:getProperty name="sj" property="tot" /></p>
		<p>평균: <jsp:getProperty name="sj" property="avg" /></p>
		<p>학점: <jsp:getProperty name="sj" property="grd" /></p>
	</body>
</html>