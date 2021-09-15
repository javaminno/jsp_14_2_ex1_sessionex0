<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>sessionget.jsp</title>
</head>
<body>
	<%
		Object obj1 = session.getAttribute("id");  //id의 value값을 객체형태로 변환
		String id = obj1.toString();
		out.println(id);
		
		Object obj2 = session.getAttribute("pw"); //pw의 value값을 객체형태로 변환
		Integer pw = (Integer)obj2;
		out.println(pw+"<br/>");
		
		String sName, sValue;
		
		Enumeration enumeration1 = session.getAttributeNames(); //세션내의 모든 값들을 객체형태로 변환
		while(enumeration1.hasMoreElements()){
			sName = enumeration1.nextElement().toString(); // 세션객체의 name을 sName에 저장
			sValue = session.getAttribute(sName).toString(); // sName의 vakue값을 sValue에 저장
			out.println("sName : "+ sName+"<br/>");
			out.println("sValue : " + sValue + "<br/>"); 
		}
		
		String sessid = session.getId();
		out.println("session ID : "+ sessid +"<br/>");
		
		int sessinterval = session.getMaxInactiveInterval(); //초단위
		out.println("session Interval : "+sessinterval+"<br/>");
		
		out.println("<br/>");
		out.println("****************지금부터 세션을 삭제하겠습니다.********************<br/>");
		
		session.removeAttribute("id");
		
		Enumeration enumeration2 = session.getAttributeNames(); //세션내의 모든 값들을 객체형태로 변환
		while(enumeration2.hasMoreElements()){
			sName = enumeration2.nextElement().toString(); // 세션객체의 name을 sName에 저장
			sValue = session.getAttribute(sName).toString(); // sName의 vakue값을 sValue에 저장
			out.println("sName : "+ sName+"<br/>");
			out.println("sValue : " + sValue + "<br/>"); 
		}
		
		
		session.invalidate(); //세션 모두 삭제
		
		if(request.isRequestedSessionIdValid()){
			out.println("세션이 아직 살아있습니다.<br/>");
		}
		else{
			out.println("세션이 삭제되었습니다.<br/>");
		}
		
	%>
</body>
</html>