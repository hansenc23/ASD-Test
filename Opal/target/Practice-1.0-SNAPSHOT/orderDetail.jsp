<%-- 
    Document   : orderDetail
    Created on : 07/08/2019, 6:20:56 PM
    Author     : Anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/orderDetail.css">
        <title>Order Detail</title>
    </head>
    <body>
        <div class = "orderDetail">
        <form method = "post" action = "paymentDetail.jsp" >
            <h4>&nbsp;Enter your personal detail</h4>
            &nbsp; 
        <table>
            <tr><td>First name(s)</td><td><input type = "text" name = "firstname" required></td>
            <td>Last name</td><td><input type = "text" name = "lastname" required></td></tr>
            <tr><td>Email Address</td><td><input type = "email" name = "email" required></td>
                <td>Mobile Phone</td><td><input type = "number" name = "phone" required></td></tr>
            <tr><td>Password</td><td><input type = "password" name = "password" required></td></tr>
            <tr><td>Address</td><td><input type = "text" name = "address" required></td></tr>
            <tr><td>I read <a href = 'asdf.jsp'>the tos</a></td><td><input type = "checkbox" name = "tos" required></td></tr>
            <tr><td><input type =  "submit" value = "Continue"></td></tr>
            <tr><td><a class = "button" href = "chooseOpalCard.jsp">Back</a></td></tr>
        </table>
        </form>
        </div>
    </body>
</html>
