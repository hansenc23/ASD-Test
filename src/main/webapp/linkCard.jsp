<%-- 
    Document   : linkCard
    Created on : 14/08/2019, 2:37:38 PM
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
        <link rel="stylesheet" type="text/css" href="css/linkCard.css">
        <title>Link Card</title>
    </head>
    <body>
        <h2>Link existing Opal card to account</h2>
        <div class="cardDetails">
            <form method = "POST" action = "linkCard.jsp" >
                <table>
                    <tr><td colspan="3">Opal card number</td></tr>
                    <tr>
                        <td>
                            <input type ="text" name = "ID1" minlength="4" maxlength="4" pattern="\d*" required>
                            <input type ="text" name = "ID2" minlength="4" maxlength="4" pattern="\d*" required>
                            <input type ="text" name = "ID3" minlength="4" maxlength="4" pattern="\d*" required>
                            <input type ="text" name = "ID4" minlength="4" maxlength="4" pattern="\d*" required>
                        </td>
                    </tr>
                    <tr><td>Security code</td></tr>
                    <tr><td><input type ="text" name = "securityCode" minlength="4" maxlength="4" pattern="\d*" required></td></tr>
                    <tr><td><input type ="submit" value = "Link" name="link"></td></tr>
                </table>
            </form>
        </div>
        <%
            // IF FORM IS ALREADY SUBMITTED
            if (request.getParameter("link") != null) {
                MongoDBConnector connector = new MongoDBConnector();

                // Get the details from the user's input (Opal ID & security code)
                String opalID = request.getParameter("ID1") + " " + request.getParameter("ID2") + " "
                              + request.getParameter("ID3") + " " +request.getParameter("ID4");
                String securityCode = request.getParameter("securityCode");

                OpalCard card = new OpalCard(opalID, securityCode);
                boolean linked, available = false;
                // Check if the card is already exist in the user's account
                linked = connector.isLinked(card, user);
                // Check if the card is exist in DB
                available = connector.isAvailable(card);
            
                // Card is already linked to user's account
                if (linked) {
        %>
                <div class="fail">
                    <p>Cannot link the Opal Card, card is already exist in your account</p>
                </div>
        <%
                // Card is new to the user's account
                } else if (!linked && available) {
                    connector.linkCard(card, user);
        %>
                <div class="success">
                    <p>Card is successfully linked to your account!</p>
                </div>    
        <%
                // Opal ID and or security code is wrong
                } else if (!available) {
        %>
                <div class="fail">
                    <p>Incorrect Opal Card number or security code</p>
                </div>
        <%
                }
            }
        %>
    </body>
</html>
