<%-- 
    Document   : confirmation
    Created on : 08/08/2019, 12:47:31 AM
    Author     : aasdd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="java.util.Random"%>
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<%@page import="asd.model.User"%>
<%@page import="asd.model.OrderPayment"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/orderConfirmation.css">
        <title>order confirmation page</title>
    </head>
    <body>
        <%
            String paymentID = "P" + (new Random()).nextInt(999999);
            String orderID = "O" + (new Random()).nextInt(999999);
            double amount = Double.parseDouble(request.getParameter("amount"));
            String cardfname = request.getParameter("cardfname");
            String cardlname = request.getParameter("cardlname");
            String cardnumber = request.getParameter("cardnumber");
            int expirymonth = Integer.parseInt(request.getParameter("expirymonth"));
            int expiryyear = Integer.parseInt(request.getParameter("expiryyear"));
            int cvv = Integer.parseInt(request.getParameter("cvv"));  
            
            User user = (User)session.getAttribute("user");
            
            OrderPayment orderpayment = new OrderPayment(paymentID, orderID, cardfname, cardlname, cardnumber, expirymonth, expiryyear, cvv);
            session.setAttribute("orderpayment", orderpayment);
            
            String adminemail = (String)session.getAttribute("adminemail");
            String adminpass = (String)session.getAttribute("adminpassword");
            MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
            connector.add(orderpayment);
                        
        %>
        <h3>&nbsp;&ensp;Order Confirmation</h3>
        <div class = "orderConfirmation">    
        <form method = "post" action = "orderSucceed.jsp" >
        <table>
            <tr><td>Name : </td><td><%= user.getFirstName()%><%= user.getLastName()%></td></tr>
            <tr><td>Email Address :</td><td><%= user.getEmail()%></td>
                <td>Mobile Phone :</td><td><%= user.getPhoneNumber()%></tr>
            <tr><td>Address :</td><td><%= user.getAddress()%></td></tr>
            <tr><td>Top up amount :</td><td><%= amount%></td></tr>
        </table>
        <hr>
        <table>
            <tr><td>First name(s) :</td><td><%= cardfname%></td>
                <td>Last name :</td><td><%= cardlname%></td></tr>
            <tr><td>Card number :</td><td><%= cardnumber%></td></tr>
            <tr><td>Expiry date :</td><td><%= expirymonth%><%= expiryyear%></td><td>CVV :</td><td><%= cvv%></td></tr>
            <tr><td colspan = "3"><a class = "button" href = "paymentDetail.jsp">Back</a></td><td align = "right"><input type="submit" value="Confirm" name = "confirm"></td></tr>
            <tr><td><a class = "button" href = "orderCancelled.jsp">Cancel</a></tr>
        </table>
        </form>
        </div>
    </body>
</html>
