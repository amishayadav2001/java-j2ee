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
		Cookie[] cookies = request.getCookies();
		boolean isColorSet = false;

		if (cookies != null) {
			for (Cookie c : cookies) {
				if (c.getName().equals("color")) {
					String bgColor = c.getValue();
					out.println("<p>Cookie is set and color is " + bgColor + "</p>");
					isColorSet = true;
				}
			}

		}
		if (!isColorSet) {
			Cookie newCookie = new Cookie("color", "green");
			newCookie.setMaxAge(60 * 60 * 24);
			response.addCookie(newCookie);
		}

		Integer oldCounter = (Integer) session.getAttribute("counter");
		int newCounter = (oldCounter == null) ? 1 : oldCounter + 1;
		session.setAttribute("counter", newCounter);
	%>



	<p>Old Value:<%=oldCounter%></p>
	<p>New Value:<%=newCounter%></p>

</body>
</html>