<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
  <title>${title}</title>
</head>
<body>

<h1>${title}</h1>

<form:form action="${pageContext.request.contextPath}/submitForm"
           modelAttribute="user" method="POST">
  <div>
    <label>Name:</label>
    <form:input path="name"/>
  </div>
  <br/>
  <div>
    <label>Email:</label>
    <form:input path="email" type="email"/>
  </div>
  <br/>
  <div>
    <label>Gender:</label>
    Male <form:radiobutton path="gender" value="Male"/>
    Female <form:radiobutton path="gender" value="Female"/>
  </div>
  <br/>
  <div>
    <label>Hobbies:</label>
    Reading <form:checkbox path="hobbies" value="Reading"/>
    Gaming <form:checkbox path="hobbies" value="Gaming"/>
    Traveling <form:checkbox path="hobbies" value="Traveling"/>
  </div>
  <br/>
  <input type="submit" value="Register"/>
</form:form>
<hr>
<nav>
  <a href="${pageContext.request.contextPath}/">Home</a> |
  <a href="${pageContext.request.contextPath}/about">About</a> |
  <a href="${pageContext.request.contextPath}/contact">Contact</a> |
  <a href="${pageContext.request.contextPath}/form">Register</a>
</nav>

</body>
</html>