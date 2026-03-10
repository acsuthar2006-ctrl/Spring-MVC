<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
  <title>${title}</title>
</head>
<body>
<h1>${title}</h1>
<p>${message}</p>
<hr>
<nav>
  <a href="${pageContext.request.contextPath}/">Home</a> |
  <a href="${pageContext.request.contextPath}/about">About</a> |
  <a href="${pageContext.request.contextPath}/contact">Contact</a>
</nav>
</body>
</html>
