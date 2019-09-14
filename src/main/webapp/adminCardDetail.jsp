<%-- 
    Document   : staffCardDetail
    Created on : 11/09/2019, 2:11:12 AM
    Author     : Michelle
--%>

<%@page import="asd.model.dao.MongoDBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.model.*"%>
<%@include file="adminNavbar.jsp" %>
<%@include file="adminSidebar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Card Details Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/cardDetail.css">
    </head>
    <body>
        <%
            MongoDBConnector connector = new MongoDBConnector();
            
            //Get the opal ID
            String opalID = request.getParameter("opalID");
            String fullName = " ";
            
            // Get the details of the selected Opal Card
            OpalCard selectedCard = connector.getCardDetails(opalID);
            
            fullName =  (selectedCard.getCustomerID() == null) ? " " : 
                         connector.getCustomerName(selectedCard.getCustomerID());
        %>
        <div class="card">
            <h3>Card Details</h3>
                <table>
                    <tr>
                        <td><b>Card Holder</b></td>
                        <td><%=fullName%></td>
                    </tr>
                    <tr>
                        <td><b>Opal Card Number</b></td>
                        <td><%=opalID%></td>
                    </tr>
                    <tr>
                        <td><b>Balance</b></td>
                        <td>$<%=selectedCard.getBalance()%></td>
                    </tr>
                    <tr>
                        <td><b>Type</b></td>
                        <td><%=selectedCard.getType()%></td>
                    </tr>
                </table>
            <button onclick=location.href="listCard.jsp">Go back</button>      
        </div>
    </body>
</html>

