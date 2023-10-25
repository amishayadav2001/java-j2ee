<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="validation.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>

	<h1>Update Employee information</h1>

	<form action="EmployeeController" method="GET" onsubmit="return validateForm()">

		<div class="mb-3">
			<label for="name" class="form-label">Name:</label> <input type="text"
				id="name" name="name" class="form-control" style="width: 400px;" >
		</div>

		<div class="mb-3">
			<label for="email" class="form-label">Email:</label> <input
				type="email" id="email" name="email" class="form-control" style="width: 400px;" >
		</div>

		<div class="mb-3">
			<label for="dob">Date of Birth:</label> <input type="date" id="dob"
				name="dob" class="form-control" style="width: 150px;" 
				max="<%=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date())%>" />
		</div>

		<div class="mb-3">
			<label for="gender" class="form-label">Gender:</label>
			<div class="form-check">
				<input type="radio" id="male" name="gender" class="form-check-input"
					value="Male"> <label for="male"
					class="form-check-label">Male</label>
			</div>
			<div class="form-check">
				<input type="radio" id="female" name="gender"
					class="form-check-input" value="Female"> <label
					for="female" class="form-check-label">Female</label>
			</div>
			<div class="form-check">
				<input type="radio" id="other" name="gender"
					class="form-check-input" value="Other" > <label
					for="other" class="form-check-label">Other</label>
			</div>
		</div>


		<div class="mb-3">
			<label for="designation" class="form-label">DESIGNATION:</label> <select
				id="designation" name="designation" class="form-select" style="width: 300px;" >
				<option value="Manager">Manager</option>
				<option value="Developer">Developer</option>
				<option value="Designer">Designer</option>
				<option value="Analyst">Analyst</option>
			</select>
		</div>


		<input type="hidden" name="action" value="update-save">

		<%-- <input type="hidden" name="id"  id="id" value="${employee.id}"> --%>

		<input type="hidden" name="id" value="${employee.id}">

		<button type="submit" class="btn btn-primary">Submit</button>


		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
			crossorigin="anonymous"></script>
</body>
</html>