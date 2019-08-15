<%-- 
    Document   : orderDetail
    Created on : 07/08/2019, 6:20:56 PM
    Author     : Anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Detail</title>
    </head>
        <style>
    .detail{
        float: left;
        width: 25%;
        height: 420px;
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
    .detail td {
        color: #331a00;
        font-family: Arial;
        font-size: 13px;
        padding-top: 10px;
        padding-right: 10px;
    }
    .detail input[type=submit]{
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
            <tr><td><a class = "button" href = "orderDetail.jsp">Back</a></td></tr>
        </table>
        </form>
        </div>
    </body>
</html>
