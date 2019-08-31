<%-- 
    Document   : confirmation
    Created on : 08/08/2019, 12:47:31 AM
    Author     : aasdd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<%@page import="asd.model.*"%>
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
            String adminemail = (String)session.getAttribute("adminemail");
            String adminpass = (String)session.getAttribute("adminpassword");
            MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);    
            
            Order getAmount = (Order)session.getAttribute("addAmount");
            
            if(user == null){    
                            
                String cardfname = request.getParameter("cardfname");
                String cardlname = request.getParameter("cardlname");
                String cardnumber = request.getParameter("cardnumber");
                int expirymonth = Integer.parseInt(request.getParameter("expirymonth"));
                int expiryyear = Integer.parseInt(request.getParameter("expiryyear"));
                int cvv = Integer.parseInt(request.getParameter("cvv"));  

                Paymentmethod payment = new Paymentmethod(cardfname, cardlname, cardnumber, expirymonth, expiryyear, cvv);
                session.setAttribute("orderPayment", payment);
                
                User getAnonymous = (User)session.getAttribute("anonymous");
        %>    
                <h3>&nbsp;&ensp;Order Confirmation</h3>
                <div class = "orderConfirmation">    
                <form method = "post" action = "orderSucceed.jsp" >
                <table>
                    <tr><td>Name : </td><td><%= getAnonymous.getFirstName()%><%= getAnonymous.getLastName()%></td></tr>
                    <tr><td>Email Address :</td><td><%= getAnonymous.getEmail()%></td>
                        <td>Mobile Phone :</td><td><%= getAnonymous.getPhoneNumber()%></tr>
                    <tr><td>Address :</td><td><%= getAnonymous.getAddress()%></td></tr>
                    <tr><td>Top up amount :</td><td><%=getAmount.getValue()%></td></tr>
                </table>
                <hr>
                <table>
                    <tr><td>First name(s) :</td><td><%=cardfname%></td>
                        <td>Last name :</td><td><%=cardlname%></td></tr>
                    <tr><td>Card number :</td><td><%=cardnumber%></td></tr>
                    <tr><td>Expiry date :</td><td><%=expirymonth%><%= expiryyear%></td><td>CVV :</td><td><%= cvv%></td></tr>
        <%    
            }
            else{
        %>
                <h3>&nbsp;&ensp;Order Confirmation</h3>
                <div class = "orderConfirmation">    
                <form method = "post" action = "orderSucceed.jsp" >
                <table>
                    <tr><td>Name : </td><td><%= user.getFirstName()%><%= user.getLastName()%></td></tr>
                    <tr><td>Email Address :</td><td><%= user.getEmail()%></td>
                        <td>Mobile Phone :</td><td><%= user.getPhoneNumber()%></tr>
                    <tr><td>Address :</td><td><%= user.getAddress()%></td></tr>
                    <tr><td>Top up amount :</td><td><%=getAmount.getValue()%></td></tr>
                </table>
                <hr>
        <%

                Paymentmethods pmtmethods = new Paymentmethods();
                ArrayList<Paymentmethod> paymentMethods = new ArrayList<Paymentmethod>();
                pmtmethods  =  connector.getPaymentMethods(user);
                paymentMethods = pmtmethods.getList(); 
                
                if(paymentMethods.isEmpty()){
                    
                    String cardfname = request.getParameter("cardfname");
                    String cardlname = request.getParameter("cardlname");
                    String cardnumber = request.getParameter("cardnumber");
                    int expirymonth = Integer.parseInt(request.getParameter("expirymonth"));
                    int expiryyear = Integer.parseInt(request.getParameter("expiryyear"));
                    int cvv = Integer.parseInt(request.getParameter("cvv"));  

                    Paymentmethod payment = new Paymentmethod(cardfname, cardlname, cardnumber, expirymonth, expiryyear, cvv);
                    session.setAttribute("orderPayment", payment);
        %>
                    <table>
                        <tr><td>First name(s) :</td><td><%=cardfname%></td>
                            <td>Last name :</td><td><%=cardlname%></td></tr>
                        <tr><td>Card number :</td><td><%=cardnumber%></td></tr>
                        <tr><td>Expiry date :</td><td><%=expirymonth%><%= expiryyear%></td><td>CVV :</td><td><%= cvv%></td></tr>
        <%
                }
                else{
                    Paymentmethod p = new Paymentmethod("","","", 0, 0, 0);
                    for (Paymentmethod paymentMethod: paymentMethods){ 
                        String ordercard = request.getParameter(paymentMethod.getCardNumber());
                        if(ordercard != null){
                            p = paymentMethod;
                        }
                    }
        %>
                    <table>
                        <tr><td>First name(s) :</td><td><%= p.getFirstName()%></td>
                            <td>Last name :</td><td><%= p.getLastName()%></td></tr>
                        <tr><td>Card number :</td><td><%= p.getCardNumber()%></td></tr>
                        <tr><td>Expiry date :</td><td><%= p.getExpiryMonth()%><%= p.getExpiryYear()%></td><td>CVV :</td><td><%= p.getCvv()%></td></tr>
                        
        <%  
                }
            }          
        %>
                        <tr><td colspan = "3"><a class = "button" href = "paymentDetail.jsp">Back</a></td><td align = "right"><input type="submit" value="Confirm" name = "confirm"></td></tr>
                        <tr><td><a class = "button" href = "orderCancelled.jsp">Cancel</a></tr>
                    </table>
            </form>
        </div>
        
    </body>
</html>
