<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>sessioninit.jsp</title>
</head>
<body>
	<%
		session.setAttribute("id", "tiger");
		session.setAttribute("pw", 12345);
		
	%>
	
	<a href="sessionget.jsp">sessionget.jsp 이동</a>
	
</body>
</html>