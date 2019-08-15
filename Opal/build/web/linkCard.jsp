<%-- 
    Document   : linkCard
    Created on : 14/08/2019, 2:37:38 PM
    Author     : Michelle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/linkCard.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Link existing Opal card to account</h2>
        <div class="cardDetails">
            <form method = "POST" action = "card.jsp" >
                <table>
                    <tr><td colspan="3">Opal card number</td></tr>
                    <tr>
                        <td>
                            <input type ="text" name = "ID1" minlength="4" maxlength="4" required>
                            <input type ="text" name = "ID2" minlength="4" maxlength="4" required>
                            <input type ="text" name = "ID3" minlength="4" maxlength="4" required>
                            <input type ="text" name = "ID4" minlength="4" maxlength="4" required>
                        </td>
                    </tr>
                    <tr><td>Security code</td></tr>
                    <tr><td><input type ="text" name = "securityCode" minlength="4" maxlength="4" required></td></tr>
                    <tr><td><input type ="submit" value = "Link" name="link"></td></tr>
                </table>
            </form>
        </div>
    </body>
</html>
