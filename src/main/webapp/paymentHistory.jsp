<%-- 
    Document   : paymentHistory
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
    </head>
    <style>
        
        .outcome{
            
            margin: 0 auto;
            
        }
    </style>
    <body>
        
        <% 
         if(request.getParameter("confirmed") != null){
<<<<<<< HEAD
        Double amount = Double.parseDouble(request.getParameter("amount"));
=======
             String adminemail = (String)session.getAttribute("adminemail");
        String adminpass = (String)session.getAttribute("adminpassword");
        MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
        String cusId = connector.getCustomerID(user.getEmail(), user.getPassword());
        double amount = Double.parseDouble(request.getParameter("amount"));
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String expiryMonth = request.getParameter("expiryMonth");
        String expiryYear = request.getParameter("expiryYear");
        String cvv = request.getParameter("cvv");
        String cardNumber = request.getParameter("cardnumber");
        String currentDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
<<<<<<< HEAD
        User user = (User) session.getAttribute("user"); 
        String opalId = "123123123";
        TopUpPayment tpmt = new TopUpPayment(firstname,lastname,cardNumber, expiryMonth, expiryYear, cvv, amount, opalId, currentDate); 
        String adminemail = (String)session.getAttribute("adminemail");
        String adminpass = (String)session.getAttribute("adminpassword");
        MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
=======
        //User user = (User) session.getAttribute("user"); 
        String opalId = request.getParameter("cardnumber");
        TopUpPayment tpmt = new TopUpPayment(cusId,opalId,amount, currentDate); 
>>>>>>> 8b114fb21f29c58ca4183902c63ea25ec77c8b7d
        connector.addTopUpPayment(tpmt, user);
        
        %> <div class="topup"> <p>payment successful</p> </div> <%
               } %>
    </body>
</html>
