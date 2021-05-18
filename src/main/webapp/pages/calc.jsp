<%--
  Created by IntelliJ IDEA.
  User: 97mus
  Date: 17.05.2021
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Calc</title>
</head>
<body>
<jsp:include page="_header.jsp"/>
<form action="/calc" method="get">
    1 - Сложить (X + Y)
    <br>2 - Вычесть (X - Y)
    <br>3 - Разделить (X / Y)
    <br>4 - Умножить (X * Y)
    <br>0 or other - in Menu
    <br>
    <br>
    <p>
        <label for="x" >Number 1</label>
        <input type="text"  id="x"  name = "x">

        <label for="num2" >Number 2</label>
        <input type="text"  id="num2"  name = "y">

        <label for="c" >Command</label>
        <input type="text"  id="c"  name = "command">
        <button type="submit">Submit</button>
    </p>
</form>
<c:if test="${action != null}">
<p>
Result: ${result}
</p>
</c:if>
</body>
</html>
