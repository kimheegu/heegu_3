<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
request.setCharacterEncoding("utf-8");
%>    
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
rel="stylesheet">
<script type="text/javascript" src="../js/validationMem.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container py-4">
<%@ include file="menu.jsp" %>
<div class="p-5 mb-4 bg-body-tertiary rounded-3">
<div class="container-fluid py-5">
<h1 class="display-5 fw-bold">회원 가입</h1>
<p class="col-md-8 fs-4">Membership joining</p>
</div>
</div>
<form name="addMember" action="addMember_process.jsp" method="post">
<div class="mb-3 row">
<label class="col-sm-2">아이디</label>
<div class="col-sm-3">
<input type="text" id="Id" name="Id" class="form-control">
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">비밀번호</label>
<div class="col-sm-3">
<input type="password" id="Pwd" name="Pwd" class="form-control">
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">이름</label>
<div class="col-sm-3">
<input type="text" id="Name" name="Name" class="form-control">
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">성별</label>
<div class="col-sm-3">
<label>
<input type="radio" name="Gender" id="Gender" value="남자">남자
</label>
<label>
<input type="radio" name="Gender" id="Gender" value="여자">여자
</label>
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">생일</label>
<div class="col-sm-3">
<input type="text" id="Birth" name="Birth" class="form-control">
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">메일</label>
<div class="col-sm-3">
<input type="text" id="Mail" name="Mail" class="form-control">
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">전화번호</label>
<div class="col-sm-3">
<input type="text" name="Phone" id="Phone" class="form-control">
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">주소</label>
<div class="col-sm-3">
<input type="text" name="Address" id="Address" class="form-control">
</div>
</div>
<input type="button" class="btn btn-primary" onclick="CheckAddMember()" value="가입하기">
</form>
<jsp:include page="footer.jsp"/>
</div>
</body>
</html>