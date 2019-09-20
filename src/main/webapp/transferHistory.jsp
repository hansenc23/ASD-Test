<%-- 
    Document   : transferHistory
    Created on : 08/09/2019, 3:53:35 PM
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
        <h3>Transfer Balance History</h3>
        <%
            MongoDBConnector connector = new MongoDBConnector();
            
            String customerID = connector.getCustomerID(user.getEmail(), user.getPassword());
            ArrayList<TransferBalance> records = new ArrayList<TransferBalance>();
            records = connector.transferHistory(customerID);
            
            if (!records.isEmpty()) {
        %>
                <div class="history">
                <table>
                    <thead>
                        <th>Origin Opal Card</th>
                        <th>Destination Opal Card</th>
                        <th>Value</th>
                        <th>Transfer Date</th>
                    </thead>
        <%
                for (TransferBalance record : records) {
        %>
                    <tr>
                        <td><%=record.getFromOpalID()%></td>
                        <td><%=record.getToOpalID()%></td>
                        <td>$<%=record.getValue()%></td>
                        <td><%=record.getTransferDate()%></td>
                    </tr>    
        <%
                } 
            // If the user hasn't done any transfer yet
            } else {
        %>
            <div class="box">
                <p>You do not have any transfer balance record</p>
                <button onclick="location.href='transferBalance.jsp'">Back</button>
            </div>
        <%
            }
        %>
            </div>
    </body>
</html>

