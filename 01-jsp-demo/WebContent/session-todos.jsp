<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container mt-3">
		<h3 align="center">Todos App JSP</h3>
		<hr />
		<br /> <br />
		<form action="session-todos.jsp" method="POST">
			<input id="todo" type="text" class="form-control" name="todosItem">

			<button class="btn btn-primary mt-3" type="submit">Submit</button>
		</form>

		<br>
		<br>
		<hr>

	</div>


	<%
		String item = request.getParameter("todosItem");
	
		List<String> itemList = (List<String>) session.getAttribute("todosList");
	
		if (itemList == null) {
			itemList = new ArrayList<>();
		}
	
		if (item != null && item.trim().length() > 0 && !itemList.contains(item)) {
			itemList.add(item);
			session.setAttribute("todosList", itemList);
		}
	%>

	<div class="container">
		<div class="row">
			<ul class="list-group">
				<%
					if (itemList != null) {
					for (String x : itemList) {
						out.println("<li class=\"list-group-item\">" + x + "</li>");
					}
				}
				%>
			</ul>
		</div>
	</div>



</body>
</html>



