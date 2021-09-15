<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>logout.jsp</title>
</head>
<body>
	<%
	Enumeration enumeration = session.getAttributeNames();
	while(enumeration.hasMoreElements()){
		String sName =  enumeration.nextElement().toString();
		String sValue =  session.getAttribute(sName).toString();
		
		if(sValue.equals("abcde")) {
			out.println(sValue + "님 로그아웃되었습니다.");
			session.removeAttribute(sName);
		}
	}
	%>
</body>
</html>