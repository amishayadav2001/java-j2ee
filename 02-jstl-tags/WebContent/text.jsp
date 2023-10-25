<%@page import="java.util.ArrayList"%>
<%@page import="com.aurionpro.model.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student List</title>
</head>
<body>
	<%
		List<Student> students = new ArrayList<>();
			students.add(new Student(1, "Amisha", "amisha@gmail.com", 90));
			students.add(new Student(2, "Annu", "annu@gmail.com", 95));
			students.add(new Student(3, "Amyra", "amyra@gmail.com", 83));
			students.add(new Student(4, "Ammu", "ammu@gmail.com", 80));
			request.setAttribute("Students", students);
	%>
	
	<table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Percentage</th>
                <th>Remark</th>
            </tr>
        </thead>
        <c:forEach var="student" items="${Students}">
            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td>${student.email}</td>
                <td>${student.percentage}</td>
                <td>
                <c:if test="${student.percentage > 85}"> Distinction </c:if>
                  <c:if test="${student.percentage < 85}"> Pass </c:if>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>