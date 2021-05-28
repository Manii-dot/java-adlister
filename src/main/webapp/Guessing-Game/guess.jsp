<%--
  Created by IntelliJ IDEA.
  User: emmanuelstephen
  Date: 5/28/21
  Time: 12:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Guess the Number Game</h1>
<form action="/guess" method="post">
    <label for="quantity">Choose a number between 1-3:</label>
    <input type="number" id="quantity" name="quantity" min="1" max="3">
    <input type="submit">

    <h1>${result}</h1>
</form>
</body>
</html>
