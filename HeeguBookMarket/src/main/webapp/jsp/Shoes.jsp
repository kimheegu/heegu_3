<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="java.util.ArrayList"
	import="dto.Shoes"
	import="dao.ShoesRepository"
    import="java.sql.*"%>
  
<!DOCTYPE html>
<html>
<style>
#img{
width:100%;
height:500px;
}
</style>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
rel="stylesheet">
<meta charset="UTF-8">
<title>신발 목록</title>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<div class="container py-4">
<%@ include file="menu.jsp" %>

    <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img id="img" src="../images/111.PNG" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img id="img" src="../images/222.PNG" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img id="img" src="../images/333.PNG" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<%@ include file="dbconn.jsp" %>
<div class="row align-items-md-stretch   text-center">
<%
PreparedStatement pstmt = null;
ResultSet rs = null;
String sql = "SELECT * FROM shoes";
pstmt = conn.prepareStatement(sql);
rs = pstmt.executeQuery();
while(rs.next()){
%>
<div class="col-md-3">
<div class="h-100 p-2">
<img src="../images/<%=rs.getString("s_filename") %>" class="img-thumbnail" style="width:70%; height:40%"/>
<h5><b><%=rs.getString("s_brand") %></b></h5>
<p><%=rs.getString("s_name")%></p>
<p><%=rs.getString("s_name1") %></p>
<p><%=rs.getLong("s_price") %>원</p>
<p><a href="./shoeses.jsp?id=<%=rs.getString("s_id") %>"
class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a>
</p>
</div>
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
</div>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>