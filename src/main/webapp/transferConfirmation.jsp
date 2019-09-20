<%-- 
    Document   : transferDetail
    Created on : 08/09/2019, 1:05:00 AM
    Author     : Michelle
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
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
        <title>Transfer Balance Confirmation</title>
    </head>
    <body>
        <h2>Transfer Balance</h2>
        <%
            MongoDBConnector connector = new MongoDBConnector();
            
            if (request.getParameter("Next") != null) {
                TransferBalance record = (TransferBalance) session.getAttribute("record");
                double value = Double.parseDouble(request.getParameter("value"));
                TransferBalance newRecord = new TransferBalance(record.getFromOpalID(), record.getToOpalID(), value, record.getCustomerID(), "");
                session.removeAttribute("record");
                session.setAttribute("newRecord", newRecord);
        %>
                <div class="box">
                    <table>
                        <h6>Confirmation</h6>
                        <tr><td><b>From Opal</b></td>
                        <td>: <%=newRecord.getFromOpalID()%></td></tr>
                        <tr><td><b>To Opal</b></td>
                        <td>: <%=newRecord.getToOpalID()%></td></tr>
                        <tr><td><b>Value</b></td>
                        <td>: $<%=newRecord.getValue()%></td></tr>
                    </table>
                    <div class="transferButtons">
                        <form method="POST" action="transferConfirmation.jsp">
                        <input type="submit" value="Cancel" name="Cancel"></form>
                        <form method="POST" action="transferConfirmation.jsp">
                        <input type="submit" value="Confirm" name="Confirm"></form>
                        <form method="POST" action="transferConfirmation.jsp">
                        <input type="submit" value="Edit" name="Edit"></form>
                    </div>
                </div>
                <%
                // If user click CONFIRM
                } else if (request.getParameter("Confirm") != null) {
                    TransferBalance record = (TransferBalance) session.getAttribute("newRecord");
                    
                    java.util.Date date = new java.util.Date();                 //Date object
                    DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy"); //Date format
                    String transferDate = dateFormat.format(date);              // Format the date
                    TransferBalance confirmTransfer = new TransferBalance(record.getFromOpalID(), record.getToOpalID(), 
                                                      record.getValue(), record.getCustomerID(), transferDate);
                    connector.transferBalance(confirmTransfer);
                %>
                <div class="message">
                    <p>Transfer Balance from <%=confirmTransfer.getFromOpalID()%> to <%=confirmTransfer.getToOpalID()%> is success!</p>
                    <button onclick=location.href="main.jsp">Back to Main Page</button>
                </div>
                <%
                // If user click CANCEL
                } else if (request.getParameter("Cancel") != null) {
                    TransferBalance cancelTransfer = (TransferBalance) session.getAttribute("newRecord");
                %>
                <div class="message">
                    <p>Transfer Balance from <%=cancelTransfer.getFromOpalID()%> to <%=cancelTransfer.getToOpalID()%> has been cancelled!</p>
                    <button onclick=location.href="main.jsp">Back to Main Page</button>
                </div>
                <%
                    session.removeAttribute("cancelTransfer");
                // If user click EDIT
                } else if (request.getParameter("Edit") != null) {
                    TransferBalance editTransfer = (TransferBalance) session.getAttribute("newRecord");
                    ArrayList<OpalCard> cards = new ArrayList<OpalCard>();
                    cards = connector.getOpalCards(user);
                %>
                <div class="box">
                    <form method="POST" action="transferConfirmation.jsp">
                        <table>
                            <tr><td><b>From Opal: </b></td>
                                <td><select name = "fromOpalID" id="fromOpalID" required>
                                    <option value="<%=editTransfer.getFromOpalID()%>"><%=editTransfer.getFromOpalID()%></option>
                                    <%
                                        String fromOpalID = "";
                                        for (OpalCard card: cards) {
                                            // From Opal card should have balance > 0
                                            if (card.getBalance() > 0) {
                                                fromOpalID = card.getOpalID();
                                    %>
                                    </select>
                                    <%
                                            }
                                        }
                                    %>
                                </td>
                            </tr>
                            <tr><td><b>To: </b></td>
                                <td><%=editTransfer.getToOpalID()%></td>
                            </tr>
                            <tr><td><b>Value: </b></td>
                                <td><%=editTransfer.getValue()%></td>
                            </tr>
                        </table>
                    </form>
                </div>
                <%
                    }
                %>
    </body>
</html>
