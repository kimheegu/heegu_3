<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function deleteMember(){
	if(confirm("회원을 탈퇴하시겠습니까?"))
		location.href="./deleteMember.jsp";
	else
		return;
}
</script>
<%	String id = (String)session.getAttribute("userId");
	request.setCharacterEncoding("utf-8");
%>
<sql:setDataSource var="dataSource"
url="jdbc:mysql://localhost:3306/ShoesMarketDB"
driver="com.mysql.jdbc.Driver" user="root" password="1234" />
<sql:query var="resultSet" dataSource="${dataSource }">
SELECT * FROM member WHERE id=?
<sql:param value="<%=id %>"/>
</sql:query>
<div class="container py-4">
<%@ include file = "menu.jsp" %>
<div class="p-5 mb-4 bg-body-tertiary rounded-3">
<div class="container-fluid py-5">
<h1 class="display-5 fw-bold">회원 정보</h1>
<p class="col-md-8 fs-4">Member Info</p>
</div>
</div>
<form action="updateMember2.jsp" method="post">
<div class="mb-3 row">
<label class="col-sm-2">아이디</label>
<div class="col-sm-3">
<c:forEach var="aa" items="${resultSet.rows}">
<c:out value="${aa.id}"/>
</c:forEach>
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">비밀번호</label>
<div class="col-sm-3">
<c:forEach var="aa" items="${resultSet.rows}">
<c:out value="${aa.password}"/>
</c:forEach>
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">이름</label>
<div class="col-sm-3">
<c:forEach var="aa" items="${resultSet.rows}">
<c:out value="${aa.name}"/>
</c:forEach>
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">성별</label>
<div class="col-sm-3">
<c:forEach var="aa" items="${resultSet.rows}">
<c:out value="${aa.gender}"/>
</c:forEach>
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">생일</label>
<div class="col-sm-3">
<c:forEach var="aa" items="${resultSet.rows}">
<c:out value="${aa.birth}"/>
</c:forEach>
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">메일</label>
<div class="col-sm-3">
<c:forEach var="aa" items="${resultSet.rows}">
<c:out value="${aa.mail}"/>
</c:forEach>
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">전화번호</label>
<div class="col-sm-3">
<c:forEach var="aa" items="${resultSet.rows}">
<c:out value="${aa.phone}"/>
</c:forEach>
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">주소</label>
<div class="col-sm-7">
<c:forEach var="aa" items="${resultSet.rows}">
<c:out value="${aa.address}"/>
</c:forEach>
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">생성일</label>
<div class="col-sm-7">
<c:forEach var="aa" items="${resultSet.rows}">
<c:out value="${aa.regist_day}"/>
</c:forEach>
</div>
</div>
<input type="submit" class="btn btn-primary" value="회원 정보 수정">
<a href="#" onclick="deleteMember()" class="btn btn-danger">회원 탈퇴</a>
<%@ include file="footer.jsp" %>
</div>
</form>


</body>
</html>