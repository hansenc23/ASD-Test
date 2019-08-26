<%-- 
    Document   : cardDetail
    Created on : 15/08/2019, 1:50:52 PM
    Author     : Michelle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.model.*"%>
<%@include file="navbar.jsp" %>
<%@include file="sidebar.jsp" %>
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
            User user = (User)session.getAttribute("user");
            OpalCard card = (OpalCard)session.getAttribute("card");
            
            String opalID = request.getParameter("opalID");
            String type = request.getParameter("type");
            double balance = Double.parseDouble(request.getParameter("balance"));
            String name = user.getFirstName() + " " + user.getLastName();

        %>
        <div class="card">
            <h3>Card Details</h3>
                <table>
                    <tr>
                        <td>Card Holder</td>
                        <td><%=name%></td>
                    </tr>
                    <tr>
                        <td>Opal Card Number</td>
                        <td><%=opalID%></td>
                    </tr>
                    <tr>
                        <td>Balance</td>
                        <td>$<%=balance%></td>
                    </tr>
                    <tr>
                        <td>Type</td>
                        <td><%=type%></td>
                    </tr>
                </table>
            <button onclick=location.href="main.jsp">Go back</button>
        </div>
    </body>
</html>
