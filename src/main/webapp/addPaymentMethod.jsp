<%-- 
    Document   : createPayment
    Created on : Aug 14, 2019, 11:38:47 PM
    Author     : Hieu
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.controller.*,asd.model.*,asd.model.dao.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/topUp.css"/>
        <title>Payment Detail</title>
    </head>
   
    <body>
        <div class= "topup" >
        <h3>Add Payment Detail</h3>
        <p>Adding payment will help you check-out faster</p>
        <form method = "post" action = "main.jsp" >
        <table>
            
            <tr><td>First name(s)</td><td><input type = "text" name = "firstname" required></td>
                <td>Last name</td><td><input type = "text" name = "lastname" required></td></tr>
            <tr><td>Card number</td><td><input type = "text" name = "cardnumber" required></td></tr>
            <tr><td>Expiry Month</td> <td>
                <select name = "expiryMonth">
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
                 
                <select name = "expiryYear">
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
                <td><input type = "text" name = "cvv" required></td></tr>
            <tr><td><input type =  "submit" value = "Submit"></td>
            <td><a class = "button" href = "main.jsp">Back</a></td></tr>
        </table>
      
        </form>
        </div>
    </body>
</html>
