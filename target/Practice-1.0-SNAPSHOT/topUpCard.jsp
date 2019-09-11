    
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
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <%
            if(request.getParameter("amount")!= null && request.getParameter("cardNumber")!=null){
                double amount = Double.parseDouble(request.getParameter("amount"));
                String id = request.getParameter("cardNumber");
                session.setAttribute("yourAmount", amount);
                session.setAttribute("opalID", id);
            }
            double amount =  Double.parseDouble(session.getAttribute("yourAmount").toString());
            String id = (String)session.getAttribute("opalID");
            //set Top up amount and and opalId amount 
            
//             OpalCards dbCards = new OpalCards();
//             OpalCard card = new OpalCard();
//             dbCards = (OpalCards) session.getAttribute("topUpCard");
//             card = dbCards.cardDetails(id);
//             session.setAttribute("TopUpCard", card);
            //session.setAttribute("addType", addType);
            //Double cardNumber = Double.parse
            %>
            
            
                        
        <div class = "paymentDetail">
            <h4> Top-up details </h4>
              <p>Top up amount: <%=amount%>      |                Opal Card Number: <%=id%> </p>
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
                         <h4>Or use a new payment detail </h4>
        
         
                <form method = "post" action = "topUpConfirmation.jsp" >
                        <tr><td>First name(s)</td><td><input type = "text" name = "firstname" required></td>
                            <td>Last name</td><td><input type = "text" name = "lastname" required></td></tr>
                        <tr><td>Card number</td><td><input type = "text" name = "cardnumber" minlength="16" maxlength="16" size="1" required></td></tr>
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
                            <td><input type = "text" name = "cvv" minlength="3" maxlength="3" size = "1" required></td></tr>
                        <tr><td><input class = "button" type =  "submit" value = "Checkout"></td>
                            <td><a class = "button" href = "topUpValue.jsp">Back</a></td></tr>
                    </table>
                </form>
        
    </div>
        
    </body>
</html>