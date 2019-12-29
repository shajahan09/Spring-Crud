<%-- 
    Document   : index
    Created on : 26-Dec-2019, 22:59:10
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Products List</h1>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Quantity</th>
                <th>Price</th>
                <th colspan="2">Action</th>
            </tr>
            <c:forEach items="${products}" var="product">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.qty}</td>
                <td>${product.price}</td>
                <td><a href="/CrudSpring/edit">Edit</a> || 
                <a href="delete/${product.id}">Delete</a></td>
            </tr>
            </c:forEach>
            <a href="new">Add new product</a>
        </table>
    </body>
</html>
