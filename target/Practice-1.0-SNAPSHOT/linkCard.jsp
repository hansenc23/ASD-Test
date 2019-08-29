<%-- 
    Document   : linkCard
    Created on : 14/08/2019, 2:37:38 PM
    Author     : Michelle
--%>

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
        <%
            //User user = (User)session.getAttribute("user");
        %>
        <h2>Link existing Opal card to account</h2>
        <div class="cardDetails">
            <form method = "POST" action = "main.jsp" >
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
    </body>
</html>
