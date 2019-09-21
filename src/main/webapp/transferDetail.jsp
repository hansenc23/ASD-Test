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
                    <button onClick="location.href='transferBalance.jsp'" >Back</button>
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
                        <input type="number" min="0" max="<%=card.getBalance()%>" step=".1" maxlength="6"
                               placeholder="0.00" name="value" required> <br>
                        <input type="submit" value="Next" name="Next">
                    </form>
                </div>
        <%
            }
        %>
</html>
