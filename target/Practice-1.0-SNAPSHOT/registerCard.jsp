<%-- 
    Document   : registerCard
    Created on : 27/08/2019, 9:12:19 PM
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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/linkCard.css">
        <title>Register Card</title>
    </head>
    <body>
        <h2>Register an Opal Card</h2>
        <div class="cardDetails">
            <form method = "POST" action = "registerCard.jsp" >
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
                    <tr><td>Opal Type</td></tr>
                    <tr><td><select name = "type" required>
                                <option value = "Child">Child</option>
                                <option value = "Adult">Adult</option>
                                <option value = "Senior">Senior</option>
                                <option value = "Concession">Concession</option>
                            </select></td></tr>
                    <tr><td><input type ="submit" value = "Register" name="link"></td></tr> 
                </table>
            </form>
        </div>
        <%
            if (request.getParameter("link") != null) {
                MongoDBConnector connector = new MongoDBConnector();
                
                // Get the data from the staff's input (opalID, securityCode, card Type)
                String opalID = request.getParameter("ID1") + " " + request.getParameter("ID2") + " "
                              + request.getParameter("ID3") + " " +request.getParameter("ID4");
                String securityCode = request.getParameter("securityCode");
                String type = request.getParameter("type");
                // Initial balance as zero
                double initialBalance = 0.00;

                OpalCard newCard = new OpalCard(opalID, initialBalance, type, securityCode);
                boolean exist = false;
                // Check if the registered card is already exist in DB
                exist = connector.isExist(newCard);
            
                // If the form is submitted but card is already exist in DB
                if (exist) {
        %>
                    <div class="fail">
                        <p>Card is already registered in database!</p>
                    </div>
        <%
                // If the form is submitted & card is not in DB
                } else if (!exist) {
                connector.registerCard(newCard);
        %>
                    <div class="success">
                        <p>Card is successfully registered!</p>
                    </div>    
        <%
                }
            }
        %>
    </body>
</html>
