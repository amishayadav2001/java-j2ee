<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date, com.aurionpro.model.StringUtil"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Declaration</h3>
<h1>Todays date<%=new Date()%></h1>
<h2>Hello World in Lower case <%= new String("Hello World in Lower case").toLowerCase()%></h2>

<br>
<h3>Scriptlet tags</h3>
<% 
for (int i=1; i<=10; i++){
out.println("i : " + i + "<br>");
}
%>

<h3>Declaration tags</h3>
<%-- <%! 
String stringToUpper(String str){
	return str.toUpperCase();
}
%> --%>
<h2>Hello World in Upper case <%= StringUtil.stringToUpper("Hello World in Upper case") %></h2>
</body>
</html>