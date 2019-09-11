<%-- 
    Document   : orderSucceed
    Created on : 18/08/2019, 2:14:05 AM
    Author     : aasdd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="java.util.Random"%>
<%@page import="asd.model.User"%>

<%@page import="asd.model.OrderPayment"%>

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
        <title>order succeed</title>
    </head>
    <body>
        <h3 clss = "orderProccess">Your order is being processed !</h3>
    </body>
</html>
