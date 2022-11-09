<%--
  Created by IntelliJ IDEA.
  User: changlinhu
  Date: 11/7/22
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<input type="button" value="Create"><br>
<hr>
<table border="1" cellspacing="0" width="800">
    <tr>
        <th>Index</th>
        <th>Brand Name</th>
        <th>Brand Company</th>
        <th>Order</th>
        <th>Description</th>
        <th>Status</th>
        <th>Operation</th>
    </tr>

    <c:forEach items="${brands}" var="brand" varStatus="status">
        <tr align="center">
            <td>${status.count}</td>
            <td>${brand.brandName}</td>
            <td>${brand.companyName}</td>
            <td>${brand.ordered}</td>
            <td>${brand.description}</td>
            <c:if test="${brand.status == 1}">
                <td>Enable</td>
            </c:if>
            <c:if test="${brand.status != 1}">
                <td>Disenable</td>
            </c:if>

            <td><a href="#">Modify</a> <a href="#">Delete</a></td>
        </tr>
    </c:forEach>

</table>

<hr>

</body>
</html>