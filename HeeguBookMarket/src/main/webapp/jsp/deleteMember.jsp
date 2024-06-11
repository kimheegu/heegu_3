<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String id = (String)session.getAttribute("userId");
%>
<sql:setDataSource var="dataSource"
url="jdbc:mysql://localhost:3306/ShoesMarketDB"
driver="com.mysql.jdbc.Driver" user="root" password="1234" />
<sql:update var="resultSet" dataSource="${dataSource }">
DELETE FROM member WHERE id=?
<sql:param value="<%=id %>"/>
</sql:update>
<%
session.invalidate();
response.sendRedirect("welcome.jsp");
%>
</body>
</html>