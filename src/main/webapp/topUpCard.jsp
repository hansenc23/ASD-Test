    
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
        
        <title>Add Value to your card</title>
        <link rel="stylesheet" type="text/css" href="css/paymentDetail.css">
    </head>
    <body>
        <%
            double amount = Double.parseDouble(request.getParameter("amount"));
            session.setAttribute("yourAmount", amount);
            String id = request.getParameter("cardNumber");
//             OpalCards dbCards = new OpalCards();
//             OpalCard card = new OpalCard();
//             dbCards = (OpalCards) session.getAttribute("topUpCard");
//             card = dbCards.cardDetails(id);
//             session.setAttribute("TopUpCard", card);
            //session.setAttribute("addType", addType);
            //Double cardNumber = Double.parse
            %>
        <div class = "paymentDetail">
            <form method = "post" action = "topUpConfirmation.jsp" >
                    <table>
                        <h3>Choose your prefered payment method </h3>
                        <div class = "clearfix">
        <%      
                String adminemail = (String)session.getAttribute("adminemail");
                String adminpass = (String)session.getAttribute("adminpassword");
                MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
                Paymentmethods pmtmethods = new Paymentmethods();
                ArrayList<Paymentmethod> paymentMethods = new ArrayList<Paymentmethod>();
                pmtmethods  =  connector.getPaymentMethods(user);
                paymentMethods = pmtmethods.getList();
                    for (Paymentmethod paymentMethod: paymentMethods){  
                        String cardnum = paymentMethod.getCardNumber();   
        %>
                    
                    
                            <div class = "paymentmethod">
                            <p>First Name: <%=paymentMethod.getFirstName()%></p>
                            <p>Last Name:<%=paymentMethod.getLastName()%></p>
                            <p>Card Number:<%=cardnum.substring(0, 4)%>************ </p>
                            <input class = "button" type ="submit" value = "Select" name = "<%=cardnum%>" id ="<%=cardnum%>">
                        </div>
                        <%              
                    }
        %>
                         </div>
                 
                       
             </form>
        
         
                <form method = "post" action = "topUpConfirmation.jsp" >
                    <tr><td><h3> value added to your Opal Card</h3></td></tr>
                  
                        <tr><td>Top up amount</td><td><input type="price" value="<%=amount%>" name="amount" readonly></td>
                            <td>Opal Card Number</td><td><input type="text" value="<%=id%>" name="opalId" readonly></td>
                        </tr>
                        <tr><td><h3>Or add your payment detail </h3></td></tr>
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
                        <tr><td><input class = "button" type =  "submit" value = "Checkout"></td>
                            <td><a class = "button" href = "main.jsp">Back</a></td></tr>
                    </table>
                </form>
        
    </div>
        
    </body>
</html>