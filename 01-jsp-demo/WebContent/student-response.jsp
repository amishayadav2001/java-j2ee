<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>


<body>
	 <div class="container bg-light mt-4">
	 	<h3> Student Details</h3>
	 	<hr>
        <div class="row">
            <p class="h4">Name :  <%=request.getParameter("name") %></p>
        </div>
        <div class="row">
            <p class="h4">Email :  ${param.email}</p>
        </div>
        
        <div class="row">
            <p class="h4">Graduation :  ${param.graduation}</p>
        </div>
        
        <div class="row">
            <p class="h4">Gender :  ${param.gender}</p>
        </div>
        
        <div>
        	<%
        		String langs[] = request.getParameterValues("languages");
        		if(langs!=null){
        			String temp="";
        			for(String x:langs){
    					temp+=x+" ";
    				}
        			out.println("<p class=\"h4\"> Favorite Languages : "+temp+"</p>");
        		}
				
       		 %>
        </div>
        
 
    </div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>


</body>
</html>