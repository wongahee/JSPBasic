<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%! // 변수 선언
	String name;
	int kor, eng, mat;
	int tot;
	double avg;
	char grd;
%>
<%! // 메서드 선언
	void computeSungJuk() {
		tot = kor + eng + mat;
		avg = (double) tot /3;
	}
%>
<%  // 코드 실행
	name = "혜교";
	kor = 99;
	eng = 54;
	mat = 85;
%>
<%  // 코드 실행 - 메서드 호출
	computeSungJuk();
%>

<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>성적처리프로그램v1</title>
	</head>
	<body>
		<h1>성적처리프로그램</h1>
		<!-- 변수 출력 -->
		<p>이름: <% out.print(name); %></p>
		<p>국어: <%=kor %></p>
		<p>영어: <%=eng %></p>
		<p>수학: <%=mat %></p>
		<p>총점: <%=tot %></p>
		<p>평균: <%=avg %></p>
	</body>
</html>