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
        <title>Payment History</title>
        <link rel="stylesheet" type="text/css" href="css/topUp.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <style>
        
        .outcome{
            
            margin: 0 auto;
            
        }
    </style>
    <body>
        
        <% 
             if(user != null){
                if (request.getParameter("firstname") != null){
                    String firstname = request.getParameter("firstname");
                    String lastname = request.getParameter("lastname");
                    String cardnumber = request.getParameter("cardnumber");
                    int expiryMonth = Integer.parseInt(request.getParameter("expiryMonth"));
                    int expiryYear = Integer.parseInt(request.getParameter("expiryYear"));
                    int cvv = Integer.parseInt(request.getParameter("cvv"));
                    Paymentmethod paymt = new Paymentmethod(firstname,lastname,cardnumber,expiryMonth,expiryYear,cvv);
                    MongoDBConnector connector = new MongoDBConnector();
                    String outcome = connector.addPayment(paymt, user);    
        %>                          
        <div class = "topup">
            <h3><%= outcome %></h3>
                <a id="addPaymentMethodOutcome_back" class = "button" href = "paymentMethodManagement.jsp">Back</a>
        </div> <%
               } }%>
    </body>
</html>

