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
<script type="text/javascript" src="../js/validation.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container py-4">
<%@ include file="menu.jsp" %>
<div class="p-5 mb-4 bg-body-tertiary rounded-3">
<div class="container-fluid py-5">
<h1 class="display-5 fw-bold">신발 등록</h1>
<p class="col-md-8 fs-4">Shoes Addition</p>
</div>
</div>
<div class="text-end">
<a href="logout.jsp" class="btn btn-sm btn-succes pull right">logout</a>
</div>
<form name="newShoes" action="${contextPath}/upload.do" method="post" enctype="multipart/form-data">
<div class="mb-3 row">
<label class="col-sm-2">모델 번호</label>
<div class="col-sm-3">
<input type="text" id="ShoesId" name="ShoesId" class="form-control">
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">신발 브랜드</label>
<div class="col-sm-3">
<input type="text" id="ShoesBrand" name="ShoesBrand" class="form-control">
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">신발 이름</label>
<div class="col-sm-3">
<input type="text" id="ShoesName" name="ShoesName" class="form-control">
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">신발 한글 이름</label>
<div class="col-sm-3">
<input type="text" name="ShoesName1" class="form-control">
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">가격</label>
<div class="col-sm-3">
<input type="text" id="ShoesPrice" name="ShoesPrice" class="form-control">
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">재고 개수</label>
<div class="col-sm-3">
<input type="text" id="ShoesUnits" name="ShoesUnits" class="form-control">
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">상품 상태</label>
<div class="col-sm-3">
<input type="text" name="ShoesCondition" class="form-control">
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">출시일</label>
<div class="col-sm-3">
<input type="text" name="ShoesDate1" class="form-control">
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-2">대표 색상</label>
<div class="col-sm-3">
<input type="text" name="ShoesColor" class="form-control">
</div>
</div>
<div class="row align-items-md-stretch">
<div class="col-sm-3">
<p><input type="file" name="ShoesImage" class="form-control"></p>
</div>
</div>
<div class="mb-3 row">
<label class="col-sm-offset-2 col-sm-10"></label>
<input type="button" class="btn btn-primary" value="등록" onclick="CheckAddShoes()">
</div>
</form>
<div>
<jsp:include page="footer.jsp"/>
</div>
</div>
</body>
</html>