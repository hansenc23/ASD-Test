<%-- 
    Document   : topUpConfirmation
    Created on : Aug 15, 2019, 1:31:02 AM
    Author     : Hieu
--%>
<%@page import="java.util.ArrayList"%>
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<%@page import="asd.model.User"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="asd.model.*"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.controller.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/topUp.css"/>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Top Up Confirmation</title>
    </head>
    <body>
        <div class = "topup">
             <form method = "post" action = "paymentOutcome.jsp" >
    <%  
        String opalId = (String)session.getAttribute("opalID");
        MongoDBConnector connector = new MongoDBConnector();
        Paymentmethods pmtmethods = new Paymentmethods();
        ArrayList<Paymentmethod> paymentMethods = new ArrayList<Paymentmethod>();
        pmtmethods  =  connector.getPaymentMethods(user);
        paymentMethods = pmtmethods.getList();
        if(paymentMethods.isEmpty() || request.getParameter("cardnumber") != null){
         double amount =  Double.parseDouble(session.getAttribute("yourAmount").toString());
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        int expiryMonth = Integer.parseInt(request.getParameter("expiryMonth"));
        int expiryYear = Integer.parseInt(request.getParameter("expiryYear"));
        int cvv = Integer.parseInt(request.getParameter("cvv"));
        String cardNumber = request.getParameter("cardnumber");
        Paymentmethod payment = new Paymentmethod(firstname, lastname, cardNumber, expiryMonth, expiryYear, cvv);
        session.setAttribute("confirmPayment", payment);
            %>
           <h4>Confirm Payment</h4>
          <table>
              <tr><td>Top up amount: </td><td><%=amount%></td>
                  <td>Card number: </td><td><%=opalId%></td>
                </tr>
            <tr><td>First name(s):</td><td><%=payment.getFirstName()%></td>
                <td>Last name:</td><td><%=payment.getLastName()%></td></tr>
            <tr><td>Card number:</td><td><%=payment.getCardNumber()%></td></tr>
            <tr><td>Expiry Month:</td><td><%=payment.getExpiryMonth()%>
                /<%=payment.getExpiryYear()%></td>
                <td>CVV:</td>
                <td><%=payment.getCvv()%></td>
                <td><input  type="hidden" value="confirmed" name="confirmed" ></td>
            </tr>
            
            
            <%
        }else{
        Paymentmethod p = new Paymentmethod("","","", 0, 0, 0);
                    for (Paymentmethod paymentMethod: paymentMethods){ 
                        String ordercard = request.getParameter(paymentMethod.getCardNumber());
                        if(ordercard != null){
                            p = paymentMethod;
                        }
                    }
        double amount =  Double.parseDouble(session.getAttribute("yourAmount").toString());
        session.setAttribute("confirmPayment", p);
        %>
        <table>
              <tr><th>Confirm Payment</th></tr>
              <tr><td>Top up amount: </td><td><%=amount%></td>
                 <td>Card number: </td><td><%=opalId%></td>
                </tr>
            <tr><td>First name(s):</td><td><%=p.getFirstName()%></td>
                <td>Last name:</td><td><%=p.getLastName()%></td></tr>
            <tr><td>Credit Card number:</td><td><%=p.getCardNumber()%></td></tr>
            <tr><td>Expiry date:</td><td><%=p.getExpiryMonth()%>
                /<%=p.getExpiryYear()%></td>
                <td>CVV:</td>
                <td><%=p.getCvv()%></td>
                <td><input  type="hidden" value="confirmed" name="confirmed" ></td>
            </tr>
        <%
        
        }
    %>
    <tr><td><input id="topUpConfirmation_confirm" type="submit" value="confirm payment"></td></tr>
            <tr><td><a class = "button" href = "topUpCard.jsp">Back</a></td></tr>
        </table>
        </form>
    
        
            </div>
    </body>
</html>
