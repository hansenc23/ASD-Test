<%-- 
    Document   : transferBalance
    Created on : 08/09/2019, 12:36:21 AM
    Author     : Michelle
--%>

<%@page import="java.util.ArrayList"%>
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
        <title>Transfer Balance</title>
    </head>
    <body>
        <h2>Transfer Balance</h2>
        <%
            MongoDBConnector connector = new MongoDBConnector();
            
            String customerID = connector.getCustomerID(user.getEmail(), user.getPassword());
            String validForTransfer = connector.validForTransfer(customerID);
            // Customer has min 2 cards and at least 1 card has balance > 0
            if (validForTransfer.equalsIgnoreCase("transferOK")) {
                ArrayList<OpalCard> cards = new ArrayList<OpalCard>();
                cards = connector.getOpalCards(user);
        %>
                <div class="box">
                    <form action="transferDetail.jsp" method="POST">
                        <p>From :</p>
                            <select name = "fromOpalID" id="fromOpalID" required>
                            <%
                                String fromOpalID = "";
                                for (OpalCard card: cards) {
                                    // From Opal card should have balance > 0
                                    if (card.getBalance() > 0) {
                                        fromOpalID = card.getOpalID();
                            %>
                                <option value = "<%=fromOpalID%>"><%=fromOpalID%></option>
                            <%
                                    }
                                }
                            %>
                            </select>
                        <br>
                        <br>
                        <p>To :</p>
                            <select name = "toOpalID" id="toOpalID" required>
                            <%
                                String toOpalID = "";
                                for (OpalCard card: cards) {
                                    toOpalID = card.getOpalID();
                            %>
                                    <option value = "<%=toOpalID%>" ><%=toOpalID%></option>
                            <%
                                }
                            %>
                            </select>
                        <br>
                        <input type="hidden" value="<%=customerID%>" name="customerID">
                        <input type="submit" value="Continue" id="transferContinue" name="Continue">
                    </form>
                </div>
        <%        
            // If the user has less than 2 cards or both cards value are 0
            } else if (validForTransfer.equalsIgnoreCase("transferNo") || validForTransfer.equalsIgnoreCase("cardsNo")){
        %>
        <div class="box">
            <p>Linked Opal cards does not meet the transfer balance requirement
            <br>Minimum 2 Opal cards
            <br>At least 1 Opal card balance is not $0.00</p>
        </div>
        <%
            }
        %>
        <h2>Transfer Balance History</h2>
        <div class="box">
            <p>List of all transfer balance history</p>
            <button onclick="location.href='transferHistory.jsp'" id="showTransferHistory">Show History</button>
        </div>
    </body>
</html>
