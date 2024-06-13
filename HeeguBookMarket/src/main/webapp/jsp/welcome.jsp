<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Date"%>
<!DOCTYPE html>
<html>
<style>
.j{
margin-top:300px;
padding:20px;
}</style>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<div class="container py-4">
	<%@ include file="menu.jsp" %>
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
	<div class="container-fluid py-5">
	<h1 class="display-5 fw-bold">신발 쇼핑몰에 오신 것을 환영합니다</h1>
	<p class="col-md-8 fs-4">ShoesMarket</p>
	<p class="col-md-8 fs-4">
	<% 
	String id = (String)session.getAttribute("userId");
	if(id==null){
	%>
	<p>비회원님 환영합니다.</p>
	<%
	}else{
	%>
	<p><%=id %>님 환영합니다.</p>
	<%
	}
	%>
	</p>
	</div>
	</div>
	<div class="row align-items-md-stretch text-center">
	<div class="col-md-12">
	<div class="j">
	<h3>Welcome to Web Market!</h3>
	<%
	Date day=new java.util.Date();
	String am_pm;
	int hour = day.getHours();
	int minute = day.getMinutes();
	int second = day.getSeconds();
	if(hour / 12 ==0){
		am_pm="AM";
	}else{
		am_pm="PM";
	}
	String Time = hour + ":" + minute + ":" + second + " "+am_pm;
	out.println("현재 접속 시각: "+Time+"\n");
	%>
	</div>
	</div>
	</div>
	<%@ include file="footer.jsp" %>
</div>
</body>
</html>