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
String pwd = request.getParameter("Pwd");
String name = request.getParameter("Name");
String gender = request.getParameter("Gender");
String birth = request.getParameter("Birth");
String mail = request.getParameter("Mail");
String phone = request.getParameter("Phone");
String address = request.getParameter("Address");
%>
<sql:setDataSource var="dataSource"
url="jdbc:mysql://localhost:3306/ShoesMarketDB"
driver="com.mysql.jdbc.Driver" user="root" password="1234" />
<sql:update var="resultSet" dataSource="${dataSource }">
UPDATE member SET password=?, name=?, gender=?, birth=?, mail=?, phone=?, address=? WHERE id=?
<sql:param value="<%=pwd %>"/>
<sql:param value="<%=name %>"/>
<sql:param value="<%=gender %>"/>
<sql:param value="<%=birth %>"/>
<sql:param value="<%=mail %>"/>
<sql:param value="<%=phone %>"/>
<sql:param value="<%=address %>"/>
<sql:param value="<%=id %>"/>
</sql:update>
<%response.sendRedirect("updateMember.jsp"); %>
</body>
</html>