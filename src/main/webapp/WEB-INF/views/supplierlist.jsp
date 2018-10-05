<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List</title>
<style>
body
{
background-image:url("${images}/");
background-size:cover;
}
</style>
</head>
<body>
<c:if test=" ${empty supplierlist }">
<h1>No Supplier</h1>
</c:if>
<table>
<th><td>Name</td>
<td>Address</td>
<td>Action</td>
</th>
<c:forEach items="${supplierlist}" var="s">
<tr>
<td>
${s.suppliername}
</td>
<td>
${s.address}
</td>
<td>
<a class="btn btn-info" role="button" href="<c:url value="deleteSupplier/${s.id}" />">Delete</a>
			<a class="btn btn-info" role="button" href="<c:url value="updateSupplier/${s.id}"/>">Update</a>
</td>
</tr>


</c:forEach>
</table>
</body>
</html>