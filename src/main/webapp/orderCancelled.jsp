<%-- 
    Document   : cancelOrder
    Created on : 18/08/2019, 2:44:42 AM
    Author     : aasdd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<%@page import="java.util.ArrayList"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="java.util.Random"%>
<%@page import="asd.model.User"%>
<%@page import="asd.model.Order"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/orderProccess.css" >
        <title>Order Cancelled</title>
    </head>
    <body>
        <%
            MongoDBConnector connector = new MongoDBConnector();
            
            Order getAmount = (Order)session.getAttribute("addAmount");
            
            java.util.Date sysdate = new java.util.Date();
            DateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
            
            String date = dateformat.format(sysdate);
                   
            if(user == null){
                
                if(request.getParameter("change") == null){ 
                    Order order = new Order(getAmount.getCustomerId(), getAmount.getOpalId(), getAmount.getPaymentCard(), getAmount.getOpalType(), date, getAmount.getValue(), "Cancelled");
                    connector.add(order);
                    Paymentmethod getpayment = (Paymentmethod)session.getAttribute("anonpay");
                    connector.add(getpayment, order);
                }
                else{
                    Order getUpAmount = (Order)session.getAttribute("updateOrder");
                    Paymentmethod getUppayment = (Paymentmethod)session.getAttribute("updateanonpayment");
                    Order order = new Order(getAmount.getCustomerId(), getAmount.getOpalId(), getUpAmount.getPaymentCard(), getAmount.getOpalType(), date, getUpAmount.getValue(), "Cancelled");
                    connector.add(order);
                    connector.add(getUppayment, order);
                }
            }
            else{
                Paymentmethods pmtmethods = new Paymentmethods();
                ArrayList<Paymentmethod> paymentMethods = new ArrayList<Paymentmethod>();
                pmtmethods  =  connector.getPaymentMethods(user);
                paymentMethods = pmtmethods.getList();
                
                if(paymentMethods.isEmpty() || request.getParameter("another") != null){
                    if(request.getParameter("isChange") == null){ 
                        Order order = new Order(getAmount.getCustomerId(), getAmount.getOpalId(), getAmount.getPaymentCard(), getAmount.getOpalType(), date, getAmount.getValue(), "Cancelled");
                        connector.add(order);
                        Paymentmethod getpayment = (Paymentmethod)session.getAttribute("orderPayment");
                        connector.add(getpayment, order);
                    }
                    else{
                        Order getUpAmount = (Order)session.getAttribute("updateOrder");
                        Paymentmethod getUppayment = (Paymentmethod)session.getAttribute("updateOrderPay");
                        Order order = new Order(getAmount.getCustomerId(), getAmount.getOpalId(), getUpAmount.getPaymentCard(), getAmount.getOpalType(), date, getUpAmount.getValue(), "Cancelled");
                        connector.add(order);
                        connector.add(getUppayment, order);
                    }
                }
                else{
                    if(request.getParameter("isChange") == null){ 
                        Order getCardnum = (Order)session.getAttribute("addCardNum");
                        Order order = new Order(getCardnum.getCustomerId(), getCardnum.getOpalId(), getCardnum.getPaymentCard(), getCardnum.getOpalType(), date, getCardnum.getValue(), "Cancelled");
                        connector.add(order);
                    }
                    else{
                        Order getUpAmount = (Order)session.getAttribute("updateOrder");
                        Paymentmethod getUppayment = (Paymentmethod)session.getAttribute("updateOrderPay");
                        Order order = new Order(getAmount.getCustomerId(), getAmount.getOpalId(), getUpAmount.getPaymentCard(), getAmount.getOpalType(), date, getUpAmount.getValue(), "Cancelled");
                        connector.add(order);
                        connector.add(getUppayment, order);
                    }
                } 
            }
            
            session.removeAttribute("addAmount");
        %>
        <h3>Your order has been cancelled !</h3>
    </body>
</html>
