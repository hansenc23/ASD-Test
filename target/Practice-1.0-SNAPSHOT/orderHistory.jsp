<%-- 
    Document   : orderHistory
    Created on : 04/09/2019, 7:41:17 PM
    Author     : anita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="asd.model.*"%>
<%@page import="java.util.ArrayList"%>
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/orderHistory.css">
        <title>Order History</title>
    </head>
    <body>
        <%
            MongoDBConnector connector = new MongoDBConnector();
            
            Orders orderlist = new Orders(); 
            ArrayList<Order> orders = new ArrayList<Order>();
            orderlist = connector.getOrders(user);
            orders = orderlist.getList();

            if(!orders.isEmpty()){
        %>
                <div class = "clearfix">
        <%
                for(Order order: orders){
                    String orderID = connector.getOrderID(order);
        %>
                    <div class = "orderHistory">
                        <table>
                            <tr><td>Order ID: <%=orderID%></td></tr>
                            <tr><td>Order Date: <%=order.getOrderDate()%></td></tr>
                            <tr><td>Opal Type: <%=order.getOpalType()%></td><td>Opal ID: <%=order.getOpalId()%></td></tr>
                            <tr><td>Opal Value: <%=order.getValue()%></td><td>Opal Status: <%=order.getStatus()%></td></tr>
                        </table>
                    </div>
        <%  
                }
        %>
                </div>
        <%
            }
            else{
        %>
                <h3>You haven't ordered an Opal Card before</h3>
        <%
            }
        %>
    </body>
    
</html>
