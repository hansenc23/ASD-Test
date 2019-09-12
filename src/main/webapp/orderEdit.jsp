<%-- 
    Document   : orderEdit
    Created on : 06/09/2019, 10:10:43 AM
    Author     : anita
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
        <link rel="stylesheet" type="text/css" href="css/paymentDetail.css">
        <title>Order Edit</title>
    </head>
    <body>
        <div class="h3"
        <h3>&nbsp;&ensp;Edit Order Detail</h3>
        </div>
        <div class = "paymentDetail">    
                <form method = "post" action = "orderConfirmation.jsp" >
                <table>
        <%
            String adminemail = (String)session.getAttribute("adminemail");
            String adminpass = (String)session.getAttribute("adminpassword");
            MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);    
            
            Order getAmount = (Order)session.getAttribute("addAmount");
                
            if(user == null){    
                
                Paymentmethod getPayment = (Paymentmethod)session.getAttribute("anonpay");
                
                User getAnonymous = (User)session.getAttribute("anonymous");
//                String customerId;
//                customerId = connector.getCustomerID(email, password);

        %>       
                    <tr><td>First Name : </td><td><input id="edit_first_name" value="<%= getAnonymous.getFirstName()%>" name="updateFname" required></td>
                    <td>Last Name : </td><td><input id="edit_last_name" value="<%= getAnonymous.getLastName()%>" name="updateLname" required></td></tr>
                    <tr><td>Email Address :</td><td><input id="edit_email_address" value="<%= getAnonymous.getEmail()%>" name="updateEmail" required></td>
                        <td>Mobile Phone :</td><td><input id="edit_mobile_phone" value="<%= getAnonymous.getPhoneNumber()%>" name="updatePhone" required></tr>
                    <tr><td>Address :</td><td><input id="edit_address" value="<%= getAnonymous.getAddress()%>" name="updateAddress" required></td></tr>
                </table>
                <hr>
                <table>
                    <tr><td>Top up amount :</td><td><select id="edit_value" value="<%=getAmount.getValue()%>" name="updateValue" required>
                                <option value = "10.0">$10.00</option>
                                <option value = "15.0">$15.00</option>
                                <option value = "30.0">$30.00</option>
                                <option value = "50.0">$50.00</option>
                            </select></td></tr>
                </table>
                <hr>
                <table>
                    <tr><td>First name(s) :</td><td><input id="edit_payment_first_name"value="<%=getPayment.getFirstName()%>" name="updateFirstname" required></td>
                        <td>Last name :</td><td><input id="edit_payment_last_name"value="<%=getPayment.getLastName()%>" name="updateLastname" required></td></tr>
                    <tr><td>Card number</td><td>
                                    <input id="edit_payment_card_number" type ="text" value="<%=getPayment.getCardNumber()%>" name="updateCardnum" minlength="16" maxlength="16" required></td></tr>
                    <tr><td>Expiry date</td>
                        <td>
                        <select id="edit_payment_expiry_month" value="<%=getPayment.getExpiryMonth()%>" name="updateExpirymonth">
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
                        <select id="edit_payment_expiry_year" id = "epxiryyear" value="<%=getPayment.getExpiryYear()%>" name="updateExpiryyear">
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
                        <td><input id="edit_payment_cvv" type = "text" value="<%=getPayment.getCvv()%>" name="updateCvv" minlength="3" maxlength="3" size = "1" required></td></tr>
        <%    
            }
            else{
                String cardfname = request.getParameter("fname");
                String cardlname = request.getParameter("lname");
                String cardnumber = request.getParameter("cardnum");
                int expirymonth = Integer.parseInt(request.getParameter("expirymonth"));
                int expiryyear = Integer.parseInt(request.getParameter("expiryyear"));
                int cvv = Integer.parseInt(request.getParameter("cvv")); 
        %>
                    <tr><td>Top up amount :</td><td><select value="<%=getAmount.getValue()%>" name="updateValue" required>
                                <option value = "10.0">$10.00</option>
                                <option value = "15.0">$15.00</option>
                                <option value = "30.0">$30.00</option>
                                <option value = "50.0">$50.00</option>
                            </select></td></tr>
                </table>
                <hr>
                <table>
                <tr><td>First name(s) :</td><td><input value="<%=cardfname%>" name="updateFname" required></td>
                        <td>Last name :</td><td><input value="<%=cardlname%>" name="updateLname" required></td></tr>
                <tr><td>Card number</td><td>
                                    <input type ="text" value="<%=cardnumber%>" name="updateCnum" minlength="16" maxlength="16" required></td></tr>
                    <tr><td>Expiry date</td>
                        <td>
                        <select value="<%=expirymonth%>" name="updateEmonth">
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
                        <select value="<%=expiryyear%>" name="updateEyear">
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
                        <td><input type = "text" value="<%=cvv%>" name="updateC" minlength="3" maxlength="3" size = "1" required></td></tr>
        <%    
            }
        %>
                <tr><td colspan = "3"></td><td align = "right"><input id="edit_continue" type="submit" value="Edit" name = "change"></td></tr></tr>
                </table>
                </div>
    </body>
</html>
