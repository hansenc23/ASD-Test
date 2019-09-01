<%-- 
    Document   : orderSucceed
    Created on : 18/08/2019, 2:14:05 AM
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
<%@page import="java.util.Random"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/orderProccess.css" >
        <title>order succeed</title>
    </head>
    <body>
        <%
            String adminemail = (String)session.getAttribute("adminemail");
            String adminpass = (String)session.getAttribute("adminpassword");
            MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass); 
            
            String securitycode = "" + (new Random()).nextInt(9999);
            
            Order getAmount = (Order)session.getAttribute("addAmount");
            OpalCard opalcard = new OpalCard(getAmount.getOpalId(), getAmount.getValue(), getAmount.getOpalType(), securitycode);
            connector.registerCard(opalcard);
            
            java.util.Date sysdate = new java.util.Date();
            DateFormat dateformat = new SimpleDateFormat("yyyy-mm-dd");
            
            String date = dateformat.format(sysdate);
                   
            if(user == null){
                Order order = new Order(getAmount.getCustomerId(), getAmount.getOpalId(), getAmount.getPaymentCard(), getAmount.getOpalType(), date, getAmount.getValue(), "Processing");
                connector.add(order);
                Paymentmethod getpayment = (Paymentmethod)session.getAttribute("orderPayment");
                connector.add(getpayment, order);
            }
            else{
                Paymentmethods pmtmethods = new Paymentmethods();
                ArrayList<Paymentmethod> paymentMethods = new ArrayList<Paymentmethod>();
                pmtmethods  =  connector.getPaymentMethods(user);
                paymentMethods = pmtmethods.getList();    
                
                if(paymentMethods.isEmpty() || request.getParameter("another") != null){
                    Order order = new Order(getAmount.getCustomerId(), getAmount.getOpalId(), getAmount.getPaymentCard(), getAmount.getOpalType(), date, getAmount.getValue(), "Processing");
                    connector.add(order);
                    Paymentmethod getpayment = (Paymentmethod)session.getAttribute("orderPayment");
                    connector.add(getpayment, order);
                }
                else{
                    Order getCardnum = (Order)session.getAttribute("addCardNum");
                    Order order = new Order(getCardnum.getCustomerId(), getCardnum.getOpalId(), getCardnum.getPaymentCard(), getCardnum.getOpalType(), date, getCardnum.getValue(), "Processing");
                    connector.add(order);
                }
                connector.linkCard(opalcard, user);
            }
            
            session.removeAttribute("addAmount");
        %>
        <h3 clss = "orderProccess">Your order is successful !</h3>
    </body>
</html>
