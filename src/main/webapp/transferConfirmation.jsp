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
        <h2>Transfer Balance Confirmation</h2>
        <%
            MongoDBConnector connector = new MongoDBConnector();
            
            if (request.getParameter("Next") != null || request.getParameter("submitEdit") != null) {
                TransferBalance record = (TransferBalance) session.getAttribute("record");
                // Get the required transfer balance details from either transferDetail / transferEdit page
                double value = Double.parseDouble(request.getParameter("value"));
                String fromOpalID = "";
                String toOpalID = "";
                String customerID = connector.getCustomerID(user.getEmail(), user.getPassword());
                if (request.getParameter("Next") != null) {
                    fromOpalID = record.getFromOpalID();
                    toOpalID = record.getToOpalID();
                } else if (request.getParameter("submitEdit") != null) {
                    fromOpalID = request.getParameter("fromOpalID");
                    toOpalID = request.getParameter("toOpalID");
                }
                TransferBalance newRecord = new TransferBalance(fromOpalID, toOpalID, value, customerID, "");
                session.removeAttribute("record");
                session.setAttribute("newRecord", newRecord);
        %>
                <div class="box">
                    <table>
                        <tr><td><b>From Opal</b></td>
                            <td id="fromOpalID">: <%=newRecord.getFromOpalID()%></td></tr>
                        <tr><td><b>To Opal</b></td>
                            <td id="toOpalID">: <%=newRecord.getToOpalID()%></td></tr>
                        <tr><td><b>Value</b></td>
                            <td id="transferValue">: $<%=newRecord.getValue()%></td></tr>
                    </table>
                    <div class="transferButtons">
                        <div class="btn">
                        <form method="POST" action="transferConfirmation.jsp">
                        <input type="submit" id="cancelTransfer" value="Cancel" name="Cancel"></form>
                        </div>
                        <div class="btn">
                        <form method="POST" action="transferEdit.jsp">
                        <input type="submit" id="editTransfer" value="Edit" name="Edit"></form>
                        </div>
                        <div class="btn">
                        <form method="POST" action="transferConfirmation.jsp">
                        <input type="submit" id="confirmTransfer" value="Confirm" name="Confirm"></form>
                        </div>
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
                    <button id="backMain" onclick=location.href="main.jsp">Back to Main Page</button>
                </div>
                <%
                // If user click CANCEL
                } else if (request.getParameter("Cancel") != null) {
                    TransferBalance cancelTransfer = (TransferBalance) session.getAttribute("newRecord");
                %>
                <div class="message">
                    <p>Transfer Balance from <%=cancelTransfer.getFromOpalID()%> to <%=cancelTransfer.getToOpalID()%> has been cancelled!</p>
                    <button id="backMain" onclick=location.href="main.jsp">Back to Main Page</button>
                </div>
                <%
                    session.removeAttribute("cancelTransfer");
                    }
                %>
    </body>
</html>
