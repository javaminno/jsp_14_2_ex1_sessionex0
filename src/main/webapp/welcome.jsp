<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>welcome.jsp</title>
</head>
<body>
	<%
/* 		Cookie[] cookies = request.getCookies();
	
		for(int i=0; i<cookies.length;i++){
			String id = cookies[i].getValue();
			if(id.equals("abcde")) out.println(id+"�� �α��ο� �����ϼ̽��ϴ�. �ݰ����ϴ�.");	
		} */
		
		Enumeration enumeration = session.getAttributeNames();
		while(enumeration.hasMoreElements()){
			String sName =  enumeration.nextElement().toString();
			String sValue =  session.getAttribute(sName).toString();
			
			if(sValue.equals("abcde"))out.println(sValue+"�� �α��ο� �����ϼ̽��ϴ�. �ݰ����ϴ�.");
		}
	%>

	<a href="logout.jsp">�α׾ƿ�</a>
	
</body>
</html>