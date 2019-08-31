    
<%-- 
    Document   : topUpCard
    Created on : Aug 15, 2019, 1:09:56 AM
    Author     : Hieu
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page import="asd.model.*"%>
<%@include file="navbar.jsp"%>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Add Value to your card</title>
        <link rel="stylesheet" type="text/css" href="css/topUp.css">
    </head>
    <body>
        <div class = "topup">
                <form method = "post" action = "topUpConfirmation.jsp" >
                    <h3>Add value to your Opal Card</h3>
                    <table>
                        <tr><td>Top up amount</td><td><select name = "amount" required>
                                    <option selected disabled>Select amount</option>
                                    <option value = "10.00">$10.00</option>
                                    <option value = "15.00">$15.00</option>
                                    <option value = "30.00">$30.00</option>
                                    <option value = "50.00">$50.00</option>
                                </select></td>
                        </tr>
                        <tr><td>First name(s)</td><td><input type = "text" name = "firstname" required></td>
                            <td>Last name</td><td><input type = "text" name = "lastname" required></td></tr>
                        <tr><td>Card number</td><td><input type = "text" name = "cardnumber" required></td></tr>
                        <tr><td>Expiry date</td>
                            <td>
                            <select name = "expiryMonth">
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
                            <select name = "expiryYear">
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
                            <td><input type = "text" name = "cvv" required></td></tr>
                        <tr><td><input type =  "submit" value = "Checkout"></td>
                            <td><a class = "button" href = "main.jsp">Back</a></td></tr>
                    </table>
                </form>
        </div>
        <%
            String adminemail = (String)session.getAttribute("adminemail");
            String adminpass = (String)session.getAttribute("adminpassword");
            MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
            Paymentmethods pmtmethods = new Paymentmethods();
            ArrayList<Paymentmethod> paymentMethods = new ArrayList<Paymentmethod>();
            pmtmethods  =  connector.getPaymentMethods(user);
            paymentMethods = pmtmethods.getList();
            if(paymentMethods != null){
                for (Paymentmethod paymentMethod: paymentMethods){
        %>
            <p> <%= paymentMethod.getCardNumber()%></p>
        <%
            }
                }
        %>
    </body>
</html>