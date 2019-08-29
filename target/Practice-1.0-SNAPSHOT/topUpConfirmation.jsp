<%-- 
    Document   : topUpConfirmation
    Created on : Aug 15, 2019, 1:31:02 AM
    Author     : Hieu
--%>
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<%@page import="asd.model.User"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.controller.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/topUp.css"/>
        <title>Top Up Confirmation</title>
    </head>
    <%  Double amount = Double.parseDouble(request.getParameter("amount"));
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String expiryMonth = request.getParameter("expiryMonth");
        String expiryYear = request.getParameter("expiryYear");
        String cvv = request.getParameter("cvv");
        String cardNumber = request.getParameter("cardnumber");
       
       
    %>
    
    <body>
        <div class = "topup">
        <form method = "post" action = "paymentHistory.jsp" >
          <table>
              <tr><th>Confirm Payment</th></tr>
              <tr><td>Top up amount: </td><td><input type="price" value="<%=amount%>" name="amount" readonly></td>
                
                </tr>
            <tr><td>First name(s):</td><td><input type="text" value="<%=firstname%>" name = "firstname" readonly></td>
                <td>Last name:</td><td><input type = "text" value="<%=lastname%>" name = "lastname" readonly></td></tr>
            <tr><td>Card number:</td><td><input type = "text"  value="<%=cardNumber%>" name = "cardnumber" readonly></td></tr>
            <tr><td>Expiry date:</td><td><input type = "text" value="<%=expiryMonth%>" name = "expiryMonth" readonly>
                <input type = "text" value="<%=expiryYear%>" name = "expiryYear" readonly></td>
                <td>CVV:</td>
                <td><input type = "text" value="<%=cvv%>" name = "cvv" readonly></td>
                <td><input type="hidden" value="confirmed" name="confirmed" ></td>
            </tr>
            <tr><td><input type="submit" value="confirm payment"></td></tr>
            <tr><td><a class = "button" href = "main.jsp">Back</a></td></tr>
        </table>
        </form>
            </div>
    </body>
</html>
