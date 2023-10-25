<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:set var="str" value="Amisha is java developer" />
Length : ${fn:length(str)}<br/>

<c:forEach items="${fn:split(str,' ')}" var="s">
<br> ${s}
</c:forEach><br/>

index : ${fn:indexOf(str,"is")}<br/>

is there : ${fn:contains(str,"java")}<br/>

${fn:toLowerCase(str)}<br/>

${fn:toUpperCase(str)}<br/>

${fn:containsIgnoreCase(str,'is')}<br/>

  ${fn:startsWith(str,'Amisha')}<br/>

 ${fn:endsWith(str,'developer')}<br/>
 
  ${fn:replace(str,"e","x")}<br/>


<h1>Shopping Cart</h1>


<c:set var="itemCount" value="3" />
    <c:set var="price" value="25.0" />
    <c:set var="quantity" value="2" />

    <c:out value="Number of Items: ${itemCount}" /><br />
    <c:out value="Price per Item: $${price}" /><br />
    <c:out value="Quantity: ${quantity}" /><br />

    <c:set var="total" value="${price * quantity}" />
    <c:out value="Total: ${total}" /><br />

    <c:choose>
        <c:when test="${total > 50}">
            <p>This purchase qualifies for free shipping!</p>
        </c:when>
        <c:otherwise>
            <p>Shipping fee: $5</p>
        </c:otherwise>
    </c:choose>

    <h2>Items in Cart</h2>
    <ul>
        <c:forEach begin="1" end="${itemCount}" var="item">
            <li>Item ${item}</li>
        </c:forEach>
    </ul>

    <h2>Imported Content</h2>
    <c:import url="https://www.example.com">
        <c:param name="paramName" value="paramValue" />
    </c:import>

</body>
</html>



 
 
 
 
 

 