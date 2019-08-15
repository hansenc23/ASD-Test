<%-- 
    Document   : paymentDetail
    Created on : 07/08/2019, 6:55:51 PM
    Author     : aasdd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/paymentDetail.css">
        <title>Payment Detail</title>
    </head>
    <body>
        <div class = "detail">
        <h3>Payment Detail</h3>
        <p>Your order will be processed securely</p>
        <form method = "post" action = "confirmation.jsp" >
        <table>
            <tr><td>First name(s)</td><td><input type = "text" name = "firstname" required></td>
                <td>Last name</td><td><input type = "text" name = "lastname" required></td></tr>
            <tr><td>Card number</td><td><input type = "text" name = "cardnumber" required></td></tr>
            <tr><td>Expiry date</td><td><input type = "date" name = "expirydate" required></td><td>CVV</td>
                <td><input type = "text" name = "cvv" required></td></tr>
            <tr><td><input type =  "submit" value = "Continue"></td></tr>
            <tr><td><a class = "button" href = "orderDetail.jsp">Back</a></td></tr>
        </table>
        </form>
        </div>
    </body>
</html>
