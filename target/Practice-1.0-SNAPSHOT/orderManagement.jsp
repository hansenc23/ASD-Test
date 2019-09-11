<%-- 
    Document   : orderManagement
    Created on : 04/09/2019, 9:11:14 PM
    Author     : aasdd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="adminNavbar.jsp" %>
<%@include file="adminSidebar.jsp" %>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="asd.model.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/orderManagement.css">
        <title>Order Management</title>
    </head>
    <body>
        <%
            String adminemail = (String)session.getAttribute("adminemail");
            String adminpass = (String)session.getAttribute("adminpassword");
            MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
            
            Orders orderlist = new Orders(); 
            ArrayList<Order> orders = new ArrayList<Order>();
            orderlist = connector.listOrder();
            orders = orderlist.getList();
            
            if(!orders.isEmpty()){
        %>
            <div class = "clearfix">
        <%
                for(Order order: orders){
                    String orderID = connector.getOrderID(order);
        %>
                    <div class = "orderManagement">
                        <h5>Order ID: <%=orderID%></h5>
                        <table>
                            <tr></tr>
                            <tr><td>Customer ID: <%=order.getCustomerId()%></td><td>Order Date: <%=order.getOrderDate()%></td></tr>
                            <tr><td>Opal Type: <%=order.getOpalType()%></td><td>Opal ID: <%=order.getOpalId()%></td></tr>
                            <tr><td>Opal Value: <%=order.getValue()%></td><td>Opal Status: <%=order.getStatus()%></td></tr>
        <%
                    if(!order.getPaymentCard().isEmpty()){
        %>
                            <tr><td>Card Number: <%=order.getPaymentCard()%></td></tr>
        <%
                    }
                    else{
                        Paymentmethod orderpayment = connector.getOrderPayment(order);
        %>
                            <tr><td>First Name: <%=orderpayment.getFirstName()%></td><td>Last Name <%=orderpayment.getLastName()%></td></tr>
                            <tr><td>Card Number: <%=orderpayment.getCardNumber()%></td></tr>
                            <tr><td>Exiry Date: <%=orderpayment.getExpiryMonth()%>/<%=orderpayment.getExpiryYear()%></td><td>CVV: <%=orderpayment.getCvv()%></td></tr>
        <%
                    }
        %>
                        </table>
                    </div>
        <%
                        
                }
        %>
            </div>
        <%
            }
        %>
        
    </body>
</html>
