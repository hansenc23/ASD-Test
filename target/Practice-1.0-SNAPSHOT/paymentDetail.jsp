<%-- 
    Document   : paymentDetail
    Created on : 07/08/2019, 6:55:51 PM
    Author     : aasdd
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
        <link rel="stylesheet" type="text/css" href="css/paymentDetail.css">
        <title>Payment Detail</title>
    </head>
    <body>
        
        <%
            String adminemail = (String)session.getAttribute("adminemail");
            String adminpass = (String)session.getAttribute("adminpassword");
            MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
             
            //get the amount from orderValue
            double amount = Double.parseDouble(request.getParameter("amount"));
            String paymentCard = "";
            
            //get the session from orderValue
            Order getCusId = (Order)session.getAttribute("addCusId");
            
            //set the amount to new session
            Order addAmount = new Order(getCusId.getCustomerId(), getCusId.getOpalId(), paymentCard, getCusId.getOpalType(), "", amount, "");
            session.setAttribute("addAmount", addAmount);
            
            //remove the session from orderaValue
//            session.removeAttribute("addCusId"); 
            
        %>
        <div class = "h3">
            <h3>Payment Detail</h3>
        </div>
        <div class = "paymentDetail">        
            <form method = "post" action = "orderConfirmation.jsp" >
                <table>
                    <h6>Your order will be processed securely</h6>
        <%
            if(user != null){
                Paymentmethods pmtmethods = new Paymentmethods();
                ArrayList<Paymentmethod> paymentMethods = new ArrayList<Paymentmethod>();
                pmtmethods  =  connector.getPaymentMethods(user);
                paymentMethods = pmtmethods.getList();
                if(!paymentMethods.isEmpty()){
        %>    
                    <div class = "clearfix">
        <%
                    for (Paymentmethod paymentMethod: paymentMethods){  
                        String cardnum = paymentMethod.getCardNumber();   
        %>
                            <div class = "paymentmethod">
                            <p>First Name: <%=paymentMethod.getFirstName()%></p>
                            <p>Last Name:<%=paymentMethod.getLastName()%></p>
                            <p>Card Number:<%=cardnum.substring(0, 4)%>************ </p>
                            <input type ="submit" value = "Select" name = "<%=cardnum%>" id ="<%=cardnum%>">
                        </div>
        <%              
                    }
        %>
                    </div>
            </form>
                    <h6>Use Another Payment Method</h6>
        <%
                }
            }
        %>
            <form method = "post" action = "orderConfirmation.jsp" >
                    <tr><td>First name(s)</td><td><input type = "text" name = "cardfname" required></td>
                        <td>Last name</td><td><input type = "text" name = "cardlname" required></td></tr>
                    <tr><td>Card number</td><td>
                                    <input type ="text" name = "cardnumber" minlength="16" maxlength="16" required></td></tr>
                    <tr><td>Expiry date</td>
                        <td>
                        <select name = "expirymonth">
                            <option value="01">January</option>
                            <option value="02">February </option>
                            <option value="03">March</option>
                            <option value="04">April</option>
                            <option value="05">May</option>
                            <option value="06">June</option>
                            <option value="07">July</option>
                            <option value="08">August</option>
                            <option value="09">September</option>
                            <option value="10">October</option>
                            <option value="11">November</option>
                            <option value="12">December</option>
                        </select>
                        <select name = "expiryyear">
                            <option value="19"> 2019</option>
                            <option value="20"> 2020</option>
                            <option value="21"> 2021</option>
                            <option value="22"> 2022</option>
                            <option value="23"> 2023</option>
                            <option value="24"> 2024</option>
                            <option value="25"> 2025</option>
                            <option value="26"> 2026</option>

                        </select>
                        </td>
                        <td>CVV</td>
                        <td><input type = "text" name = "cvv" minlength="3" maxlength="3" size = "1" required></td></tr>
                    <tr><td colspan = "3"></td>
                        <td align = "right"><input type =  "submit" value = "Continue"></td></tr>             
                </table>
            </form>
        </div>
    </body>
</html>
