<%--
  Created by IntelliJ IDEA.
  User: emmanuelstephen
  Date: 6/3/21
  Time: 2:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<jsp:include page="/WEB-INF/partials/head.jsp">
</head>
<body>
<div class="container">
    <h1>Create a new User</h1>
    <form action="/users/register" method="post">
        <div class="form-group">
            <label for="Username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <textarea id="email" name="email" class="form-control" type="text"></textarea>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <textarea id="password" name="password" class="form-control" type="text"></textarea>
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>
