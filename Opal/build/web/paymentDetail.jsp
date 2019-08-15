<%-- 
    Document   : paymentDetail
    Created on : 07/08/2019, 6:55:51 PM
    Author     : aasdd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Detail</title>
    </head>
    <style>
    .detail{
        float: left;
        width: 40%;
        height: 300px;
        padding: 30px;
        margin: 15px;
        border-radius: 5px;
        background-color: #e6f7ff;
        border-top: 1px solid #b3d9ff;  
    } 
    h3 {
        color: #004d80;
        font-family: Arial;
    }
    .button {
        font: 15px Arial;
        text-decoration: none;
        background-color: #005580;
        color: #ffffff;
        border-radius: 5px;
        padding: 5px 7px 5px 7px;
        margin-top: 50px;
        border-top: 2px solid #ffffff;
        border-left: 2px solid #ffffff;
        border-right: 2px solid #00334d;
        border-bottom: 3px solid #00334d;
    }
    .detail td, p {
        color: #331a00;
        font-family: Arial;
        font-size: 13px;
        padding-top: 10px;
        padding-right: 10px;
    }
    .detail a,.detail input[type=submit]{
        font: 15px Arial;
        background-color: #005580;
        color: #ffffff;
        border-radius: 5px;
        padding: 5px 7px 5px 7px;
        margin-top: 10px;
        margin-bottom:10px;
        border-right: 2px solid #00334d;
        border-bottom: 3px solid #00334d;
    }
            
    A:hover, .detail input[type=submit]:hover{
        background-color: #0088cc;
    }
    </style>
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
