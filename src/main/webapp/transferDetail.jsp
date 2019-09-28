<%-- 
    Document   : transferDetail
    Created on : 08/09/2019, 1:05:00 AM
    Author     : Michelle
--%>
<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>
<%@include file="sidebar.jsp" %>
<%@page import="asd.model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/transferBalance.css">
        <title>Transfer Balance Details</title>
    </head>
    <body>
        <h2>Transfer Balance</h2>
        <%
            MongoDBConnector connector = new MongoDBConnector();
        
            String fromOpalID = request.getParameter("fromOpalID");
            String toOpalID = request.getParameter("toOpalID");
            
            // Check whether the origin and destination cards are the same card
            boolean sameCard = (fromOpalID.equals(toOpalID)) ? true : false;
            
            // If the origin and destination cards are the same card
            if (sameCard) {
        %>
                <div class="box">
                    <p>Destination Opal Card should not be the same as origin Opal Card</p>
                    <button id="backmain" onClick="location.href='transferBalance.jsp'" >Back</button>
                </div>
        <%
            // If the cards are different cards
            } else {
                OpalCard card = connector.getCardDetails(fromOpalID);
                String customerID = request.getParameter("customerID");
                TransferBalance record = new TransferBalance(fromOpalID, toOpalID, 0, customerID, "");
                session.setAttribute("record", record); 
        %>
                <div class="box">
                    <form method="POST" action="transferConfirmation.jsp">
                        <p>Available balance to be transfered : <%=card.getBalance()%></p>
                            <select id="transferValue" name="value" required>
                                <option id="5" value = "5.00">$5.00</option>
                                <% if (card.getBalance() >= 10.00 ) { %>
                                <option id="10" value = "10.0">$10.00</option>
                                <% } if (card.getBalance() >= 15.00 ) { %>
                                <option id="15" value = "15.0">$15.00</option>
                                <% } if (card.getBalance() >= 30.00 ) { %>
                                <option id="30" value = "30.0">$30.00</option>
                                <% } if (card.getBalance() >= 50.00 ) { %>
                                <option id="50" value = "50.0">$50.00</option>
                                <% } %>
                            </select>
                        <br>
                        <input type="submit" id="transferNext" value="Next" name="Next">
                    </form>
                </div>
        <%
            }
        %>
    </body>
</html>
