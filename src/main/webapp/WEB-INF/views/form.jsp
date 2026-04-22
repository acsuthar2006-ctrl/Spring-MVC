<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
  <title>${title}</title>
  <style>
    .error { color: red; font-size: 0.9em; margin-left: 10px; }
    .form-group { margin-bottom: 15px; }
    label { display: inline-block; width: 140px; vertical-align: top; font-weight: bold;}
    .hint { font-size: 0.8em; color: gray; margin-left: 145px; display:block; }
  </style>
</head>
<body>

<h1>${title}</h1>

<form:form action="${pageContext.request.contextPath}/submitForm"
           modelAttribute="user" method="POST">
           
  <!-- Hidden Field -->
  <form:hidden path="userId" />

  <div class="form-group">
    <label>Name (Text):</label>
    <form:input path="name"/>
    <form:errors path="name" cssClass="error"/>
  </div>
  
  <div class="form-group">
    <label>Email (Type email):</label>
    <form:input path="email" type="email"/>
    <form:errors path="email" cssClass="error"/>
  </div>
  
  <div class="form-group">
    <label>Password:</label>
    <form:password path="password"/>
    <form:errors path="password" cssClass="error"/>
  </div>

  <div class="form-group">
    <label>Phone Number:</label>
    <form:input path="phoneNumber" placeholder="9876543210"/>
    <form:errors path="phoneNumber" cssClass="error"/>
  </div>

  <div class="form-group">
    <label>Age:</label>
    <form:input path="age" type="number" min="18" max="60"/>
    <form:errors path="age" cssClass="error"/>
  </div>

  <div class="form-group">
    <label>Date of Birth:</label>
    <form:input path="dateOfBirth" type="date"/>
    <form:errors path="dateOfBirth" cssClass="error"/>
  </div>

  <div class="form-group">
    <label>Address (Textarea):</label>
    <form:textarea path="address" rows="3" cols="30"/>
    <form:errors path="address" cssClass="error"/>
  </div>

  <div class="form-group">
    <label>PIN Code:</label>
    <form:input path="pinCode" placeholder="6-digit PIN"/>
    <form:errors path="pinCode" cssClass="error"/>
  </div>

  <div class="form-group">
    <label>Gender (Radios):</label>
    <form:radiobuttons path="gender" items="${genderList}"/>
    <form:errors path="gender" cssClass="error"/>
  </div>

  <div class="form-group">
    <label>Hobbies (Checkboxes):</label>
    <form:checkboxes path="hobbies" items="${hobbiesList}"/>
    <form:errors path="hobbies" cssClass="error"/>
  </div>

  <div class="form-group">
    <label>Country (Select):</label>
    <form:select path="country">
      <form:option value="" label="--Select Country--"/>
      <form:options items="${countryList}"/>
    </form:select>
    <form:errors path="country" cssClass="error"/>
  </div>
  
  <div class="form-group">
    <label>Skills (Multi-select):</label>
    <form:select path="skills" multiple="true" items="${skillsList}"/>
    <span class="hint">Hold CTRL or CMD to select multiple</span>
    <form:errors path="skills" cssClass="error"/>
  </div>

  <div class="form-group">
    <label>Experience (Years):</label>
    <form:input path="experienceYears" type="number" min="0" max="40"/>
    <form:errors path="experienceYears" cssClass="error"/>
  </div>

  <div class="form-group">
    <label>Short Bio:</label>
    <form:textarea path="bio" rows="4" cols="30"/>
    <form:errors path="bio" cssClass="error"/>
  </div>
  
  <div class="form-group">
    <label>Subscribe (Checkbox):</label>
    <form:checkbox path="subscribeNewsletter" value="true"/> Yes, send me newsletter updates!
  </div>

  <div class="form-group">
    <label>Terms:</label>
    <form:checkbox path="termsAccepted" value="true"/> I accept terms and conditions.
    <form:errors path="termsAccepted" cssClass="error"/>
  </div>

  <div style="margin-top: 20px; margin-left: 140px;">
    <input type="submit" value="Register Now" style="padding: 10px 20px;"/>
  </div>
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
