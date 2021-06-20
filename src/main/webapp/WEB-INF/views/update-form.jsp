<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page isELIgnored="false"%>
<meta charset="ISO-8859-1">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>update Student Form</h1>
	<form action="${pageContext.request.contextPath}/handle-product" method="post">
	<input type="name" name="id" class="form-control" value="${student.id }" hidden id="exampleInputPassword1">	
	<div class="mb-3">
	    <label for="exampleInputPassword1" class="form-label">Name</label>
	    <input type="name" name="name" class="form-control" value="${student.name }" id="exampleInputPassword1">
	  </div>	
	<div class="mb-3">
	    <label for="exampleInputEmail1" class="form-label">Email address</label>
	    <input type="email" name="email" class="form-control" id="exampleInputEmail1" value="${student.email }" aria-describedby="emailHelp">
	  </div>  
	   
	  
	  <button type="submit" class="btn btn-primary">Submit</button><a class="btn btn-primary" href="${pageContext.request.contextPath}/home">Home</a>
	</form>
	
</body>
</html>