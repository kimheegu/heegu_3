<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String sessionId = (String) session.getAttribute("userId");
%>      
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

#a{
height:20px;
padding:30px;
}
.aa{
font-size:12px;
padding-bottom:200px;
}
#hd{
display:block;
}
</style>
<body>
<header class="pb-3 mb-4 border-bottom">

<a href="./welcome.jsp" class=" align-items-center text-dark text-decoration-none"  id="hd">
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
  <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293z"/>
  <path d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293z"/>
</svg>
<span class="fs-4">Home</span>
</a>
<ul class="nav nav-pills">
<c:if test="${sessionScope.userId == null }">
<li class="nav-item"><a class="nav-link" href="<c:url value="./loginMember.jsp"/>">로그인</a></li>
</c:if>
<c:if test="${sessionScope.userId != null }">
<li class="nav-item"><a class="nav-link" href="<c:url value="./loginOut.jsp"/>">로그아웃</a></li>
<li class="nav-item"><a class="nav-link" href="<c:url value="./updateMember.jsp"/>">회원 정보</a></li>
</c:if>
<li class="nav-item"><a class="nav-link" href="<c:url value="./addMember.jsp"/>">회원 가입</a></li>
<li class="nav-item"><a href="./Shoes.jsp" class="nav-link">신발 목록</a></li>
<li class="nav-item"><a href="./addShoes.jsp" class="nav-link">신발 등록</a></li>
<li class="nav-item"><a href="./editShoes.jsp?edit=update" class="nav-link">신발 수정</a></li>
<li class="nav-item"><a href="./editShoes.jsp?edit=delete" class="nav-link">신발 삭제</a></li>
<li class="nav-item"><a href="./cart.jsp" class="nav-link">장바구니</a></li>
</ul>
</header>
</body>
</html>