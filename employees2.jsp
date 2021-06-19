<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="url">jdbc:mariadb://[아마존주소]:3306/playground</c:set>
<c:set var="drv">org.mariadb.jdbc.Driver</c:set>
<c:set var="usr">playground</c:set>
<c:set var="pwd">bigdata2020</c:set>
<fmt:requestEncoding value="UTF-8" />

<sql:setDataSource var="mariadb" 
	url="${url}" driver="${drv}" user="${usr}" password="${pwd}" />

<sql:query dataSource="${mariadb}" var="rs">
	select employee_id, last_name, job_id, manager_id, department_id
	from EMPLOYEES
	order by employee_id desc;
</sql:query>
 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>사원목록 조회</title>
	</head>
	<body>
		<h1>등록된 사원 조회</h1>
		<c:forEach var="row" items="${rs.rows}">
			<p>${row.employee_id} ${row.last_name} ${row.job_id}
			   ${row.manager_id} ${row.department_id}</p>
			<hr>
		</c:forEach>
	</body>
</html>