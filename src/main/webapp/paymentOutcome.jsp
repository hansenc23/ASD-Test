<%-- 
    Document   : paymentOutcome
    Created on : Aug 16, 2019, 11:03:48 PM
    Author     : Hieu
--%>
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="asd.model.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Payment History</title>
        <link rel="stylesheet" type="text/css" href="css/topUp.css">
    </head>
 
    <body>
        
        <% 
         if(request.getParameter("confirmed") != null){
             MongoDBConnector connector = new MongoDBConnector();
        String cusId = connector.getCustomerID(user.getEmail(), user.getPassword());
        double amount =  Double.parseDouble(session.getAttribute("yourAmount").toString());
        String currentDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        String opalId = (String)session.getAttribute("opalID");
        TopUpPayment tpmt = new TopUpPayment(cusId,opalId,amount, currentDate); 
        connector.addTopUpPayment(tpmt, user);
        String outcome = connector.addValue(opalId, amount);
        
        %> <div class="topup"> <h3><%=outcome%></h3> </div> <%
               } %>
    </body>
</html>
