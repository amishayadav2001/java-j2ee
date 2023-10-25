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
		if (session.getAttribute("counter") == null) {
			session.setAttribute("counter", 0);
		}
		int count = (Integer) session.getAttribute("counter");
		out.println("Old Value : " + count + "<br><br>");

		session.setAttribute("counter", ++count);
		out.println("New Value : " + count + "<br><br>");
	%>

</body>
</html>