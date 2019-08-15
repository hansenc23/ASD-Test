<%-- 
    Document   : cardDetail
    Created on : 15/08/2019, 1:50:52 PM
    Author     : aasdd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/cardDetail.css">
    </head>
    <body>
        <%
            String opalID = request.getParameter("opalID");
            String name = "Anita";
            String balance = request.getParameter("balance");
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
                </table>
            <button onclick=location.href="card.jsp">Go back</button>
        </div>
    </body>
</html>
