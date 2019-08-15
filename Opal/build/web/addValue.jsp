<%-- 
    Document   : addValue
    Created on : 07/08/2019, 6:57:36 PM
    Author     : Anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Value</title>
    </head>
    <style>
    .detail{
        float: left;
        width: 40%;
        height: 230px;
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
