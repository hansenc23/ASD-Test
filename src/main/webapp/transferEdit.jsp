<%-- 
    Document   : transferDetail
    Created on : 08/09/2019, 1:05:00 AM
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
        <title>Edit Transfer Balance</title>
    </head>
    <body>
        <h2>Transfer Balance</h2>
        <%
            MongoDBConnector connector = new MongoDBConnector();
            
                // If user click EDIT
                if (request.getParameter("Edit") != null) {
                    TransferBalance record = (TransferBalance) session.getAttribute("newRecord");
                    ArrayList<OpalCard> cards = new ArrayList<OpalCard>();
                    // Get the user's card list
                    cards = connector.getOpalCards(user);
                %>
                <div class="box">
                    <form method="POST" action="transferConfirmation.jsp">
                        <table>
                            <tr><td><b>From Opal : </b></td>
                                <td><select name = "fromOpalID" id="fromOpalID" required>
                                    <option value="<%=record.getFromOpalID()%>"><%=record.getFromOpalID()%></option>
                                    <%
                                        String fromOpalID = "";
                                        for (OpalCard card: cards) {
                                            // From Opal card should have balance >= 5
                                            if (card.getBalance() >= 5 && !card.getOpalID().equalsIgnoreCase(record.getFromOpalID())) {
                                                fromOpalID = card.getOpalID();
                                    %>
                                    <option value = "<%=fromOpalID%>"><%=fromOpalID%></option>
                                    <%
                                            }
                                        }
                                    %>
                                    </select>
                                </td>
                            </tr>
                            <tr><td><b>To Opal : </b></td>
                                <td><select name = "toOpalID" id="toOpalID" required>
                                    <option value="<%=record.getToOpalID()%>"><%=record.getToOpalID()%></option>
                                    <%
                                        String toOpalID = "";
                                        for (OpalCard card: cards) {
                                            if (!card.getOpalID().equalsIgnoreCase(record.getToOpalID())) {
                                                toOpalID = card.getOpalID();
                                    %>
                                    <option value = "<%=toOpalID%>"><%=toOpalID%></option>
                                    <%
                                            }
                                        }
                                    %>
                                    </select>
                                </td>
                            </tr>
                            <tr><td><b>Value: </b></td>
                                <td>
                                    <%
                                        OpalCard fromOpal = connector.getCardDetails(record.getFromOpalID());
                                    %>
                                    <select id="transferValue" name="value" required>
                                        <option id="5" value = "5.00">$5.00</option>
                                        <% if (fromOpal.getBalance() >= 10.00 ) { %>
                                        <option id="10" value = "10.0">$10.00</option>
                                        <% } if (fromOpal.getBalance() >= 15.00 ) { %>
                                        <option id="15" value = "15.0">$15.00</option>
                                        <% } if (fromOpal.getBalance() >= 30.00 ) { %>
                                        <option id="30" value = "30.0">$30.00</option>
                                        <% } if (fromOpal.getBalance() >= 50.00 ) { %>
                                        <option id="50" value = "50.0">$50.00</option>
                                        <% } %>
                                    </select>
                                </td>
                            </tr>
                            <tr><td><input id="submitEdit" type="submit" name="submitEdit" value="Submit"></td></tr>
                        </table>
                    </form>
                </div>
                <%
                    }
                %>
    </body>
</html>
