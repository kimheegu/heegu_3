<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>신발 수정</title>
</head>
<body>
<div class="container py-4">
	<%@ include file = "menu.jsp" %>
	
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
		<h1 class="display-5 fw-bold">신발 수정</h1>
		<p class="col-md-8 fs-4">Shoes Updating</p>
		</div>
	</div>
	<%@ include file = "dbconn.jsp" %>
	<div class="row align-items-md-stretch">
	<%
	String shoesId = request.getParameter("id");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "SELECT * FROM shoes WHERE s_id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,shoesId);
	rs = pstmt.executeQuery();
	if(rs.next()){
	%>
	 	<div class="col-md-5">
	 	<img src="../images/<%=rs.getString("s_filename")%>" class="img-thumbnail" style="width:100%; height:80%;" alt="image" />
	 	</div>
	 	<div class="col-md-7">
	 	<form name="newShoes" action="${contextPath}/update.do" method="post" enctype="multipart/form-data">
	 	<div class="mb-3 row">
	 	<label class="col-sm-2">모델번호</label>
	 	<div class="col-sm-5">
	 	<input type="text" name="shoesId" id="shoesId" class="form-control" value='<%=rs.getString("s_id")%>'>
	 	</div>
	 	</div>
	 	<div class="mb-3 row">
	 		<label class="col-sm-2">신발 영문 이름</label>
	 		<div class="col-sm-5">
	 		<input type="text" name="name" id="name" class="form-control" value='<%=rs.getString("s_name")%>'>
	 		</div>
	 	</div>
	 		 	<div class="mb-3 row">
	 		<label class="col-sm-2">가격</label>
	 		<div class="col-sm-5">
	 		<input type="text" name="price" id="price" class="form-control" value='<%=rs.getString("s_price")%>'>
	 		</div>
	 	</div>
	 		 	<div class="mb-3 row">
	 		<label class="col-sm-2">브랜드</label>
	 		<div class="col-sm-5">
	 		<input type="text" name="brand" id="brand" class="form-control" value='<%=rs.getString("s_brand")%>'>
	 		</div>
	 	</div>
	 		 	<div class="mb-3 row">
	 		<label class="col-sm-2">신발 한글 이름</label>
	 		<div class="col-sm-5">
	 		<input type="text" name="name1" id="name1" class="form-control" value='<%=rs.getString("s_name1")%>'>
	 		</div>
	 	</div>
	 		 	<div class="mb-3 row">
	 		<label class="col-sm-2">재고</label>
	 		<div class="col-sm-5">
	 		<input type="text" name="units" id="units" class="form-control" value='<%=rs.getString("s_units")%>'>
	 		</div>
	 	</div>
	 		 	<div class="mb-3 row">
	 		<label class="col-sm-2">신발 상태</label>
	 		<div class="col-sm-5">
	 		<input type="text" name="condition" id="condition" class="form-control" value='<%=rs.getString("s_condition")%>'>
	 		</div>
	 	</div>
	 		 	<div class="mb-3 row">
	 		<label class="col-sm-2">출시일</label>
	 		<div class="col-sm-5">
	 		<input type="text" name="date1" id="date1" class="form-control" value='<%=rs.getString("s_date1")%>'>
	 		</div>
	 	</div>
	 		 	<div class="mb-3 row">
	 		<label class="col-sm-2">대표 색상</label>
	 		<div class="col-sm-5">
	 		<input type="text" name="color" id="color" class="form-control" value='<%=rs.getString("s_color")%>'>
	 		</div>
	 	</div>
	 		 	<div class="mb-3 row">
	 		<label class="col-sm-2">이미지</label>
	 		<div class="col-sm-8">
	 		<input type="file" name="shoesImage" class="form-control">
	 		</div>
	 	</div>
	 		 	<div class="mb-3 row">
	 		<input type="submit" class="btn btn-primary" value="등록">
	 	</div>
	 	<%
	}
	if(rs != null)
		rs.close();
	if(pstmt != null)
		pstmt.close();
	if(conn != null)
		conn.close();
	 	%>
	 	</form>
	 		 	<jsp:include page="footer.jsp"/>
	 	</div>
	</div>
</body>
</html>