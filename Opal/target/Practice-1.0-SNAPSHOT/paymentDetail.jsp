<%-- 
    Document   : paymentDetail
    Created on : 07/08/2019, 6:55:51 PM
    Author     : aasdd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/paymentDetail.css">
        <title>Payment Detail</title>
        <style>
    .paymentDetail{
        float: left;
        width: 73%;
        height: 520px;
        padding: 30px;
        margin: 0 240px;
        border-radius: 5px;
        background-color: #e6f7ff;
        border-top: 1px solid #b3d9ff;   
    } 
    .paymentDetail h3 {
        color: #004d80;
        font-family: Arial;
    }
    
    .paymentDetail h6 {
        color: #331a00;
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
    .paymentDetail td {
        color: #331a00;
        font-family: Arial;
        font-size: 16px;
        padding-top: 18px;
        padding-right: 10px;
        padding-left: 50px;
    }
    .paymentDetail a,.paymentDetail input[type=submit]{
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
            
    A:hover, .paymentDetail input[type=submit]:hover{
        background-color: #0088cc;
        text-decoration: none;
    }
    
    .paymentDetail hr {
        margin-top: 20px;
        margin-bottom: 20px;
        margin-left: auto;
        margin-right: auto;
        border-width: 1px;
    }
    
            
        </style>
    </head>
    <body>
        <div class = "paymentDetail">        
        <form method = "post" action = "paymentDetail.jsp" >
            <h3>Add value to your Opal Card</h3>
        <table>
            <tr><td>Top up amount</td><td><select name = "amount" required>
                        <option value = "10.00">$10.00</option>
                        <option value = "15.00">$15.00</option>
                        <option value = "30.00">$30.00</option>
                        <option value = "50.00">$50.00</option>
                    </select></td></tr>
        </table>
            <hr>
        <table>
        <h3>Payment Detail</h3>
        <h6>Your order will be processed securely</h6>
            <tr><td>First name(s)</td><td><input type = "text" name = "firstname" required></td>
                <td>Last name</td><td><input type = "text" name = "lastname" required></td></tr>
            <tr><td>Card number</td><td>
                            <input type ="text" name = "cardNumber" minlength="16" maxlength="16" required></td></tr>
            <tr><td>Expiry date</td>
                <td>
                <select name = "expiryDate">
                    <option value="01">January</option>
                    <option value="02">February </option>
                    <option value="03">March</option>
                    <option value="04">April</option>
                    <option value="05">May</option>
                    <option value="06">June</option>
                    <option value="07">July</option>
                    <option value="08">August</option>
                    <option value="09">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>
                </select>
                <select>
                    <option value="19"> 2019</option>
                    <option value="20"> 2020</option>
                    <option value="21"> 2021</option>
                    <option value="22"> 2022</option>
                    <option value="23"> 2023</option>
                    <option value="24"> 2024</option>
                    <option value="25"> 2025</option>
                    <option value="26"> 2026</option>
                    
                </select>
                </td>
                <td>CVV</td>
                <td><input type = "text" name = "cvv" minlength="3" maxlength="3" size = "1" required></td></tr>
            <tr><td><input type =  "submit" value = "Continue"></td></tr>
            <tr><td><a class = "button" href = "orderDetail.jsp">Back</a></td></tr>
        </table>
        </form>
        </div>
    </body>
</html>
