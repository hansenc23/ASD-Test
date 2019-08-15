<%-- 
    Document   : card
    Created on : 14/08/2019, 1:12:36 AM
    Author     : Michelle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>
<%@page import="asd.model.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/card.css">
        <title>Card Page</title>
    </head>
    <body>
        <%
            String opalID = request.getParameter("ID1") + " " + request.getParameter("ID2") + " "
                          + request.getParameter("ID3") + " " +request.getParameter("ID4");
            String securityCode = request.getParameter("securityCode");
            OpalCard card = new OpalCard(opalID, securityCode);
        %>
        <%
            if (opalID != null && securityCode != null) {
        %>
            <div class="box">
                <h2>Opal cards</h2>
                <table>
                    <tr>
                        <th>Card Type</th>
                        <th>Opal Number</th>
                        <th>Balance</th>
                    </tr>
                    <tr>
                        <td><img src="image/card_adult_large.png" width="30px">&ensp;&ensp;Adult</td>
                        <td><%=opalID%></td>
                        <td>$0.00</td>
                    </tr>
                </table>
            </div>
        <%
            }
            else{
        %>
            <div class="box">
                <h2>Welcome to Opal Card Management website!</h2>
            </div>
        <%
            }
        %>
<!--        <div class="box">
            <table align="center">
                <tr colspan="3"><th id="title">My Opal Cards</th></tr>
                <tr>
                    <th>Type</th>
                    <th>Opal Number</th>
                    <th>Balance</th>
                </tr>
                <tr>
                    <td><img width=50 src="image/card_adult_large.png"></td>
                <td>Adult</td>
                    <td>1234 5678 9098 7654</td>
                    <td>$4.00</td>
                </tr>
            </table>
        </div>-->
    </body>
</html>
