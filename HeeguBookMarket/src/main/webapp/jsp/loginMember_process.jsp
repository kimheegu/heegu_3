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
<%@ include file="dbconn.jsp" %>
<%
request.getParameter("utf-8");		
PreparedStatement pstmt = null;
ResultSet rs = null;
String id = request.getParameter("Id");
String pwd = request.getParameter("Pwd");


try {
	String sql="SELECT * FROM member WHERE id=? AND password=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.setString(2, pwd);
	rs = pstmt.executeQuery();
	
	if(rs.next()) { 
		if(id.equals(rs.getString("id")) && pwd.equals(rs.getString("password"))){
			session.setAttribute("userId",id);
			response.sendRedirect("welcome.jsp");
		}		
	}else{
		%>
		<script>
		alert("아이디와 비밀번호를 다시 입력해주세요!");
		history.back();
		</script>	
	<%
	}

}catch(Exception e){
	e.printStackTrace();
}
if(rs != null){
	rs.close();
}
if(pstmt != null){
	pstmt.close();
}
if(conn != null){
	conn.close();
}
%>


</body>
</html>