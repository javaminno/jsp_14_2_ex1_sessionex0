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
		Object obj1 = session.getAttribute("id");  //id�� value���� ��ü���·� ��ȯ
		String id = obj1.toString();
		out.println(id);
		
		Object obj2 = session.getAttribute("pw"); //pw�� value���� ��ü���·� ��ȯ
		Integer pw = (Integer)obj2;
		out.println(pw+"<br/>");
		
		String sName, sValue;
		
		Enumeration enumeration1 = session.getAttributeNames(); //���ǳ��� ��� ������ ��ü���·� ��ȯ
		while(enumeration1.hasMoreElements()){
			sName = enumeration1.nextElement().toString(); // ���ǰ�ü�� name�� sName�� ����
			sValue = session.getAttribute(sName).toString(); // sName�� vakue���� sValue�� ����
			out.println("sName : "+ sName+"<br/>");
			out.println("sValue : " + sValue + "<br/>"); 
		}
		
		String sessid = session.getId();
		out.println("session ID : "+ sessid +"<br/>");
		
		int sessinterval = session.getMaxInactiveInterval(); //�ʴ���
		out.println("session Interval : "+sessinterval+"<br/>");
		
		out.println("<br/>");
		out.println("****************���ݺ��� ������ �����ϰڽ��ϴ�.********************<br/>");
		
		session.removeAttribute("id");
		
		Enumeration enumeration2 = session.getAttributeNames(); //���ǳ��� ��� ������ ��ü���·� ��ȯ
		while(enumeration2.hasMoreElements()){
			sName = enumeration2.nextElement().toString(); // ���ǰ�ü�� name�� sName�� ����
			sValue = session.getAttribute(sName).toString(); // sName�� vakue���� sValue�� ����
			out.println("sName : "+ sName+"<br/>");
			out.println("sValue : " + sValue + "<br/>"); 
		}
		
		
		session.invalidate(); //���� ��� ����
		
		if(request.isRequestedSessionIdValid()){
			out.println("������ ���� ����ֽ��ϴ�.<br/>");
		}
		else{
			out.println("������ �����Ǿ����ϴ�.<br/>");
		}
		
	%>
</body>
</html>