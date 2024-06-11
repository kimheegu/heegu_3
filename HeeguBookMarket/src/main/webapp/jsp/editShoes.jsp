<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>신발 편집</title>
<script type="text/javascript">
function deleteConfirm(id){
	if(confirm("해당 신발을 삭제합니다! ") == true)
		location.href="./deleteShoes.jsp?id="+id;
	else
		return;
}
</script>
</head>
<body>
<%
String edit = request.getParameter("edit");
%>
<div class="container py-4">
	<%@ include file = "menu.jsp" %>
	
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
		<h1 class="display-5 fw-bold">신발 편집</h1>
		<p class="col-md-8 fs-4">ShoesEditing</p>
		</div>
	</div>
	<%@ include file = "dbconn.jsp" %>
	<div class="row align-items-md-stretch text-center">
	<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "SELECT * FROM shoes";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	while(rs.next()){
	%>
	<div class="col-md-4">
		<div class="h-100 p-2 round-3">
		<img src="../images/<%=rs.getString("s_filename")%>" class="img-thumbnail" style="width:70%; height:40%" />
		<p><h5><b><%=rs.getString("s_name") %></b></h5></p>
		<p><%=rs.getString("s_name")%></p>
		<p><%=rs.getString("s_name1") %></p>
		<p><%=rs.getLong("s_price") %>원</p>
		<p>
		<%
		if(edit.equals("update")){
		%>
		</p>
		<a href="./UpdateShoes.jsp?id=<%=rs.getString("s_id")%>" class="btn btn-success" role="button">
		수정 &raquo;</a>
		<%
		}else if(edit.equals("delete")){
		%>
		<a href="#" onclick="deleteConfirm('<%=rs.getString("s_id") %>')" class="btn btn-danger" role="button">삭제 &raquo;</a>
		<%
		}
		%>
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
<%@ include file = "footer.jsp" %>
</div>
</body>
</html>