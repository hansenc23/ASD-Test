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
        <div class="container">
        <%
            MongoDBConnector connector = new MongoDBConnector();
            
            String customerID = connector.getCustomerID(user.getEmail(), user.getPassword());
            ArrayList<TransferBalance> records = new ArrayList<TransferBalance>();
            
            // If the user clicks on SEARCH
            if (request.getParameter("searchTransID") != null) {
                String searchDate = request.getParameter("searchDate");
                records = connector.transferHistory(searchDate, "TransferDate");
            // If the user clicks on SHOW ALL
            } else if (request.getParameter("ShowAllTrans") != null || request.getParameter("searchTransID") == null){
                records = connector.transferHistory(customerID, "CustomerID");
            }
            
            // If the user has transfer balance record(s)
            if (!records.isEmpty()) {
        %>
            <div class="history">
                <h3>Transfer Balance History</h3>
                <h6>Total: <strong><%=records.size()%></strong></h6>
                <table>
                    <thead>
                        <th>Origin Opal Card</th>
                        <th>Destination Opal Card</th>
                        <th>Value</th>
                        <th>Transfer Date</th>
                    </thead>
                    <tbody>
        <%  
                for (TransferBalance record : records) {
        %>
                    <tr>
                        <td id="fromOpalID"><%=record.getFromOpalID()%></td>
                        <td id="toOpalID"><%=record.getToOpalID()%></td>
                        <td id="transferValue">$<%=record.getValue()%></td>
                        <td id="transferDate"><%=record.getTransferDate()%></td>
                    </tr>
        <%
                }
        %>
                    </tbody>
                </table>
                </div>
                <div class="searchBox">
                    <h4>Search transfer history by date</h4>
                    <form method="POST" action="transferHistory.jsp">
                        <table>
                            <tr>
                                <td><input type="date" name="searchDate" id="enterDate" placeholder="YYYY/MM/DD" required></td>
                            </tr>
                            <tr>
                                <td><input type="submit" name="searchTransID" id="searchTransID" value="Search"></td>
                            </tr>
                        </table>
                    </form>
                    <form method="POST" action="transferHistory.jsp">
                        <input type="submit" name="ShowAllTrans" id="ShowAllTrans" value="Show All">
                    </form>
                </div>
            </div>
        </div>            
        <%
            // If the user hasn't done any transfer yet
            } else {
        %>
            <div class="box">
                <p>You do not have any transfer balance record</p>
                <button id="backMain" onclick="location.href='transferBalance.jsp'">Back</button>
            </div>
        <%
            }
        %>

    </body>
</html>

