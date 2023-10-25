<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		if (application.getAttribute("counter") == null) {
			application.setAttribute("counter", 0);
		}
		int count = (Integer) application.getAttribute("counter");
		out.println("Old Value : " + count + "<br><br>");

		application.setAttribute("counter", ++count);
		out.println("New Value : " + count + "<br><br>");
	%>

</body>
</html>