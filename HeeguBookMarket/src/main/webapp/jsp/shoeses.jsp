<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="dto.Shoes"
    import="dao.ShoesRepository"%>
    <%@ page errorPage = "exceptionNoShoesId.jsp" %>    
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
rel="stylesheet">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function addToCart(){
	if(confirm("신발을 장바구니에 추가하시겠습니까?")){
		document.addForm.submit();
	}else{
		document.addForm.reset();
	}
}
</script>
<style>
#bs{
margin-left:20px;
}
p{
font-color:$gray-200;
}
</style>
</head>
<body>
<%@ include file = "dbconn.jsp" %>
<div class="container py-4">
<%@ include file="menu.jsp" %>
<%
String s_id = request.getParameter("id");
System.out.println(s_id);
PreparedStatement pstmt = null;
ResultSet rs = null;
String sql = "SELECT * FROM shoes WHERE s_id=?";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1,s_id);
rs = pstmt.executeQuery();
while(rs.next()){
%>
<div class="row align-items-md-stretch">
<div class="col-md-6">
<img src="../images/<%=rs.getString("s_filename") %>" class="img-thumbnail" style="width:80%"/>
</div>
<div class="col-md-6 h-100 p-2">
<h3><b><%=rs.getString("s_name1") %></b></h3>
<p><span class="text-secondary"><%=rs.getString("s_name") %></span></p>
<p><span class="text-secondary">제품 번호</span> : <%=rs.getString("s_id") %></p>
<p><span class="text-secondary">재고</span> : <%=rs.getLong("s_units") %></p>
<p><span class="text-secondary">상태</span> : <%=rs.getString("s_condition") %></p>
<p><span class="text-secondary">출시일</span> : <%=rs.getString("s_date1") %></p>
<p><span class="text-secondary">대표 색상</span> : <%=rs.getString("s_color") %></p>
<form name="addForm" action="./addCart.jsp?id=<%=rs.getString("s_id") %>" method="post">
<a href="#" class="btn btn-danger">신발 주문</a>
<a href="#" class="btn btn-secondary" id="bs" onclick="addToCart()"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-basket3-fill" viewBox="0 0 16 16">
  <path d="M5.757 1.071a.5.5 0 0 1 .172.686L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15.5a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H.5a.5.5 0 0 1-.5-.5v-1A.5.5 0 0 1 .5 6h1.717L5.07 1.243a.5.5 0 0 1 .686-.172zM2.468 15.426.943 9h14.114l-1.525 6.426a.75.75 0 0 1-.729.574H3.197a.75.75 0 0 1-.73-.574z"/>
</svg> 장바구니</a>
</form>
</div>
</div>
<br><br>
<div class="row align-items-md-stretch">
<div class="col-md-3 text-center">
<img src="../images/<%=rs.getString("s_filename") %>" class="img-thumbnail" style="width:70%"/>
<p><span><b>250</b></span></p>
<p><span class="text-secondary"><%=rs.getString("s_name")%></p>
<p><span><%=(rs.getLong("s_price")+15000) %>원</span></p>
</div>
<div class="col-md-3 text-center">
<img src="../images/<%=rs.getString("s_filename") %>" class="img-thumbnail" style="width:70%"/>
<p><span><b>260</b></span></p>
<p><span class="text-secondary"><%=rs.getString("s_name") %></span></p>
<p><span><%=(rs.getLong("s_price")+10000) %>원</span></p>
</div>
<div class="col-md-3 text-center">
<img src="../images/<%=rs.getString("s_filename") %>" class="img-thumbnail" style="width:70%"/>
<p><span><b>270</b></span></p>
<p><span class="text-secondary"><%=rs.getString("s_name") %></span></p>
<p><span><%=(rs.getLong("s_price")+11000) %>원</span></p>
</div>
<div class="col-md-3 text-center">
<img src="../images/<%=rs.getString("s_filename") %>" class="img-thumbnail" style="width:70%"/>
<p><span><b>280</b></span></p>
<p><span class="text-secondary"><%=rs.getString("s_name") %></span></p>
<p><span><%=(rs.getLong("s_price")-10000) %>원</span></p>
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