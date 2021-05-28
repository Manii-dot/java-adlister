<%--
  Created by IntelliJ IDEA.
  User: emmanuelstephen
  Date: 5/27/21
  Time: 3:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
    <%@ include file="partials/head.jsp" %>
</head>
<body>

<form action="/login.jsp" method="post">
<div>
    <label for="username">Username:</label>
    <input type="text" id="username" name="username">
</div>

<div>
    <label for="pass">Password (6 characters minimum):</label>
    <input type="password" id="pass" name="password"
           minlength="6" required>
</div>

<input type="submit" value="Log in">
</form>

<c:choose>
    <c:when test="${param.username.equals('admin') && param.password.equals('password')}">
        <p>Cool bean!</p>
        <c:redirect url="/profile.jsp"/>
    </c:when>
    <c:when test="${param.username == null && param.password == null}">
        <p>Welcome!</p>
    </c:when>
    <c:otherwise>
        <p>Sorry login failures!</p>
    </c:otherwise>
</c:choose>

</body>
</html>
