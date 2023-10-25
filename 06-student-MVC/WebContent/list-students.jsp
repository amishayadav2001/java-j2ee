<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Information</title>

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

<h1>Student Information</h1>


	<form action="StudentController" method="GET">
		<div class="mb-3">
			<input type="text" class="form-control"
				placeholder="Enter value" name="searchValue"> 
				<input type="hidden" name="action" value="search">
			<div>
				<select class="form-select m-3" name="searchOption">
					<option value="firstName">First Name</option>
					<option value="lastName">Last Name</option>
					<option value="email">Email</option>
					<option value="id">Id</option>
				</select>
			</div>
			<button type="submit" class="btn btn-outline-secondary">Search</button>
		</div>
	</form>

	
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="student" items="${allStudents}">
				<c:url var="updateLink" value="StudentController">
					<c:param name="action" value="update" />
					<c:param name="id" value="${student.id}" />
				</c:url>

				<c:url var="deleteLink" value="StudentController">
					<c:param name="action" value="delete" />
					<c:param name="id" value="${student.id}" />
				</c:url>
				<tr>
					<td>${student.id}</td>
					<td>${student.firstName}</td>
					<td>${student.lastName}</td>
					<td>${student.email}</td>
					<td><a href="${updateLink}" class="btn btn-warning">Update</a></td>
					<td><a href="${deleteLink}" class="btn btn-danger">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="add-student.jsp" class="btn btn-primary">Add Student</a>
</body>
</html>










