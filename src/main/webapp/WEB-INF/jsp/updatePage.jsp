<%-- 
    Document   : updatePage
    Created on : 28-Dec-2019, 15:40:27
    Author     : HP
--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update page</h1>
        <form action="#" method="POST">
        <table border="1">
            <tr>
                <th>ID</th>
                <td><input type="text" value="${product.id}" name="id"/></td>
            </tr>
            <tr>
                <th>Name</th>
                <td><input type="text" value="${product.name}" name="name"/></td>
            </tr>
            <tr>
                <th>Quantity</th>
                <td><input type="number"  value="${product.qty}" name="qty"/></td>
            </tr>
                
             <tr>
                <th>Price</th>
                <td><input type="number"  value="${product.name}"name="price"/></td>
                
            </tr>
            <tr>
                <td><input type="submit" value="Save"/></td>
                <td></td>
                
            </tr>
        </table>
            </form>
    </body>
</html>
