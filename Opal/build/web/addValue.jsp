<%-- 
    Document   : addValue
    Created on : 07/08/2019, 6:57:36 PM
    Author     : Anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/addValue.css">
        <title>Add Value</title>
    </head>
    <body>
        <div class = "detail">
        <h3>Add value to your Opal Card</h3>
        <form method = "post" action = "paymentDetail.jsp" >
        <table>
            <tr><td>Top up amount</td><td><select name = "amount" required>
                        <option selected disabled>Select amount</option>
                        <option value = "10">$10.00</option>
                        <option value = "15">$15.00</option>
                        <option value = "30">$30.00</option>
                        <option value = "50">$50.00</option>
                    </select></td></tr>
            <tr><td>Top up type</td><td><select name = "topUpType" required>
                        <option value = "manuTop">One off top up</option>
                        <option value = "autoTop">Automatic top up on low balance</option>
                    </select>
            <tr><td><input type =  "submit" value = "Continue"></td></tr>
            <tr><td><a class = "button" href = "orderDetail.jsp">Back</a></td></tr>
        </table>
        </form>
        </div>
    </body>
</html>
