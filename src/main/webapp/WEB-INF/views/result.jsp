<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <title>${title}</title>
</head>
<body>

<h1>${title}</h1>
<p style="color: green; font-weight: bold">${message}</p>

<h3>Submitted Details:</h3>

<ul>
  <li><strong>User ID (Hidden):</strong> ${user.userId}</li>
  <li><strong>Name (Input Text):</strong> ${user.name}</li>
  <li><strong>Email (Input Email):</strong> ${user.email}</li>
  <li><strong>Password:</strong> (hidden for security) - length: ${user.password.length()}</li>
  <li><strong>Address (Textarea):</strong> ${user.address}</li>
  <li><strong>Gender (Radio):</strong> ${user.gender}</li>
  <li>
    <strong>Hobbies (Checkboxes):</strong>
    <ul>
      <c:forEach var="hobby" items="${user.hobbies}">
        <li>${hobby}</li>
      </c:forEach>
    </ul>
  </li>
  <li><strong>Country (Select):</strong> ${user.country}</li>
  <li>
    <strong>Skills (Multi-select Select):</strong>
    <ul>
      <c:forEach var="skill" items="${user.skills}">
        <li>${skill}</li>
      </c:forEach>
    </ul>
  </li>
  <li><strong>Subscribed (Checkbox):</strong> ${user.subscribeNewsletter ? 'Yes' : 'No'}</li>
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