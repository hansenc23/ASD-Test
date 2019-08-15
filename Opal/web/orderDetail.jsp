<%-- 
    Document   : orderDetail
    Created on : 07/08/2019, 6:20:56 PM
    Author     : Anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/orderDetail.css">
        <title>Order Detail</title>
    </head>
    <body>
        <div class = "detail">
        <h3>Enter your personal detail</h3>
        <form method = "post" action = "addValue.jsp" >
        <table>
            <tr><td>First name(s)</td><td><input type = "text" name = "firstname" required></td></tr>
            <tr><td>Last name</td><td><input type = "text" name = "lastname" required></td></tr>
            <tr><td>Email Address</td><td><input type = "email" name = "email" required></td></tr>
            <tr><td>Password</td><td><input type = "password" name = "password" required></td></tr>
            <tr><td>Mobile Phone</td><td><input type = "number" name = "phone" required></td></tr>
            <tr><td>Address</td><td><input type = "text" name = "address" required></td></tr>
            <tr><td>I read <a href = 'asdf.jsp'>the tos</a></td><td><input type = "checkbox" name = "tos" required></td></tr>
            <tr><td><input type =  "submit" value = "Continue"></td></tr>
            <tr><td><a class = "button" href = "chooseOpalCard.jsp">Back</a></td></tr>
        </table>
        </form>
        </div>
    </body>
</html>
