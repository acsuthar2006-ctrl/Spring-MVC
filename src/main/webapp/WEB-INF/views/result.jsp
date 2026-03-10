<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <title>${title}</title>
</head>
<body>

<h1>${title}</h1>
<p>${message}</p>

<h3>Submitted Details:</h3>

<ul>
  <li><strong>Name:</strong> ${user.name}</li>
  <li><strong>Email:</strong> ${user.email}</li>
  <li><strong>Gender:</strong> ${user.gender}</li>

  <li>
    <strong>Hobbies:</strong>
    <ul>
      <c:forEach var="hobby" items="${user.hobbies}">
        <li>${hobby}</li>
      </c:forEach>
    </ul>
  </li>
</ul>

<hr>

<nav>
  <a href="${pageContext.request.contextPath}/">Home</a> |
  <a href="${pageContext.request.contextPath}/about">About</a> |
  <a href="${pageContext.request.contextPath}/contact">Contact</a> |
  <a href="${pageContext.request.contextPath}/form">Register</a>
</nav>

</body>
</html>