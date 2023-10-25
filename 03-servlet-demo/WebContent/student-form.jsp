<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Form</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h2>Student Form</h2>

		<form action="StudentServlet" method="GET">
			<div class="mb-3">
				<label for="name" class="form-label">Name:</label> <input
					type="text" id="name" name="name" class="form-control" >
			</div>

			<div class="mb-3">
				<label for="email" class="form-label">Email:</label> <input
					type="email" id="email" name="email" class="form-control" >
			</div>



			<div class="mb-3">
				<label for="graduation" class="form-label">Graduation
					Degree:</label> <select id="graduation" name="graduation"
					class="form-select" >
					<option value="BE">BE</option>
					<option value="BSc">BSc</option>
					<option value="BCom">BCom</option>
				</select>
			</div>

			<div class="mb-3">
				<label class="form-label">Gender:</label>
				<div class="form-check">
					<input type="radio" id="male" name="gender"
						class="form-check-input" value="Male" > <label
						for="male" class="form-check-label">Male</label>
				</div>
				<div class="form-check">
					<input type="radio" id="female" name="gender"
						class="form-check-input" value="Female" > <label
						for="female" class="form-check-label">Female</label>
				</div>
				<div class="form-check">
					<input type="radio" id="other" name="gender"
						class="form-check-input" value="Other" > <label
						for="other" class="form-check-label">Other</label>
				</div>
			</div>


			<div class="mb-3">
				<label class="form-label">Favorite Languages:</label>
				<div class="form-check">
					<input type="checkbox" id="java" name="languages"
						class="form-check-input" value="Java"> <label for="java"
						class="form-check-label">Java</label>
				</div>
				<div class="form-check">
					<input type="checkbox" id="react" name="languages"
						class="form-check-input" value="React"> <label for="react"
						class="form-check-label">React</label>
				</div>
				<div class="form-check">
					<input type="checkbox" id="angular" name="languages"
						class="form-check-input" value="Angular"> <label
						for="angular" class="form-check-label">Angular</label>
				</div>
				<div class="form-check">
					<input type="checkbox" id="python" name="languages"
						class="form-check-input" value="Python"> <label
						for="python" class="form-check-label">Python</label>
				</div>
			</div>

			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>
