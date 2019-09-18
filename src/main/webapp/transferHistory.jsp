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
        <h2>Transfer Balance</h2>
        <%
            String adminemail = (String)session.getAttribute("adminemail");
            String adminpass = (String)session.getAttribute("adminpassword");
            MongoDBConnector connector = new MongoDBConnector(adminemail, adminpass);
            
            String customerID = request.getParameter("customerID");
            ArrayList<TransferBalance> records = new ArrayList<TransferBalance>();
            records = connector.transferHistory(customerID);
        %>
            <div class="box">
            <table>
                <thead>
                    <th>From</th>
                    <th>To</th>
                    <th>Value</th>
                </thead>
        <%
            for (TransferBalance record : records) {
        %>
                    <tr>
                        <td><%=record.getFromOpalID()%></td>
                        <td><%=record.getToOpalID()%></td>
                        <td>$<%=record.getValue()%></td>
                    </tr>    
        <%
            }
        %>
            </div>
    </body>
</html>

