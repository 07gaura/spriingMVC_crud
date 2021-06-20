<html>
<head>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page isELIgnored="false"%>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</head>
<body>
<h2>Crude Demo</h2>
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${students}" var="s">
    <tr>
      <th scope="row">${s.id}</th>
      <td>${s.name}</td>
      <td>${s.email }</td>
      <td><a href="delete/${s.id}">Delete</a></td>
      <td><a href="update/${s.id}">update</a></td>
    </tr>  
    </c:forEach> 
  </tbody>
</table>
<a class="btn btn-primary" href="${pageContext.request.contextPath}/addstudent">Add Students</a>
</body>
</html>
