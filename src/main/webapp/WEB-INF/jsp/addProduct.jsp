<%-- 
    Document   : addProduct
    Created on : 27-Dec-2019, 00:39:15
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add new Product</h1>
        <form action="/CrudSpring/save" method="POST">
        <table border="1">
            <tr>
                <th>Name</th>
                <td><input type="text" name="name"/></td>
            </tr>
            <tr>
                <th>Quantity</th>
                <td><input type="number" name="qty"/></td>
            </tr>
                
             <tr>
                <th>Price</th>
                <td><input type="number" name="price"/></td>
                
            </tr>
            <tr>
                <td><input type="submit" value="Save"/></td>
                <td></td>
                
            </tr>
        </table>
            </form>
    </body>
</html>
